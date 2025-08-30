import 'package:freezed_annotation/freezed_annotation.dart';

part 'weekly_vendor_assignment.freezed.dart';
part 'weekly_vendor_assignment.g.dart';

/// Model representing vendor assignment for a specific week in monthly subscription
///
/// This model handles the assignment of vendors to specific weeks in a 4-week
/// subscription cycle, allowing multi-vendor weekly split functionality.
@freezed
abstract class WeeklyVendorAssignment with _$WeeklyVendorAssignment {
  const factory WeeklyVendorAssignment({
    /// Week number in the subscription cycle (1-4)
    @JsonKey(name: 'week_number') required int weekNumber,

    /// ID of the vendor assigned to this week
    @JsonKey(name: 'vendor_id') required String vendorId,

    /// Start date of the week
    @JsonKey(name: 'week_start_date') required DateTime weekStartDate,

    /// End date of the week
    @JsonKey(name: 'week_end_date') required DateTime weekEndDate,
  }) = _WeeklyVendorAssignment;

  factory WeeklyVendorAssignment.fromJson(Map<String, dynamic> json) =>
      _$WeeklyVendorAssignmentFromJson(json);
}

/// Extension methods for WeeklyVendorAssignment
extension WeeklyVendorAssignmentExtension on WeeklyVendorAssignment {
  /// Validates that the week number is within valid range (1-4)
  bool get isValidWeekNumber => weekNumber >= 1 && weekNumber <= 4;

  /// Validates that the week dates are in correct order
  bool get isValidDateRange => weekStartDate.isBefore(weekEndDate);

  /// Gets the duration of the week assignment
  Duration get weekDuration => weekEndDate.difference(weekStartDate);
}
