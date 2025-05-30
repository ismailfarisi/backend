// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
      id: json['id'] as String,
      email: json['email'] as String?,
      phone: json['phone'] as String? ?? '',
      whatsapp: json['whatsapp'] as String?,
      fullName: json['fullName'] as String? ?? '',
      city: json['city'] as String?,
      photo: json['photo'] as String?,
      dietaryPreferences: (json['dietaryPreferences'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      allergies: (json['allergies'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      isVegetarian: json['isVegetarian'] as bool? ?? false,
      defaultAddress: json['defaultAddress'] == null
          ? null
          : DeliveryAddress.fromJson(
              json['defaultAddress'] as Map<String, dynamic>),
      notificationSettings: json['notificationSettings'] == null
          ? const NotificationSettings()
          : NotificationSettings.fromJson(
              json['notificationSettings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'phone': instance.phone,
      'whatsapp': instance.whatsapp,
      'fullName': instance.fullName,
      'city': instance.city,
      'photo': instance.photo,
      'dietaryPreferences': instance.dietaryPreferences,
      'allergies': instance.allergies,
      'isVegetarian': instance.isVegetarian,
      'defaultAddress': instance.defaultAddress,
      'notificationSettings': instance.notificationSettings,
    };
