import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class TimeOfDayConverter implements JsonConverter<TimeOfDay, String> {
  const TimeOfDayConverter();

  @override
  TimeOfDay fromJson(String json) {
    final parts = json.split(':');
    if (parts.length != 2) {
      throw FormatException(
          'Invalid time format: $json. Expected format: "HH:mm"');
    }

    try {
      final hour = int.parse(parts[0]);
      final minute = int.parse(parts[1]);

      if (hour < 0 || hour > 23 || minute < 0 || minute > 59) {
        throw FormatException(
            'Invalid time values: hour=$hour, minute=$minute');
      }

      return TimeOfDay(hour: hour, minute: minute);
    } catch (e) {
      if (e is FormatException) rethrow;
      throw FormatException('Failed to parse time: $json');
    }
  }

  @override
  String toJson(TimeOfDay time) {
    return '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
  }
}
