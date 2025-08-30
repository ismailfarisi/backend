// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monthly_subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MonthlySubscription _$MonthlySubscriptionFromJson(Map<String, dynamic> json) =>
    _MonthlySubscription(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      subscriptionType: $enumDecode(
          _$MonthlySubscriptionTypeEnumMap, json['subscription_type']),
      vendorIds: (json['vendor_ids'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      weeklyVendorAssignments: (json['weekly_vendor_assignments']
              as List<dynamic>?)
          ?.map(
              (e) => WeeklyVendorAssignment.fromJson(e as Map<String, dynamic>))
          .toList(),
      startDate: DateTime.parse(json['start_date'] as String),
      endDate: DateTime.parse(json['end_date'] as String),
      totalPrice: (json['total_price'] as num).toDouble(),
      status: $enumDecode(_$SubscriptionStatusEnumMap, json['status']),
      mealSelections: json['meal_selections'] as Map<String, dynamic>?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$MonthlySubscriptionToJson(
        _MonthlySubscription instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'subscription_type':
          _$MonthlySubscriptionTypeEnumMap[instance.subscriptionType]!,
      'vendor_ids': instance.vendorIds,
      'weekly_vendor_assignments': instance.weeklyVendorAssignments,
      'start_date': instance.startDate.toIso8601String(),
      'end_date': instance.endDate.toIso8601String(),
      'total_price': instance.totalPrice,
      'status': _$SubscriptionStatusEnumMap[instance.status]!,
      'meal_selections': instance.mealSelections,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

const _$MonthlySubscriptionTypeEnumMap = {
  MonthlySubscriptionType.singleVendor: 'singleVendor',
  MonthlySubscriptionType.multiVendorWeeklySplit: 'multiVendorWeeklySplit',
};

const _$SubscriptionStatusEnumMap = {
  SubscriptionStatus.active: 'active',
  SubscriptionStatus.paused: 'paused',
  SubscriptionStatus.cancelled: 'cancelled',
  SubscriptionStatus.expired: 'expired',
  SubscriptionStatus.pending: 'pending',
  SubscriptionStatus.completed: 'completed',
};
