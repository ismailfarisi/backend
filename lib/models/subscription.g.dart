// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubscriptionImpl _$$SubscriptionImplFromJson(Map<String, dynamic> json) =>
    _$SubscriptionImpl(
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

Map<String, dynamic> _$$SubscriptionImplToJson(_$SubscriptionImpl instance) =>
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
};

_$MealVendorSelectionImpl _$$MealVendorSelectionImplFromJson(
        Map<String, dynamic> json) =>
    _$MealVendorSelectionImpl(
      mealType: $enumDecode(_$MealTypeEnumMap, json['mealType']),
      vendorIds: (json['vendorIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$MealVendorSelectionImplToJson(
        _$MealVendorSelectionImpl instance) =>
    <String, dynamic>{
      'mealType': _$MealTypeEnumMap[instance.mealType]!,
      'vendorIds': instance.vendorIds,
    };

const _$MealTypeEnumMap = {
  MealType.breakfast: 'breakfast',
  MealType.lunch: 'lunch',
  MealType.dinner: 'dinner',
};
