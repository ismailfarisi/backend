// subscription_meal_selection.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meal_app/models/subscription.dart';

part 'subscription_meal_selection.freezed.dart';
part 'subscription_meal_selection.g.dart';

@freezed
class SubscriptionMealSelection with _$SubscriptionMealSelection {
  const factory SubscriptionMealSelection({
    required MealType mealType,
    required List<String> vendorIds,
  }) = _SubscriptionMealSelection;

  factory SubscriptionMealSelection.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionMealSelectionFromJson(json);
}

// subscription_order_dto.dart
@freezed
class SubscriptionOrderDto with _$SubscriptionOrderDto {
  const factory SubscriptionOrderDto({
    required List<SubscriptionMealSelection> mealSelections,
    required DateTime startDate,
    required DateTime endDate,
  }) = _SubscriptionOrderDto;

  factory SubscriptionOrderDto.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionOrderDtoFromJson(json);
}

// Convert meal type enum to string for JSON
extension MealTypeJson on MealType {
  String toJson() => toString().split('.').last.toLowerCase();
}

// Custom JSON serialization for DateTime
@JsonSerializable()
class DateTimeConverter implements JsonConverter<DateTime, String> {
  const DateTimeConverter();

  @override
  DateTime fromJson(String json) => DateTime.parse(json);

  @override
  String toJson(DateTime dateTime) => dateTime.toIso8601String();
}
