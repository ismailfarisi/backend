// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_creation_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SubscriptionCreationRequest _$SubscriptionCreationRequestFromJson(
        Map<String, dynamic> json) =>
    _SubscriptionCreationRequest(
      subscriptionType: $enumDecode(
          _$MonthlySubscriptionTypeEnumMap, json['subscription_type']),
      vendorIds: (json['vendor_ids'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      weeklyAssignments: (json['weekly_assignments'] as List<dynamic>?)
          ?.map(
              (e) => WeeklyVendorAssignment.fromJson(e as Map<String, dynamic>))
          .toList(),
      startDate: DateTime.parse(json['start_date'] as String),
      mealSelections: json['meal_selections'] as Map<String, dynamic>?,
      deliveryAddress: DeliveryAddress.fromJson(
          json['delivery_address'] as Map<String, dynamic>),
      notes: json['notes'] as String?,
      deliveryTimePreference: json['delivery_time_preference'] as String?,
      dietaryRestrictions: (json['dietary_restrictions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$SubscriptionCreationRequestToJson(
        _SubscriptionCreationRequest instance) =>
    <String, dynamic>{
      'subscription_type':
          _$MonthlySubscriptionTypeEnumMap[instance.subscriptionType]!,
      'vendor_ids': instance.vendorIds,
      'weekly_assignments': instance.weeklyAssignments,
      'start_date': instance.startDate.toIso8601String(),
      'meal_selections': instance.mealSelections,
      'delivery_address': instance.deliveryAddress,
      'notes': instance.notes,
      'delivery_time_preference': instance.deliveryTimePreference,
      'dietary_restrictions': instance.dietaryRestrictions,
    };

const _$MonthlySubscriptionTypeEnumMap = {
  MonthlySubscriptionType.singleVendor: 'singleVendor',
  MonthlySubscriptionType.multiVendorWeeklySplit: 'multiVendorWeeklySplit',
};
