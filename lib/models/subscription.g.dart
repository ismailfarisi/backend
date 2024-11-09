// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubscriptionImpl _$$SubscriptionImplFromJson(Map<String, dynamic> json) =>
    _$SubscriptionImpl(
      id: json['id'] as String?,
      type: $enumDecode(_$SubscriptionTypeEnumMap, json['type']),
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      meals: (json['meals'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$MealTypeEnumMap, e))
              .toList() ??
          const [],
      price: (json['price'] as num).toDouble(),
      currentVendor: json['currentVendor'] as String,
    );

Map<String, dynamic> _$$SubscriptionImplToJson(_$SubscriptionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$SubscriptionTypeEnumMap[instance.type]!,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'meals': instance.meals.map((e) => _$MealTypeEnumMap[e]!).toList(),
      'price': instance.price,
      'currentVendor': instance.currentVendor,
    };

const _$SubscriptionTypeEnumMap = {
  SubscriptionType.basic: 'basic',
  SubscriptionType.premium: 'premium',
  SubscriptionType.none: 'none',
};

const _$MealTypeEnumMap = {
  MealType.breakfast: 'breakfast',
  MealType.lunch: 'lunch',
  MealType.dinner: 'dinner',
};
