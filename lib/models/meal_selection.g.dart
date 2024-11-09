// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_selection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MealSelectionImpl _$$MealSelectionImplFromJson(Map<String, dynamic> json) =>
    _$MealSelectionImpl(
      date: DateTime.parse(json['date'] as String),
      selectedMeals: (json['selectedMeals'] as Map<String, dynamic>).map(
        (k, e) => MapEntry($enumDecode(_$MealTypeEnumMap, k),
            MenuItem.fromJson(e as Map<String, dynamic>)),
      ),
      deliveryStatus: $enumDecodeNullable(
              _$DeliveryStatusEnumMap, json['deliveryStatus']) ??
          DeliveryStatus.scheduled,
      deliveredAt: json['deliveredAt'] == null
          ? null
          : DateTime.parse(json['deliveredAt'] as String),
      deliveryNote: json['deliveryNote'] as String?,
      feedbackId: json['feedbackId'] as String?,
    );

Map<String, dynamic> _$$MealSelectionImplToJson(_$MealSelectionImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'selectedMeals': instance.selectedMeals
          .map((k, e) => MapEntry(_$MealTypeEnumMap[k]!, e)),
      'deliveryStatus': _$DeliveryStatusEnumMap[instance.deliveryStatus]!,
      'deliveredAt': instance.deliveredAt?.toIso8601String(),
      'deliveryNote': instance.deliveryNote,
      'feedbackId': instance.feedbackId,
    };

const _$MealTypeEnumMap = {
  MealType.breakfast: 'breakfast',
  MealType.lunch: 'lunch',
  MealType.dinner: 'dinner',
};

const _$DeliveryStatusEnumMap = {
  DeliveryStatus.scheduled: 'scheduled',
  DeliveryStatus.preparing: 'preparing',
  DeliveryStatus.outForDelivery: 'outForDelivery',
  DeliveryStatus.delivered: 'delivered',
  DeliveryStatus.missed: 'missed',
  DeliveryStatus.cancelled: 'cancelled',
};
