// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificationSettings {
  bool get orderUpdates;
  bool get specialOffers;
  bool get menuUpdates;
  bool get deliveryReminders;

  /// Create a copy of NotificationSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NotificationSettingsCopyWith<NotificationSettings> get copyWith =>
      _$NotificationSettingsCopyWithImpl<NotificationSettings>(
          this as NotificationSettings, _$identity);

  /// Serializes this NotificationSettings to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotificationSettings &&
            (identical(other.orderUpdates, orderUpdates) ||
                other.orderUpdates == orderUpdates) &&
            (identical(other.specialOffers, specialOffers) ||
                other.specialOffers == specialOffers) &&
            (identical(other.menuUpdates, menuUpdates) ||
                other.menuUpdates == menuUpdates) &&
            (identical(other.deliveryReminders, deliveryReminders) ||
                other.deliveryReminders == deliveryReminders));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, orderUpdates, specialOffers, menuUpdates, deliveryReminders);

  @override
  String toString() {
    return 'NotificationSettings(orderUpdates: $orderUpdates, specialOffers: $specialOffers, menuUpdates: $menuUpdates, deliveryReminders: $deliveryReminders)';
  }
}

/// @nodoc
abstract mixin class $NotificationSettingsCopyWith<$Res> {
  factory $NotificationSettingsCopyWith(NotificationSettings value,
          $Res Function(NotificationSettings) _then) =
      _$NotificationSettingsCopyWithImpl;
  @useResult
  $Res call(
      {bool orderUpdates,
      bool specialOffers,
      bool menuUpdates,
      bool deliveryReminders});
}

/// @nodoc
class _$NotificationSettingsCopyWithImpl<$Res>
    implements $NotificationSettingsCopyWith<$Res> {
  _$NotificationSettingsCopyWithImpl(this._self, this._then);

  final NotificationSettings _self;
  final $Res Function(NotificationSettings) _then;

  /// Create a copy of NotificationSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderUpdates = null,
    Object? specialOffers = null,
    Object? menuUpdates = null,
    Object? deliveryReminders = null,
  }) {
    return _then(_self.copyWith(
      orderUpdates: null == orderUpdates
          ? _self.orderUpdates
          : orderUpdates // ignore: cast_nullable_to_non_nullable
              as bool,
      specialOffers: null == specialOffers
          ? _self.specialOffers
          : specialOffers // ignore: cast_nullable_to_non_nullable
              as bool,
      menuUpdates: null == menuUpdates
          ? _self.menuUpdates
          : menuUpdates // ignore: cast_nullable_to_non_nullable
              as bool,
      deliveryReminders: null == deliveryReminders
          ? _self.deliveryReminders
          : deliveryReminders // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _NotificationSettings implements NotificationSettings {
  const _NotificationSettings(
      {this.orderUpdates = true,
      this.specialOffers = true,
      this.menuUpdates = true,
      this.deliveryReminders = true});
  factory _NotificationSettings.fromJson(Map<String, dynamic> json) =>
      _$NotificationSettingsFromJson(json);

  @override
  @JsonKey()
  final bool orderUpdates;
  @override
  @JsonKey()
  final bool specialOffers;
  @override
  @JsonKey()
  final bool menuUpdates;
  @override
  @JsonKey()
  final bool deliveryReminders;

  /// Create a copy of NotificationSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NotificationSettingsCopyWith<_NotificationSettings> get copyWith =>
      __$NotificationSettingsCopyWithImpl<_NotificationSettings>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NotificationSettingsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotificationSettings &&
            (identical(other.orderUpdates, orderUpdates) ||
                other.orderUpdates == orderUpdates) &&
            (identical(other.specialOffers, specialOffers) ||
                other.specialOffers == specialOffers) &&
            (identical(other.menuUpdates, menuUpdates) ||
                other.menuUpdates == menuUpdates) &&
            (identical(other.deliveryReminders, deliveryReminders) ||
                other.deliveryReminders == deliveryReminders));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, orderUpdates, specialOffers, menuUpdates, deliveryReminders);

  @override
  String toString() {
    return 'NotificationSettings(orderUpdates: $orderUpdates, specialOffers: $specialOffers, menuUpdates: $menuUpdates, deliveryReminders: $deliveryReminders)';
  }
}

/// @nodoc
abstract mixin class _$NotificationSettingsCopyWith<$Res>
    implements $NotificationSettingsCopyWith<$Res> {
  factory _$NotificationSettingsCopyWith(_NotificationSettings value,
          $Res Function(_NotificationSettings) _then) =
      __$NotificationSettingsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool orderUpdates,
      bool specialOffers,
      bool menuUpdates,
      bool deliveryReminders});
}

/// @nodoc
class __$NotificationSettingsCopyWithImpl<$Res>
    implements _$NotificationSettingsCopyWith<$Res> {
  __$NotificationSettingsCopyWithImpl(this._self, this._then);

  final _NotificationSettings _self;
  final $Res Function(_NotificationSettings) _then;

  /// Create a copy of NotificationSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? orderUpdates = null,
    Object? specialOffers = null,
    Object? menuUpdates = null,
    Object? deliveryReminders = null,
  }) {
    return _then(_NotificationSettings(
      orderUpdates: null == orderUpdates
          ? _self.orderUpdates
          : orderUpdates // ignore: cast_nullable_to_non_nullable
              as bool,
      specialOffers: null == specialOffers
          ? _self.specialOffers
          : specialOffers // ignore: cast_nullable_to_non_nullable
              as bool,
      menuUpdates: null == menuUpdates
          ? _self.menuUpdates
          : menuUpdates // ignore: cast_nullable_to_non_nullable
              as bool,
      deliveryReminders: null == deliveryReminders
          ? _self.deliveryReminders
          : deliveryReminders // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
