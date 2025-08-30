// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_meal_selection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SubscriptionMealSelection _$SubscriptionMealSelectionFromJson(
        Map<String, dynamic> json) =>
    _SubscriptionMealSelection(
      menuItemId: json['menuItemId'] as String,
      dayOfWeek: json['dayOfWeek'] as String,
      quantity: (json['quantity'] as num?)?.toInt() ?? 1,
    );

Map<String, dynamic> _$SubscriptionMealSelectionToJson(
        _SubscriptionMealSelection instance) =>
    <String, dynamic>{
      'menuItemId': instance.menuItemId,
      'dayOfWeek': instance.dayOfWeek,
      'quantity': instance.quantity,
    };
