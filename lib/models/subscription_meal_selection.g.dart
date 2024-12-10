// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_meal_selection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DateTimeConverter _$DateTimeConverterFromJson(Map<String, dynamic> json) =>
    DateTimeConverter();

Map<String, dynamic> _$DateTimeConverterToJson(DateTimeConverter instance) =>
    <String, dynamic>{};

_$SubscriptionMealSelectionImpl _$$SubscriptionMealSelectionImplFromJson(
        Map<String, dynamic> json) =>
    _$SubscriptionMealSelectionImpl(
      mealType: $enumDecode(_$MealTypeEnumMap, json['mealType']),
      vendorIds:
          (json['vendorIds'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$SubscriptionMealSelectionImplToJson(
        _$SubscriptionMealSelectionImpl instance) =>
    <String, dynamic>{
      'mealType': _$MealTypeEnumMap[instance.mealType]!,
      'vendorIds': instance.vendorIds,
    };

const _$MealTypeEnumMap = {
  MealType.breakfast: 'breakfast',
  MealType.lunch: 'lunch',
  MealType.dinner: 'dinner',
};

_$SubscriptionOrderDtoImpl _$$SubscriptionOrderDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SubscriptionOrderDtoImpl(
      mealSelections: (json['mealSelections'] as List<dynamic>)
          .map((e) =>
              SubscriptionMealSelection.fromJson(e as Map<String, dynamic>))
          .toList(),
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
    );

Map<String, dynamic> _$$SubscriptionOrderDtoImplToJson(
        _$SubscriptionOrderDtoImpl instance) =>
    <String, dynamic>{
      'mealSelections': instance.mealSelections,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
    };
