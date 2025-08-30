// lib/data_repositories/vendor_repo.dart
import 'package:meal_app/models/subscription_meal_selection.dart';
import 'package:meal_app/models/subscription_creation_request.dart';
import 'package:meal_app/models/monthly_subscription.dart';
import 'package:meal_app/services/subscription_validation_service.dart';
import 'package:meal_app/services/subscription_business_rules.dart';

import '../models/menu_item.dart';
import '../models/subscription.dart';
import '../models/vendor.dart';
import '../models/vendor_menu.dart';
import '../models/address.dart';
import '../utils/result.dart';

/// Enhanced vendor repository with comprehensive subscription management
abstract class VendorRepo {
  // Existing methods
  Future<Result<Subscription?>> getCurrentSubscription();
  Future<Result<List<Vendor>>> getRecommendedVendors(
      {required double lat, required double long});
  Future<Result<VendorMenu>> getWeeklyMenu(String vendorId);
  Future<Result<List<Vendor>>> getVendorsByMealType({
    required double lat,
    required double long,
    required String mealType,
    double radius = 10,
  });

  // Enhanced subscription management methods

  /// Create a new subscription with comprehensive validation
  Future<Result<MonthlySubscription>> createMonthlySubscription(
    SubscriptionCreationRequest request,
  );

  /// Validate subscription creation request before processing
  Future<Result<SubscriptionValidationResult>> validateSubscriptionRequest(
    SubscriptionCreationRequest request,
  );

  /// Calculate subscription pricing with business rules
  Future<Result<SubscriptionPricingResult>> calculateSubscriptionPricing(
    SubscriptionCreationRequest request,
  );

  /// Get available vendors for multi-vendor subscriptions
  Future<Result<List<Vendor>>> getAvailableVendorsForSubscription({
    required DeliveryAddress deliveryAddress,
    required DateTime startDate,
    List<String>? cuisinePreferences,
    double? maxDistance,
  });

  /// Check vendor availability for specific dates
  Future<Result<Map<String, bool>>> checkVendorAvailability(
    List<String> vendorIds,
    DateTime startDate,
    DateTime endDate,
  );

  /// Get subscription cost estimation
  Future<Result<CostEstimation>> getSubscriptionCostEstimation({
    required String subscriptionType,
    int? mealCount,
    int? vendorCount,
    String? deliveryAreaId,
  });

  /// Modify existing subscription
  Future<Result<MonthlySubscription>> modifySubscription(
    String subscriptionId,
    SubscriptionCreationRequest modificationRequest,
  );

  /// Cancel subscription with reason
  Future<Result<bool>> cancelSubscription(
    String subscriptionId,
    String cancellationReason,
  );

  /// Pause subscription for a period
  Future<Result<bool>> pauseSubscription(
    String subscriptionId,
    DateTime pauseStart,
    DateTime pauseEnd,
    String pauseReason,
  );

  /// Resume paused subscription
  Future<Result<bool>> resumeSubscription(String subscriptionId);

  /// Get subscription history for user
  Future<Result<List<MonthlySubscription>>> getSubscriptionHistory(
    String userId, {
    int limit = 10,
    int offset = 0,
  });

  /// Get active subscriptions for user
  Future<Result<List<MonthlySubscription>>> getActiveSubscriptions(
      String userId);

  /// Validate delivery address for subscription
  Future<Result<bool>> validateDeliveryAddress(DeliveryAddress address);

  /// Get subscription analytics and recommendations
  Future<Result<SubscriptionAnalytics>> getSubscriptionAnalytics(String userId);

  /// Check if user qualifies for loyalty discounts
  Future<Result<bool>> checkLoyaltyStatus(String userId);

  /// Process subscription renewal
  Future<Result<MonthlySubscription>> renewSubscription(
    String subscriptionId,
    DateTime newStartDate,
  );

  /// Get subscription preview before creation
  Future<Result<SubscriptionPreview>> getSubscriptionPreview(
    SubscriptionCreationRequest request,
  );

  // Legacy support - deprecated
  @Deprecated('Use createMonthlySubscription instead')
  Future<Result<Subscription>> createSubscription(
      SubscriptionOrderDto orderDto);

  @Deprecated('Use createMonthlySubscription with payment integration')
  Future<Result<Subscription>> confirmSubscription(
    String subscriptionId,
    Map<String, dynamic> paymentDetails,
  );
}

/// Subscription analytics data
class SubscriptionAnalytics {
  final int totalSubscriptions;
  final double totalSpent;
  final int favoriteVendorsCount;
  final List<String> preferredCuisines;
  final double averageRating;
  final bool isLoyalCustomer;

  const SubscriptionAnalytics({
    required this.totalSubscriptions,
    required this.totalSpent,
    required this.favoriteVendorsCount,
    required this.preferredCuisines,
    required this.averageRating,
    required this.isLoyalCustomer,
  });
}

/// Subscription preview data
class SubscriptionPreview {
  final SubscriptionPricingResult pricing;
  final List<String> includedServices;
  final List<String> restrictions;
  final DateTime estimatedStartDate;
  final DateTime estimatedEndDate;
  final List<VendorPreview> vendorPreviews;

  const SubscriptionPreview({
    required this.pricing,
    required this.includedServices,
    required this.restrictions,
    required this.estimatedStartDate,
    required this.estimatedEndDate,
    required this.vendorPreviews,
  });
}

/// Vendor preview for subscription
class VendorPreview {
  final Vendor vendor;
  final List<String> sampleMenuItems;
  final double weeklyEstimatedCost;
  final int assignedWeeks;

  const VendorPreview({
    required this.vendor,
    required this.sampleMenuItems,
    required this.weeklyEstimatedCost,
    required this.assignedWeeks,
  });
}

/// Legacy DTO for backward compatibility
@Deprecated('Use SubscriptionCreationRequest instead')
class SubscriptionOrderDto {
  final String vendorId;
  final List<SubscriptionMealSelection> mealSelections;
  final DateTime startDate;
  final DeliveryAddress deliveryAddress;

  const SubscriptionOrderDto({
    required this.vendorId,
    required this.mealSelections,
    required this.startDate,
    required this.deliveryAddress,
  });
}
