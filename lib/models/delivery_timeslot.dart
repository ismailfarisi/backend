import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meal_app/utils/time_of_day_converter.dart';

part 'delivery_timeslot.freezed.dart';
part 'delivery_timeslot.g.dart';

@freezed
class DeliveryTimeSlot with _$DeliveryTimeSlot {
  const factory DeliveryTimeSlot({
    required String id,
    @TimeOfDayConverter() required TimeOfDay startTime,
    @TimeOfDayConverter() required TimeOfDay endTime,
    required List<String> availableDays,
    @Default(true) bool isActive,
    String? specialInstructions,
  }) = _DeliveryTimeSlot;

  factory DeliveryTimeSlot.fromJson(Map<String, dynamic> json) =>
      _$DeliveryTimeSlotFromJson(json);
}
