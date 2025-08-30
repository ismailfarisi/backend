import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meal_app/models/weekly_vendor_assignment.dart';
import 'package:meal_app/models/address.dart';
import 'package:meal_app/utils/enums.dart';

part 'subscription_creation_request.freezed.dart';
part 'subscription_creation_request.g.dart';

/// Data Transfer Object for subscription creation API calls
///
/// This model represents the request payload sent to the API when creating
/// a new monthly subscription, containing all necessary information for
/// subscription setup.
@freezed
abstract class SubscriptionCreationRequest with _$SubscriptionCreationRequest {
  const factory SubscriptionCreationRequest({
    /// Type of subscription being created
    @JsonKey(name: 'subscription_type')
    required MonthlySubscriptionType subscriptionType,

    /// List of vendor IDs to be included in the subscription
    @JsonKey(name: 'vendor_ids') required List<String> vendorIds,

    /// Weekly vendor assignments for multi-vendor subscriptions
    /// Required only for multi-vendor weekly split subscriptions
    @JsonKey(name: 'weekly_assignments')
    List<WeeklyVendorAssignment>? weeklyAssignments,

    /// Desired start date for the subscription
    @JsonKey(name: 'start_date') required DateTime startDate,

    /// Meal selections and preferences
    @JsonKey(name: 'meal_selections') Map<String, dynamic>? mealSelections,

    /// Delivery address for the subscription
    @JsonKey(name: 'delivery_address') required DeliveryAddress deliveryAddress,

    /// Additional notes or special instructions
    String? notes,

    /// Preferred delivery time window
    @JsonKey(name: 'delivery_time_preference') String? deliveryTimePreference,

    /// Dietary restrictions or preferences
    @JsonKey(name: 'dietary_restrictions') List<String>? dietaryRestrictions,
  }) = _SubscriptionCreationRequest;

  factory SubscriptionCreationRequest.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionCreationRequestFromJson(json);
}

/// Extension methods for SubscriptionCreationRequest
extension SubscriptionCreationRequestExtension on SubscriptionCreationRequest {
  /// Validates that vendor IDs are provided
  bool get hasValidVendors => vendorIds.isNotEmpty;

  /// Checks if this is a single vendor subscription request
  bool get isSingleVendor =>
      subscriptionType == MonthlySubscriptionType.singleVendor;

  /// Checks if this is a multi-vendor weekly split subscription request
  bool get isMultiVendorWeeklySplit =>
      subscriptionType == MonthlySubscriptionType.multiVendorWeeklySplit;

  /// Validates that weekly assignments are provided for multi-vendor subscriptions
  bool get hasValidWeeklyAssignments {
    if (!isMultiVendorWeeklySplit) {
      // Single vendor subscriptions don't need weekly assignments
      return true;
    }

    if (weeklyAssignments == null || weeklyAssignments!.isEmpty) {
      return false;
    }

    // Check if we have exactly 4 weeks assigned
    final weekNumbers = weeklyAssignments!.map((a) => a.weekNumber).toSet();
    if (weekNumbers.length != 4 || !weekNumbers.containsAll([1, 2, 3, 4])) {
      return false;
    }

    // Validate that all assigned vendors are in the vendor list
    final assignedVendorIds = weeklyAssignments!.map((a) => a.vendorId).toSet();
    return assignedVendorIds.every((vendorId) => vendorIds.contains(vendorId));
  }

  /// Validates that the start date is in the future
  bool get hasValidStartDate => startDate.isAfter(DateTime.now());

  /// Validates that the delivery address is complete
  bool get hasValidDeliveryAddress =>
      deliveryAddress.street.isNotEmpty && deliveryAddress.emirate.isNotEmpty;

  /// Comprehensive validation of the request
  bool get isValid =>
      hasValidVendors &&
      hasValidWeeklyAssignments &&
      hasValidStartDate &&
      hasValidDeliveryAddress;

  /// Gets validation errors as a list of strings
  List<String> get validationErrors {
    final errors = <String>[];

    if (!hasValidVendors) {
      errors.add('At least one vendor must be selected');
    }

    if (!hasValidWeeklyAssignments) {
      if (isMultiVendorWeeklySplit) {
        errors.add(
            'Weekly assignments are required for multi-vendor subscriptions');
      }
    }

    if (!hasValidStartDate) {
      errors.add('Start date must be in the future');
    }

    if (!hasValidDeliveryAddress) {
      errors.add('Delivery address must include street and emirate');
    }

    return errors;
  }

  /// Gets the calculated end date (4 weeks from start date)
  DateTime get calculatedEndDate => startDate.add(const Duration(days: 28));
}
