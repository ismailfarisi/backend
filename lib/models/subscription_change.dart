import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscription_change.freezed.dart';
part 'subscription_change.g.dart';

@freezed
class SubscriptionChange with _$SubscriptionChange {
  const factory SubscriptionChange({
    required String id,
    required DateTime changeDate,
    required ChangeType type,
    required String description,
    Map<String, dynamic>? oldValue,
    Map<String, dynamic>? newValue,
    String? reason,
  }) = _SubscriptionChange;

  factory SubscriptionChange.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionChangeFromJson(json);
}

enum ChangeType {
  mealPlanChange,
  addressChange,
  pause,
  resume,
  cancellation,
  renewal;

  String get displayName {
    switch (this) {
      case ChangeType.mealPlanChange:
        return 'Meal Plan Changed';
      case ChangeType.addressChange:
        return 'Delivery Address Changed';
      case ChangeType.pause:
        return 'Subscription Paused';
      case ChangeType.resume:
        return 'Subscription Resumed';
      case ChangeType.cancellation:
        return 'Subscription Cancelled';
      case ChangeType.renewal:
        return 'Subscription Renewed';
    }
  }
}
