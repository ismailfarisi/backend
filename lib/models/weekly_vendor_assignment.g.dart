// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weekly_vendor_assignment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WeeklyVendorAssignment _$WeeklyVendorAssignmentFromJson(
        Map<String, dynamic> json) =>
    _WeeklyVendorAssignment(
      weekNumber: (json['week_number'] as num).toInt(),
      vendorId: json['vendor_id'] as String,
      weekStartDate: DateTime.parse(json['week_start_date'] as String),
      weekEndDate: DateTime.parse(json['week_end_date'] as String),
    );

Map<String, dynamic> _$WeeklyVendorAssignmentToJson(
        _WeeklyVendorAssignment instance) =>
    <String, dynamic>{
      'week_number': instance.weekNumber,
      'vendor_id': instance.vendorId,
      'week_start_date': instance.weekStartDate.toIso8601String(),
      'week_end_date': instance.weekEndDate.toIso8601String(),
    };
