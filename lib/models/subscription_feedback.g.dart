// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_feedback.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubscriptionFeedbackImpl _$$SubscriptionFeedbackImplFromJson(
        Map<String, dynamic> json) =>
    _$SubscriptionFeedbackImpl(
      id: json['id'] as String,
      orderId: json['orderId'] as String,
      date: DateTime.parse(json['date'] as String),
      rating: (json['rating'] as num).toInt(),
      comment: json['comment'] as String?,
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      type: $enumDecode(_$FeedbackTypeEnumMap, json['type']),
      vendorResponse: json['vendorResponse'] as String?,
      vendorResponseDate: json['vendorResponseDate'] == null
          ? null
          : DateTime.parse(json['vendorResponseDate'] as String),
    );

Map<String, dynamic> _$$SubscriptionFeedbackImplToJson(
        _$SubscriptionFeedbackImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'orderId': instance.orderId,
      'date': instance.date.toIso8601String(),
      'rating': instance.rating,
      'comment': instance.comment,
      'tags': instance.tags,
      'images': instance.images,
      'type': _$FeedbackTypeEnumMap[instance.type]!,
      'vendorResponse': instance.vendorResponse,
      'vendorResponseDate': instance.vendorResponseDate?.toIso8601String(),
    };

const _$FeedbackTypeEnumMap = {
  FeedbackType.meal: 'meal',
  FeedbackType.delivery: 'delivery',
  FeedbackType.overall: 'overall',
};
