// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_meal_selection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DateTimeConverter _$DateTimeConverterFromJson(Map<String, dynamic> json) =>
    DateTimeConverter();

Map<String, dynamic> _$DateTimeConverterToJson(DateTimeConverter instance) =>
    <String, dynamic>{};

_SubscriptionMealSelection _$SubscriptionMealSelectionFromJson(
        Map<String, dynamic> json) =>
    _SubscriptionMealSelection(
      mealType: $enumDecode(_$MealTypeEnumMap, json['mealType']),
      vendorIds:
          (json['vendorIds'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$SubscriptionMealSelectionToJson(
        _SubscriptionMealSelection instance) =>
    <String, dynamic>{
      'mealType': _$MealTypeEnumMap[instance.mealType]!,
      'vendorIds': instance.vendorIds,
    };

const _$MealTypeEnumMap = {
  MealType.breakfast: 'breakfast',
  MealType.lunch: 'lunch',
  MealType.dinner: 'dinner',
};

_SubscriptionOrderDto _$SubscriptionOrderDtoFromJson(
        Map<String, dynamic> json) =>
    _SubscriptionOrderDto(
      mealSelections: (json['mealSelections'] as List<dynamic>)
          .map((e) =>
              SubscriptionMealSelection.fromJson(e as Map<String, dynamic>))
          .toList(),
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
    );

Map<String, dynamic> _$SubscriptionOrderDtoToJson(
        _SubscriptionOrderDto instance) =>
    <String, dynamic>{
      'mealSelections': instance.mealSelections,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
    };
