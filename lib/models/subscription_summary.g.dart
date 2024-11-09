// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubscriptionSummaryImpl _$$SubscriptionSummaryImplFromJson(
        Map<String, dynamic> json) =>
    _$SubscriptionSummaryImpl(
      totalOrders: (json['totalOrders'] as num).toInt(),
      activeSubscriptions: (json['activeSubscriptions'] as num).toInt(),
      completedSubscriptions: (json['completedSubscriptions'] as num).toInt(),
      totalSpent: (json['totalSpent'] as num).toDouble(),
      missedDeliveries: (json['missedDeliveries'] as num).toInt(),
      mealTypeDistribution:
          (json['mealTypeDistribution'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry($enumDecode(_$MealTypeEnumMap, k), (e as num).toInt()),
      ),
      averageRating: (json['averageRating'] as num).toDouble(),
      frequentMeals: (json['frequentMeals'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      vendorDistribution:
          Map<String, int>.from(json['vendorDistribution'] as Map),
    );

Map<String, dynamic> _$$SubscriptionSummaryImplToJson(
        _$SubscriptionSummaryImpl instance) =>
    <String, dynamic>{
      'totalOrders': instance.totalOrders,
      'activeSubscriptions': instance.activeSubscriptions,
      'completedSubscriptions': instance.completedSubscriptions,
      'totalSpent': instance.totalSpent,
      'missedDeliveries': instance.missedDeliveries,
      'mealTypeDistribution': instance.mealTypeDistribution
          .map((k, e) => MapEntry(_$MealTypeEnumMap[k]!, e)),
      'averageRating': instance.averageRating,
      'frequentMeals': instance.frequentMeals,
      'vendorDistribution': instance.vendorDistribution,
    };

const _$MealTypeEnumMap = {
  MealType.breakfast: 'breakfast',
  MealType.lunch: 'lunch',
  MealType.dinner: 'dinner',
};
