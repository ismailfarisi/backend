import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meal_app/models/weekly_vendor_assignment.dart';
import 'package:meal_app/models/subscription_order.dart';
import 'package:meal_app/utils/enums.dart';

part 'monthly_subscription.freezed.dart';
part 'monthly_subscription.g.dart';

/// Core subscription model supporting both single vendor and multi-vendor weekly splits
///
/// This model represents a monthly subscription that can either be assigned to a single
/// vendor for the entire month or split across multiple vendors on a weekly basis.
@freezed
abstract class MonthlySubscription with _$MonthlySubscription {
  const factory MonthlySubscription({
    /// Unique identifier for the subscription
    required String id,

    /// ID of the user who owns this subscription
    @JsonKey(name: 'user_id') required String userId,

    /// Type of subscription (single vendor or multi-vendor weekly split)
    @JsonKey(name: 'subscription_type')
    required MonthlySubscriptionType subscriptionType,

    /// List of vendor IDs involved in this subscription
    @JsonKey(name: 'vendor_ids') required List<String> vendorIds,

    /// Weekly vendor assignments for multi-vendor subscriptions
    /// Null or empty for single vendor subscriptions
    @JsonKey(name: 'weekly_vendor_assignments')
    List<WeeklyVendorAssignment>? weeklyVendorAssignments,

    /// Start date of the subscription
    @JsonKey(name: 'start_date') required DateTime startDate,

    /// End date of the subscription
    @JsonKey(name: 'end_date') required DateTime endDate,

    /// Total price for the entire subscription period
    @JsonKey(name: 'total_price') required double totalPrice,

    /// Current status of the subscription
    required SubscriptionStatus status,

    /// Meal selections and preferences for the subscription
    @JsonKey(name: 'meal_selections') Map<String, dynamic>? mealSelections,

    /// Creation timestamp
    @JsonKey(name: 'created_at') DateTime? createdAt,

    /// Last update timestamp
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _MonthlySubscription;

  factory MonthlySubscription.fromJson(Map<String, dynamic> json) =>
      _$MonthlySubscriptionFromJson(json);
}

/// Extension methods for MonthlySubscription
extension MonthlySubscriptionExtension on MonthlySubscription {
  /// Validates that the subscription dates are in correct order
  bool get isValidDateRange => startDate.isBefore(endDate);

  /// Gets the duration of the subscription
  Duration get subscriptionDuration => endDate.difference(startDate);

  /// Checks if this is a single vendor subscription
  bool get isSingleVendor =>
      subscriptionType == MonthlySubscriptionType.singleVendor;

  /// Checks if this is a multi-vendor weekly split subscription
  bool get isMultiVendorWeeklySplit =>
      subscriptionType == MonthlySubscriptionType.multiVendorWeeklySplit;

  /// Validates weekly assignments for multi-vendor subscriptions
  bool get hasValidWeeklyAssignments {
    if (!isMultiVendorWeeklySplit) return true;

    if (weeklyVendorAssignments == null || weeklyVendorAssignments!.isEmpty) {
      return false;
    }

    // Check if we have exactly 4 weeks assigned
    final weekNumbers =
        weeklyVendorAssignments!.map((a) => a.weekNumber).toSet();
    if (weekNumbers.length != 4 || !weekNumbers.containsAll([1, 2, 3, 4])) {
      return false;
    }

    // Validate each assignment
    return weeklyVendorAssignments!.every((assignment) =>
        assignment.isValidWeekNumber && assignment.isValidDateRange);
  }

  /// Gets the vendor ID for a specific week (1-4)
  /// Returns the single vendor ID for single vendor subscriptions
  String? getVendorIdForWeek(int weekNumber) {
    if (isSingleVendor) {
      return vendorIds.isNotEmpty ? vendorIds.first : null;
    }

    if (weeklyVendorAssignments == null) return null;

    try {
      return weeklyVendorAssignments!
          .firstWhere((assignment) => assignment.weekNumber == weekNumber)
          .vendorId;
    } catch (e) {
      return null;
    }
  }

  /// Checks if the subscription is currently active
  bool get isActive => status == SubscriptionStatus.active;

  /// Checks if the subscription is pending
  bool get isPending => status == SubscriptionStatus.pending;

  /// Checks if the subscription is completed
  bool get isCompleted => status == SubscriptionStatus.completed;

  /// Checks if the subscription is cancelled
  bool get isCancelled => status == SubscriptionStatus.cancelled;

  /// Checks if the subscription has expired
  bool get isExpired => status == SubscriptionStatus.expired;

  /// Gets the current week number based on the current date
  int? getCurrentWeekNumber() {
    final now = DateTime.now();
    if (now.isBefore(startDate) || now.isAfter(endDate)) {
      return null;
    }

    final daysSinceStart = now.difference(startDate).inDays;
    return (daysSinceStart ~/ 7) + 1;
  }

  /// Gets the vendor ID for the current week
  String? getCurrentVendor() {
    final currentWeek = getCurrentWeekNumber();
    if (currentWeek == null) return null;

    return getVendorIdForWeek(currentWeek);
  }
}
