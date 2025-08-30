// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Subscription _$SubscriptionFromJson(Map<String, dynamic> json) =>
    _Subscription(
      id: json['id'] as String?,
      userId: json['userId'] as String,
      price: (json['price'] as num).toDouble(),
      mealSelections: (json['mealSelections'] as List<dynamic>)
          .map((e) => MealVendorSelection.fromJson(e as Map<String, dynamic>))
          .toList(),
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      status: $enumDecode(_$SubscriptionStatusEnumMap, json['status']),
      isAutoRenewal: json['isAutoRenewal'] as bool? ?? false,
    );

Map<String, dynamic> _$SubscriptionToJson(_Subscription instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'price': instance.price,
      'mealSelections': instance.mealSelections,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'status': _$SubscriptionStatusEnumMap[instance.status]!,
      'isAutoRenewal': instance.isAutoRenewal,
    };

const _$SubscriptionStatusEnumMap = {
  SubscriptionStatus.active: 'active',
  SubscriptionStatus.paused: 'paused',
  SubscriptionStatus.cancelled: 'cancelled',
  SubscriptionStatus.expired: 'expired',
  SubscriptionStatus.pending: 'pending',
  SubscriptionStatus.completed: 'completed',
};

_MealVendorSelection _$MealVendorSelectionFromJson(Map<String, dynamic> json) =>
    _MealVendorSelection(
      mealType: $enumDecode(_$MealTypeEnumMap, json['mealType']),
      vendorIds: (json['vendorIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$MealVendorSelectionToJson(
        _MealVendorSelection instance) =>
    <String, dynamic>{
      'mealType': _$MealTypeEnumMap[instance.mealType]!,
      'vendorIds': instance.vendorIds,
    };

const _$MealTypeEnumMap = {
  MealType.breakfast: 'breakfast',
  MealType.lunch: 'lunch',
  MealType.dinner: 'dinner',
};
