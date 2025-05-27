// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationSettings _$NotificationSettingsFromJson(
        Map<String, dynamic> json) =>
    _NotificationSettings(
      orderUpdates: json['orderUpdates'] as bool? ?? true,
      specialOffers: json['specialOffers'] as bool? ?? true,
      menuUpdates: json['menuUpdates'] as bool? ?? true,
      deliveryReminders: json['deliveryReminders'] as bool? ?? true,
    );

Map<String, dynamic> _$NotificationSettingsToJson(
        _NotificationSettings instance) =>
    <String, dynamic>{
      'orderUpdates': instance.orderUpdates,
      'specialOffers': instance.specialOffers,
      'menuUpdates': instance.menuUpdates,
      'deliveryReminders': instance.deliveryReminders,
    };
