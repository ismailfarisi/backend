// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubscriptionOrderImpl _$$SubscriptionOrderImplFromJson(
        Map<String, dynamic> json) =>
    _$SubscriptionOrderImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      vendorId: json['vendorId'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      monthlyAmount: (json['monthlyAmount'] as num).toDouble(),
      subscribedMeals: (json['subscribedMeals'] as List<dynamic>)
          .map((e) => $enumDecode(_$MealTypeEnumMap, e))
          .toList(),
      status: $enumDecode(_$SubscriptionStatusEnumMap, json['status']),
      paymentStatus: $enumDecode(_$PaymentStatusEnumMap, json['paymentStatus']),
      mealSelections: (json['mealSelections'] as List<dynamic>)
          .map((e) => MealSelection.fromJson(e as Map<String, dynamic>))
          .toList(),
      deliveryAddress: json['deliveryAddress'] == null
          ? null
          : DeliveryAddress.fromJson(
              json['deliveryAddress'] as Map<String, dynamic>),
      cancelReason: json['cancelReason'] as String?,
      cancelledAt: json['cancelledAt'] == null
          ? null
          : DateTime.parse(json['cancelledAt'] as String),
      pausedFrom: json['pausedFrom'] == null
          ? null
          : DateTime.parse(json['pausedFrom'] as String),
      pausedUntil: json['pausedUntil'] == null
          ? null
          : DateTime.parse(json['pausedUntil'] as String),
      pauseReason: json['pauseReason'] as String?,
      changes: (json['changes'] as List<dynamic>?)
              ?.map(
                  (e) => SubscriptionChange.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$SubscriptionOrderImplToJson(
        _$SubscriptionOrderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'vendorId': instance.vendorId,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'monthlyAmount': instance.monthlyAmount,
      'subscribedMeals':
          instance.subscribedMeals.map((e) => _$MealTypeEnumMap[e]!).toList(),
      'status': _$SubscriptionStatusEnumMap[instance.status]!,
      'paymentStatus': _$PaymentStatusEnumMap[instance.paymentStatus]!,
      'mealSelections': instance.mealSelections,
      'deliveryAddress': instance.deliveryAddress,
      'cancelReason': instance.cancelReason,
      'cancelledAt': instance.cancelledAt?.toIso8601String(),
      'pausedFrom': instance.pausedFrom?.toIso8601String(),
      'pausedUntil': instance.pausedUntil?.toIso8601String(),
      'pauseReason': instance.pauseReason,
      'changes': instance.changes,
    };

const _$MealTypeEnumMap = {
  MealType.breakfast: 'breakfast',
  MealType.lunch: 'lunch',
  MealType.dinner: 'dinner',
};

const _$SubscriptionStatusEnumMap = {
  SubscriptionStatus.active: 'active',
  SubscriptionStatus.paused: 'paused',
  SubscriptionStatus.cancelled: 'cancelled',
  SubscriptionStatus.expired: 'expired',
};

const _$PaymentStatusEnumMap = {
  PaymentStatus.pending: 'pending',
  PaymentStatus.completed: 'completed',
  PaymentStatus.failed: 'failed',
  PaymentStatus.refunded: 'refunded',
};
