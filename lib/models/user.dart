import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meal_app/models/address.dart';

import 'notification_settings.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String? email,
    @Default('') String phone,
    String? whatsapp,
    @JsonKey(name: "full_name") @Default('') String fullName,
    String? city,
    String? photo,
    @Default([]) List<String> dietaryPreferences,
    @Default([]) List<String> allergies,
    @Default(false) bool isVegetarian,
    DeliveryAddress? defaultAddress,
    @Default(NotificationSettings()) NotificationSettings notificationSettings,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
