// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_change.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubscriptionChangeImpl _$$SubscriptionChangeImplFromJson(
        Map<String, dynamic> json) =>
    _$SubscriptionChangeImpl(
      id: json['id'] as String,
      changeDate: DateTime.parse(json['changeDate'] as String),
      type: $enumDecode(_$ChangeTypeEnumMap, json['type']),
      description: json['description'] as String,
      oldValue: json['oldValue'] as Map<String, dynamic>?,
      newValue: json['newValue'] as Map<String, dynamic>?,
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$$SubscriptionChangeImplToJson(
        _$SubscriptionChangeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'changeDate': instance.changeDate.toIso8601String(),
      'type': _$ChangeTypeEnumMap[instance.type]!,
      'description': instance.description,
      'oldValue': instance.oldValue,
      'newValue': instance.newValue,
      'reason': instance.reason,
    };

const _$ChangeTypeEnumMap = {
  ChangeType.mealPlanChange: 'mealPlanChange',
  ChangeType.addressChange: 'addressChange',
  ChangeType.pause: 'pause',
  ChangeType.resume: 'resume',
  ChangeType.cancellation: 'cancellation',
  ChangeType.renewal: 'renewal',
};
