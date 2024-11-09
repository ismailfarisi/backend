import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscription.freezed.dart';
part 'subscription.g.dart';

enum SubscriptionType { basic, premium, none }

enum MealType { breakfast, lunch, dinner }

@freezed
class Subscription with _$Subscription {
  const factory Subscription({
    String? id,
    required SubscriptionType type,
    DateTime? startDate,
    DateTime? endDate,
    @Default([]) List<MealType> meals,
    required double price,
    required String currentVendor,
  }) = _Subscription;

  factory Subscription.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionFromJson(json);
}
