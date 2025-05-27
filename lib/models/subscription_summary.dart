import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meal_app/models/subscription.dart';

part 'subscription_summary.freezed.dart';
part 'subscription_summary.g.dart';

@freezed
abstract class SubscriptionSummary with _$SubscriptionSummary {
  const factory SubscriptionSummary({
    required int totalOrders,
    required int activeSubscriptions,
    required int completedSubscriptions,
    required double totalSpent,
    required int missedDeliveries,
    required Map<MealType, int> mealTypeDistribution,
    required double averageRating,
    required List<String> frequentMeals,
    required Map<String, int> vendorDistribution,
  }) = _SubscriptionSummary;

  factory SubscriptionSummary.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionSummaryFromJson(json);
}
