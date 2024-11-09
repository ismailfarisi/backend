import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meal_app/models/address.dart';

import 'subscription.dart';

part 'subscription_order.freezed.dart';
part 'subscription_order.g.dart';

@freezed
class SubscriptionOrder with _$SubscriptionOrder {
  const factory SubscriptionOrder({
    required String id,
    required String userId,
    required String vendorId,
    required DateTime startDate,
    required DateTime endDate,
    required double monthlyAmount,
    required List<MealType> subscribedMeals,
    required SubscriptionStatus status,
    required PaymentStatus paymentStatus,
    required List<MealSelection> mealSelections,
    DeliveryAddress? deliveryAddress,
    String? cancelReason,
    DateTime? cancelledAt,
    DateTime? pausedFrom,
    DateTime? pausedUntil,
    String? pauseReason,
    @Default([]) List<SubscriptionChange> changes,
  }) = _SubscriptionOrder;

  factory SubscriptionOrder.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionOrderFromJson(json);
}

enum SubscriptionStatus {
  active,
  paused,
  cancelled,
  expired;

  String get displayName {
    switch (this) {
      case SubscriptionStatus.active:
        return 'Active';
      case SubscriptionStatus.paused:
        return 'Paused';
      case SubscriptionStatus.cancelled:
        return 'Cancelled';
      case SubscriptionStatus.expired:
        return 'Expired';
    }
  }

  Color get color {
    switch (this) {
      case SubscriptionStatus.active:
        return Colors.green;
      case SubscriptionStatus.paused:
        return Colors.orange;
      case SubscriptionStatus.cancelled:
        return Colors.red;
      case SubscriptionStatus.expired:
        return Colors.grey;
    }
  }
}

enum PaymentStatus {
  pending,
  completed,
  failed,
  refunded;

  String get displayName {
    switch (this) {
      case PaymentStatus.pending:
        return 'Pending';
      case PaymentStatus.completed:
        return 'Completed';
      case PaymentStatus.failed:
        return 'Failed';
      case PaymentStatus.refunded:
        return 'Refunded';
    }
  }
}
