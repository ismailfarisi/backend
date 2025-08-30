import 'package:meal_app/models/subscription_creation_request.dart';
import 'package:meal_app/models/vendor.dart';
import 'package:meal_app/models/subscription_meal_selection.dart';
import 'package:meal_app/utils/enums.dart';

/// Comprehensive validation service for subscription management
///
/// Provides centralized validation logic with detailed error messages
/// and business rule enforcement for subscription creation and management.
class SubscriptionValidationService {
  static const int maxFutureMonths = 3;
  static const int minVendorsForMulti = 2;
  static const int maxVendorsForMulti = 4;
  static const int weeksInMonth = 4;
  static const double minMealPrice = 10.0;
  static const double maxMealPrice = 500.0;
  static const int minMealsPerDay = 1;
  static const int maxMealsPerDay = 3;

  /// Validates subscription creation request comprehensively
  static SubscriptionValidationResult validateSubscriptionCreation(
    SubscriptionCreationRequest request, {
    List<Vendor>? availableVendors,
    List<SubscriptionMealSelection>? mealSelections,
  }) {
    final errors = <String>[];
    final warnings = <String>[];

    // Validate date constraints
    _validateDateConstraints(request.startDate, errors);

    // Validate vendor selection
    _validateVendorSelection(request, availableVendors, errors, warnings);

    // Validate delivery address
    _validateDeliveryAddress(request.deliveryAddress, errors);

    // Validate meal selections for single vendor
    if (request.isSingleVendor && mealSelections != null) {
      _validateMealSelections(mealSelections, errors, warnings);
    }

    // Validate multi-vendor weekly assignments
    if (request.isMultiVendorWeeklySplit) {
      _validateWeeklyAssignments(request, errors, warnings);
    }

    return SubscriptionValidationResult(
      isValid: errors.isEmpty,
      errors: errors,
      warnings: warnings,
    );
  }

  /// Validates date constraints with business rules
  static void _validateDateConstraints(
      DateTime startDate, List<String> errors) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final selectedDate =
        DateTime(startDate.year, startDate.month, startDate.day);

    // Must be in future
    if (selectedDate.isBefore(today) || selectedDate.isAtSameMomentAs(today)) {
      errors.add('Start date must be at least 1 day in the future');
      return;
    }

    // Not too far in future
    final maxDate = today.add(Duration(days: maxFutureMonths * 30));
    if (selectedDate.isAfter(maxDate)) {
      errors.add(
          'Start date cannot be more than $maxFutureMonths months in the future');
    }

    // Should be a weekday (Monday-Friday) for better delivery logistics
    final weekday = selectedDate.weekday;
    if (weekday == DateTime.saturday || weekday == DateTime.sunday) {
      // This is a warning, not an error
      // warnings.add('Consider starting on a weekday for better delivery scheduling');
    }
  }

  /// Validates vendor selection with availability checks
  static void _validateVendorSelection(
    SubscriptionCreationRequest request,
    List<Vendor>? availableVendors,
    List<String> errors,
    List<String> warnings,
  ) {
    if (request.vendorIds.isEmpty) {
      errors.add('At least one vendor must be selected');
      return;
    }

    // Validate vendor existence
    if (availableVendors != null) {
      final availableIds = availableVendors.map((v) => v.id).toSet();
      final invalidVendors =
          request.vendorIds.where((id) => !availableIds.contains(id)).toList();

      if (invalidVendors.isNotEmpty) {
        errors.add(
            'Selected vendors are not available: ${invalidVendors.join(', ')}');
      }
    }

    // Multi-vendor specific validation
    if (request.isMultiVendorWeeklySplit) {
      final uniqueVendors = request.vendorIds.toSet();

      if (uniqueVendors.length < minVendorsForMulti) {
        errors.add(
            'Multi-vendor subscription requires at least $minVendorsForMulti different vendors');
      }

      if (uniqueVendors.length > maxVendorsForMulti) {
        errors.add(
            'Multi-vendor subscription supports maximum $maxVendorsForMulti vendors');
      }

      if (request.vendorIds.length != uniqueVendors.length) {
        warnings.add('Some vendors are selected multiple times');
      }
    }

    // Single vendor specific validation
    if (request.isSingleVendor && request.vendorIds.length > 1) {
      warnings.add(
          'Single vendor subscription selected but multiple vendors provided. Using first vendor.');
    }
  }

  /// Validates delivery address completeness
  static void _validateDeliveryAddress(
      dynamic deliveryAddress, List<String> errors) {
    if (deliveryAddress == null) {
      errors.add('Delivery address is required');
      return;
    }

    // Check required fields based on the address structure
    if (deliveryAddress.street?.toString().trim().isEmpty ?? true) {
      errors.add('Street address is required');
    }

    if (deliveryAddress.emirate?.toString().trim().isEmpty ?? true) {
      errors.add('Emirate selection is required');
    }

    // Validate coordinates if available
    if (deliveryAddress.coordinates != null) {
      final lat = deliveryAddress.coordinates.latitude;
      final lng = deliveryAddress.coordinates.longitude;

      // UAE coordinate boundaries (approximate)
      if (lat < 22.0 || lat > 26.5 || lng < 51.0 || lng > 57.0) {
        errors.add('Delivery address appears to be outside UAE');
      }
    }
  }

  /// Validates meal selections for single vendor subscriptions
  static void _validateMealSelections(
    List<SubscriptionMealSelection> mealSelections,
    List<String> errors,
    List<String> warnings,
  ) {
    if (mealSelections.isEmpty) {
      errors.add('At least one meal selection is required');
      return;
    }

    // Group by day to validate daily selections
    final mealsByDay = <String, List<SubscriptionMealSelection>>{};
    for (final meal in mealSelections) {
      mealsByDay.putIfAbsent(meal.dayOfWeek, () => []).add(meal);
    }

    // Validate each day
    for (final entry in mealsByDay.entries) {
      final dayName = entry.key;
      final dayMeals = entry.value;

      // Check quantity constraints
      final totalMealsForDay =
          dayMeals.fold<int>(0, (sum, meal) => sum + meal.quantity);

      if (totalMealsForDay < minMealsPerDay) {
        warnings.add(
            'Consider selecting at least $minMealsPerDay meal for $dayName');
      }

      if (totalMealsForDay > maxMealsPerDay) {
        warnings.add('More than $maxMealsPerDay meals selected for $dayName');
      }
    }

    // Check if all weekdays are covered
    final selectedDays = mealsByDay.keys.toSet();
    final weekdays = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday'];
    final missingDays =
        weekdays.where((day) => !selectedDays.contains(day)).toList();

    if (missingDays.isNotEmpty && missingDays.length < weekdays.length) {
      warnings.add('No meals selected for: ${missingDays.join(', ')}');
    }
  }

  /// Validates weekly vendor assignments for multi-vendor subscriptions
  static void _validateWeeklyAssignments(
    SubscriptionCreationRequest request,
    List<String> errors,
    List<String> warnings,
  ) {
    final assignments = request.weeklyAssignments;

    if (assignments == null || assignments.isEmpty) {
      errors.add(
          'Weekly vendor assignments are required for multi-vendor subscriptions');
      return;
    }

    // Check all weeks are assigned
    final assignedWeeks = assignments.map((a) => a.weekNumber).toSet();
    final requiredWeeks = {1, 2, 3, 4};
    final missingWeeks = requiredWeeks.difference(assignedWeeks);

    if (missingWeeks.isNotEmpty) {
      errors.add(
          'Missing vendor assignments for weeks: ${missingWeeks.join(', ')}');
    }

    // Check for duplicate week assignments
    if (assignments.length != assignedWeeks.length) {
      errors.add('Duplicate week assignments found');
    }

    // Validate vendor IDs in assignments match selected vendors
    final assignedVendorIds = assignments.map((a) => a.vendorId).toSet();
    final selectedVendorIds = request.vendorIds.toSet();

    final invalidAssignments = assignedVendorIds.difference(selectedVendorIds);
    if (invalidAssignments.isNotEmpty) {
      errors.add(
          'Vendor assignments contain unselected vendors: ${invalidAssignments.join(', ')}');
    }

    // Check for vendor variety
    final uniqueAssignedVendors = assignedVendorIds.length;
    if (uniqueAssignedVendors < minVendorsForMulti) {
      warnings.add(
          'Consider using at least $minVendorsForMulti different vendors for better variety');
    }

    // Validate date ranges
    for (final assignment in assignments) {
      if (assignment.weekStartDate.isAfter(assignment.weekEndDate)) {
        errors.add('Invalid date range for week ${assignment.weekNumber}');
      }
    }
  }

  /// Validates pricing constraints
  static List<String> validatePricing(double totalCost, double weeklyCost) {
    final errors = <String>[];

    if (totalCost <= 0) {
      errors.add('Subscription cost must be greater than zero');
    }

    if (weeklyCost < minMealPrice) {
      errors.add(
          'Weekly cost seems too low (minimum AED ${minMealPrice.toStringAsFixed(0)})');
    }

    if (weeklyCost > maxMealPrice * maxMealsPerDay * 7) {
      errors.add('Weekly cost seems too high');
    }

    return errors;
  }

  /// Validates subscription modification constraints
  static List<String> validateSubscriptionModification(
    DateTime currentStartDate,
    DateTime newStartDate,
  ) {
    final errors = <String>[];
    final now = DateTime.now();

    // Can't modify if subscription already started
    if (currentStartDate.isBefore(now)) {
      errors.add('Cannot modify subscription that has already started');
      return errors;
    }

    // Must give at least 24 hours notice
    final minNoticeTime = now.add(const Duration(hours: 24));
    if (newStartDate.isBefore(minNoticeTime)) {
      errors.add('Subscription changes require at least 24 hours notice');
    }

    return errors;
  }
}

/// Result of subscription validation with detailed feedback
class SubscriptionValidationResult {
  final bool isValid;
  final List<String> errors;
  final List<String> warnings;

  const SubscriptionValidationResult({
    required this.isValid,
    required this.errors,
    required this.warnings,
  });

  /// Combined error and warning messages for display
  List<String> get allMessages => [...errors, ...warnings];

  /// Has any validation issues (errors or warnings)
  bool get hasIssues => errors.isNotEmpty || warnings.isNotEmpty;

  /// Formatted error messages for UI display
  String get formattedErrors => errors.join('\n');

  /// Formatted warning messages for UI display
  String get formattedWarnings => warnings.join('\n');
}
