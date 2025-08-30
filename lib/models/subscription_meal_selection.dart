import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscription_meal_selection.freezed.dart';
part 'subscription_meal_selection.g.dart';

/// Model for meal selections in subscription
@freezed
abstract class SubscriptionMealSelection with _$SubscriptionMealSelection {
  const factory SubscriptionMealSelection({
    /// ID of the menu item being selected
    required String menuItemId,

    /// Day of the week for this meal selection
    required String dayOfWeek,

    /// Quantity of this meal for the day
    @Default(1) int quantity,
  }) = _SubscriptionMealSelection;

  factory SubscriptionMealSelection.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionMealSelectionFromJson(json);
}

/// Extension methods for SubscriptionMealSelection
extension SubscriptionMealSelectionExtension on SubscriptionMealSelection {
  /// Validates that the day of week is valid
  bool get isValidDayOfWeek {
    const validDays = [
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday',
      'Sunday'
    ];
    return validDays.contains(dayOfWeek);
  }

  /// Validates that the quantity is reasonable
  bool get isValidQuantity => quantity > 0 && quantity <= 10;

  /// Overall validation
  bool get isValid =>
      menuItemId.isNotEmpty && isValidDayOfWeek && isValidQuantity;
}
