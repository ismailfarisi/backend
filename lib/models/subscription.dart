import 'package:freezed_annotation/freezed_annotation.dart';

import 'subscription_order.dart';

part 'subscription.freezed.dart';
part 'subscription.g.dart';

enum SubscriptionType { basic, premium, none }

enum MealType {
  breakfast,
  lunch,
  dinner;

  String get displayName {
    switch (this) {
      case MealType.breakfast:
        return 'Breakfast';
      case MealType.lunch:
        return 'Lunch';
      case MealType.dinner:
        return 'Dinner';
    }
  }
}

@freezed
abstract class Subscription with _$Subscription {
  const factory Subscription({
    String? id,
    required String userId,
    required double price,
    required List<MealVendorSelection> mealSelections,
    required DateTime startDate,
    required DateTime endDate,
    required SubscriptionStatus status,
    @Default(false) bool isAutoRenewal,
  }) = _Subscription;

  factory Subscription.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionFromJson(json);
}

@freezed
abstract class MealVendorSelection with _$MealVendorSelection {
  const factory MealVendorSelection({
    required MealType mealType,
    @Default([]) List<String> vendorIds,
  }) = _MealVendorSelection;

  factory MealVendorSelection.fromJson(Map<String, dynamic> json) =>
      _$MealVendorSelectionFromJson(json);
}
