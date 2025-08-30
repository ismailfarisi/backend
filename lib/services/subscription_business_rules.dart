import 'package:meal_app/models/vendor.dart';
import 'package:meal_app/models/subscription_meal_selection.dart';
import 'package:meal_app/utils/enums.dart';

/// Business rules and pricing engine for subscription management
///
/// Handles complex pricing calculations, discount applications,
/// business constraints, and subscription economics.
class SubscriptionBusinessRules {
  // Pricing constants
  static const double vatRate = 0.05; // 5% VAT
  static const double deliveryFee = 5.0; // AED per delivery
  static const double platformFee = 2.0; // AED per order

  // Subscription discounts
  static const double loyaltyDiscountRate = 0.10; // 10% for returning customers
  static const double multiVendorPremium = 0.15; // 15% premium for multi-vendor
  static const double bulkDiscountRate = 0.05; // 5% for 20+ meals per week

  // Business constraints
  static const int minSubscriptionDays = 7; // Minimum 1 week
  static const int maxSubscriptionDays = 365; // Maximum 1 year
  static const double minOrderValue = 50.0; // Minimum AED 50 per order
  static const int maxVendorsPerSubscription = 4;

  /// Calculates comprehensive subscription pricing
  static SubscriptionPricingResult calculateSubscriptionPricing({
    required MonthlySubscriptionType subscriptionType,
    required List<SubscriptionMealSelection> mealSelections,
    required Map<int, Vendor> selectedVendorsByWeek,
    required DateTime startDate,
    bool isLoyalCustomer = false,
    double baseMealPrice = 25.0, // Default meal price
  }) {
    if (subscriptionType == MonthlySubscriptionType.singleVendor) {
      return _calculateSingleVendorPricing(
        mealSelections: mealSelections,
        startDate: startDate,
        isLoyalCustomer: isLoyalCustomer,
        baseMealPrice: baseMealPrice,
      );
    } else {
      return _calculateMultiVendorPricing(
        selectedVendorsByWeek: selectedVendorsByWeek,
        startDate: startDate,
        isLoyalCustomer: isLoyalCustomer,
        baseMealPrice: baseMealPrice,
      );
    }
  }

  /// Calculate single vendor subscription pricing
  static SubscriptionPricingResult _calculateSingleVendorPricing({
    required List<SubscriptionMealSelection> mealSelections,
    required DateTime startDate,
    required bool isLoyalCustomer,
    required double baseMealPrice,
  }) {
    // Calculate base meal costs
    double baseMealCost = 0.0;
    int totalMeals = 0;

    final mealsByDay = <String, List<SubscriptionMealSelection>>{};
    for (final meal in mealSelections) {
      mealsByDay.putIfAbsent(meal.dayOfWeek, () => []).add(meal);
      totalMeals += meal.quantity;
      baseMealCost += baseMealPrice * meal.quantity;
    }

    // Calculate weekly cost (meals for 7 days)
    final weeklyCost = baseMealCost;
    final monthlyCost = weeklyCost * 4; // 4 weeks

    // Apply discounts
    double discountAmount = 0.0;
    final appliedDiscounts = <String>[];

    // Loyalty discount
    if (isLoyalCustomer) {
      discountAmount += monthlyCost * loyaltyDiscountRate;
      appliedDiscounts
          .add('Loyalty Discount (${(loyaltyDiscountRate * 100).toInt()}%)');
    }

    // Bulk meal discount
    final weeklyMealCount = totalMeals;
    if (weeklyMealCount >= 20) {
      final bulkDiscount = monthlyCost * bulkDiscountRate;
      discountAmount += bulkDiscount;
      appliedDiscounts
          .add('Bulk Meal Discount (${(bulkDiscountRate * 100).toInt()}%)');
    }

    // Calculate fees
    final monthlyDeliveryFee =
        deliveryFee * 4 * mealsByDay.keys.length; // Per day with meals
    final monthlyPlatformFee = platformFee * 4 * 7; // Daily platform fee

    // Calculate subtotal and taxes
    final subtotal =
        monthlyCost - discountAmount + monthlyDeliveryFee + monthlyPlatformFee;
    final vatAmount = subtotal * vatRate;
    final totalAmount = subtotal + vatAmount;

    return SubscriptionPricingResult(
      baseCost: monthlyCost,
      discountAmount: discountAmount,
      appliedDiscounts: appliedDiscounts,
      deliveryFee: monthlyDeliveryFee,
      platformFee: monthlyPlatformFee,
      vatAmount: vatAmount,
      totalAmount: totalAmount,
      costBreakdown: SubscriptionCostBreakdown(
        weeklyBreakdown: {
          1: weeklyCost,
          2: weeklyCost,
          3: weeklyCost,
          4: weeklyCost,
        },
        mealCount: totalMeals,
        averageMealCost: totalMeals > 0 ? (totalAmount / (totalMeals * 4)) : 0,
      ),
    );
  }

  /// Calculate multi-vendor subscription pricing
  static SubscriptionPricingResult _calculateMultiVendorPricing({
    required Map<int, Vendor> selectedVendorsByWeek,
    required DateTime startDate,
    required bool isLoyalCustomer,
    required double baseMealPrice,
  }) {
    double totalBaseCost = 0.0;
    final weeklyBreakdown = <int, double>{};
    int totalMeals = 0;

    // Calculate cost for each week with vendor-specific pricing
    for (final entry in selectedVendorsByWeek.entries) {
      final weekNumber = entry.key;
      final vendor = entry.value;

      // Vendor-specific pricing multiplier based on rating and cuisine
      final vendorMultiplier = _getVendorPricingMultiplier(vendor);
      final weeklyMealCount = 21; // 3 meals * 7 days (estimated)
      final weeklyCost = baseMealPrice * weeklyMealCount * vendorMultiplier;

      weeklyBreakdown[weekNumber] = weeklyCost;
      totalBaseCost += weeklyCost;
      totalMeals += weeklyMealCount;
    }

    // Multi-vendor premium
    final multiVendorPremiumAmount = totalBaseCost * multiVendorPremium;
    totalBaseCost += multiVendorPremiumAmount;

    // Apply discounts
    double discountAmount = 0.0;
    final appliedDiscounts = <String>[];

    // Loyalty discount (reduced for multi-vendor)
    if (isLoyalCustomer) {
      discountAmount +=
          totalBaseCost * (loyaltyDiscountRate * 0.5); // Half loyalty discount
      appliedDiscounts
          .add('Loyalty Discount (${(loyaltyDiscountRate * 50).toInt()}%)');
    }

    // Variety bonus (discount for using 3+ different vendors)
    final uniqueVendors =
        selectedVendorsByWeek.values.map((v) => v.id).toSet().length;
    if (uniqueVendors >= 3) {
      final varietyDiscount = totalBaseCost * 0.03; // 3% variety discount
      discountAmount += varietyDiscount;
      appliedDiscounts.add('Variety Bonus (3%)');
    }

    // Calculate fees (higher for multi-vendor due to complexity)
    final monthlyDeliveryFee =
        deliveryFee * 4 * 7 * 1.2; // 20% premium for multi-vendor
    final monthlyPlatformFee =
        platformFee * 4 * 7 * 1.3; // 30% premium for coordination

    // Calculate subtotal and taxes
    final subtotal = totalBaseCost -
        discountAmount +
        monthlyDeliveryFee +
        monthlyPlatformFee;
    final vatAmount = subtotal * vatRate;
    final totalAmount = subtotal + vatAmount;

    appliedDiscounts.insert(
        0, 'Multi-Vendor Premium (${(multiVendorPremium * 100).toInt()}%)');

    return SubscriptionPricingResult(
      baseCost:
          totalBaseCost - multiVendorPremiumAmount, // Base without premium
      discountAmount: discountAmount,
      appliedDiscounts: appliedDiscounts,
      deliveryFee: monthlyDeliveryFee,
      platformFee: monthlyPlatformFee,
      vatAmount: vatAmount,
      totalAmount: totalAmount,
      multiVendorPremium: multiVendorPremiumAmount,
      costBreakdown: SubscriptionCostBreakdown(
        weeklyBreakdown: weeklyBreakdown,
        mealCount: totalMeals,
        averageMealCost: totalMeals > 0 ? (totalAmount / totalMeals) : 0,
      ),
    );
  }

  /// Get vendor-specific pricing multiplier
  static double _getVendorPricingMultiplier(Vendor vendor) {
    // Base multiplier on vendor rating
    double multiplier = 1.0;

    if (vendor.rating >= 4.5) {
      multiplier = 1.2; // Premium vendors
    } else if (vendor.rating >= 4.0) {
      multiplier = 1.1; // Good vendors
    } else if (vendor.rating >= 3.5) {
      multiplier = 1.0; // Standard vendors
    } else {
      multiplier = 0.9; // Budget vendors
    }

    // Adjust for cuisine type
    if (vendor.cuisineTypes.any(
        (cuisine) => ['Italian', 'Japanese', 'French'].contains(cuisine))) {
      multiplier += 0.1; // Premium cuisines
    }

    // Distance-based adjustment
    if (vendor.distance != null && vendor.distance! > 5.0) {
      multiplier += 0.05; // Long distance premium
    }

    return multiplier;
  }

  /// Validate subscription business constraints
  static List<String> validateBusinessConstraints({
    required MonthlySubscriptionType subscriptionType,
    required DateTime startDate,
    required DateTime endDate,
    required double totalAmount,
    required Map<int, Vendor> selectedVendorsByWeek,
    required List<SubscriptionMealSelection> mealSelections,
  }) {
    final violations = <String>[];

    // Duration constraints
    final duration = endDate.difference(startDate).inDays;
    if (duration < minSubscriptionDays) {
      violations.add(
          'Subscription duration must be at least $minSubscriptionDays days');
    }
    if (duration > maxSubscriptionDays) {
      violations
          .add('Subscription duration cannot exceed $maxSubscriptionDays days');
    }

    // Minimum order value
    if (totalAmount < minOrderValue) {
      violations.add(
          'Minimum subscription value is AED ${minOrderValue.toStringAsFixed(0)}');
    }

    // Vendor constraints
    if (subscriptionType == MonthlySubscriptionType.multiVendorWeeklySplit) {
      if (selectedVendorsByWeek.length > maxVendorsPerSubscription) {
        violations.add(
            'Maximum $maxVendorsPerSubscription vendors allowed per subscription');
      }

      // Ensure minimum variety
      final uniqueVendors =
          selectedVendorsByWeek.values.map((v) => v.id).toSet();
      if (uniqueVendors.length < 2) {
        violations.add(
            'Multi-vendor subscription requires at least 2 different vendors');
      }
    }

    // Meal selection constraints
    if (subscriptionType == MonthlySubscriptionType.singleVendor) {
      if (mealSelections.isEmpty) {
        violations.add('At least one meal selection is required');
      }

      // Check reasonable meal quantities
      final totalMealsPerWeek =
          mealSelections.fold<int>(0, (sum, meal) => sum + meal.quantity);
      if (totalMealsPerWeek > 21) {
        // 3 meals * 7 days
        violations.add('Maximum 21 meals per week allowed');
      }
    }

    return violations;
  }

  /// Calculate cost estimation for preview
  static CostEstimation calculateCostEstimation({
    required MonthlySubscriptionType subscriptionType,
    int mealCount = 0,
    int vendorCount = 1,
    bool isLoyalCustomer = false,
  }) {
    final baseMealPrice = 25.0;
    final estimatedMeals = mealCount > 0
        ? mealCount
        : (subscriptionType == MonthlySubscriptionType.singleVendor
            ? 60
            : 84); // Monthly estimate

    double baseCost = baseMealPrice * estimatedMeals;

    if (subscriptionType == MonthlySubscriptionType.multiVendorWeeklySplit) {
      baseCost *= (1 + multiVendorPremium);
    }

    double discounts = 0;
    if (isLoyalCustomer) {
      discounts = baseCost * loyaltyDiscountRate;
    }

    final fees = (deliveryFee + platformFee) * 28; // Daily for a month
    final subtotal = baseCost - discounts + fees;
    final vat = subtotal * vatRate;
    final total = subtotal + vat;

    return CostEstimation(
      estimatedTotal: total,
      priceRange: PriceRange(
        min: total * 0.85, // -15% variation
        max: total * 1.15, // +15% variation
      ),
      mealCount: estimatedMeals,
      averageMealCost: total / estimatedMeals,
    );
  }
}

/// Comprehensive pricing result with detailed breakdown
class SubscriptionPricingResult {
  final double baseCost;
  final double discountAmount;
  final List<String> appliedDiscounts;
  final double deliveryFee;
  final double platformFee;
  final double vatAmount;
  final double totalAmount;
  final double multiVendorPremium;
  final SubscriptionCostBreakdown costBreakdown;

  const SubscriptionPricingResult({
    required this.baseCost,
    required this.discountAmount,
    required this.appliedDiscounts,
    required this.deliveryFee,
    required this.platformFee,
    required this.vatAmount,
    required this.totalAmount,
    this.multiVendorPremium = 0.0,
    required this.costBreakdown,
  });

  double get subtotal =>
      baseCost +
      multiVendorPremium -
      discountAmount +
      deliveryFee +
      platformFee;
  double get savings => discountAmount;
  bool get hasDiscounts => appliedDiscounts.isNotEmpty;
  double get weeklyAverage => totalAmount / 4;
  double get dailyAverage => totalAmount / 28;
}

/// Detailed cost breakdown structure
class SubscriptionCostBreakdown {
  final Map<int, double> weeklyBreakdown;
  final int mealCount;
  final double averageMealCost;

  const SubscriptionCostBreakdown({
    required this.weeklyBreakdown,
    required this.mealCount,
    required this.averageMealCost,
  });

  double get totalWeeklyCosts =>
      weeklyBreakdown.values.fold(0, (sum, cost) => sum + cost);
  int get weeksCount => weeklyBreakdown.length;
}

/// Quick cost estimation for preview
class CostEstimation {
  final double estimatedTotal;
  final PriceRange priceRange;
  final int mealCount;
  final double averageMealCost;

  const CostEstimation({
    required this.estimatedTotal,
    required this.priceRange,
    required this.mealCount,
    required this.averageMealCost,
  });
}

/// Price range for cost estimation
class PriceRange {
  final double min;
  final double max;

  const PriceRange({
    required this.min,
    required this.max,
  });

  double get range => max - min;
  double get average => (min + max) / 2;
}
