// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationSettingsImpl _$$NotificationSettingsImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationSettingsImpl(
      orderUpdates: json['orderUpdates'] as bool? ?? true,
      specialOffers: json['specialOffers'] as bool? ?? true,
      menuUpdates: json['menuUpdates'] as bool? ?? true,
      deliveryReminders: json['deliveryReminders'] as bool? ?? true,
    );

Map<String, dynamic> _$$NotificationSettingsImplToJson(
        _$NotificationSettingsImpl instance) =>
    <String, dynamic>{
      'orderUpdates': instance.orderUpdates,
      'specialOffers': instance.specialOffers,
      'menuUpdates': instance.menuUpdates,
      'deliveryReminders': instance.deliveryReminders,
    };
