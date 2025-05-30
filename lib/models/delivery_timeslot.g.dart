// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_timeslot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DeliveryTimeSlot _$DeliveryTimeSlotFromJson(Map<String, dynamic> json) =>
    _DeliveryTimeSlot(
      id: json['id'] as String,
      startTime:
          const TimeOfDayConverter().fromJson(json['startTime'] as String),
      endTime: const TimeOfDayConverter().fromJson(json['endTime'] as String),
      availableDays: (json['availableDays'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      isActive: json['isActive'] as bool? ?? true,
      specialInstructions: json['specialInstructions'] as String?,
    );

Map<String, dynamic> _$DeliveryTimeSlotToJson(_DeliveryTimeSlot instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startTime': const TimeOfDayConverter().toJson(instance.startTime),
      'endTime': const TimeOfDayConverter().toJson(instance.endTime),
      'availableDays': instance.availableDays,
      'isActive': instance.isActive,
      'specialInstructions': instance.specialInstructions,
    };
