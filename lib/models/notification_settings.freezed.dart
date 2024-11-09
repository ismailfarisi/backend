// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NotificationSettings _$NotificationSettingsFromJson(Map<String, dynamic> json) {
  return _NotificationSettings.fromJson(json);
}

/// @nodoc
mixin _$NotificationSettings {
  bool get orderUpdates => throw _privateConstructorUsedError;
  bool get specialOffers => throw _privateConstructorUsedError;
  bool get menuUpdates => throw _privateConstructorUsedError;
  bool get deliveryReminders => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationSettingsCopyWith<NotificationSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationSettingsCopyWith<$Res> {
  factory $NotificationSettingsCopyWith(NotificationSettings value,
          $Res Function(NotificationSettings) then) =
      _$NotificationSettingsCopyWithImpl<$Res, NotificationSettings>;
  @useResult
  $Res call(
      {bool orderUpdates,
      bool specialOffers,
      bool menuUpdates,
      bool deliveryReminders});
}

/// @nodoc
class _$NotificationSettingsCopyWithImpl<$Res,
        $Val extends NotificationSettings>
    implements $NotificationSettingsCopyWith<$Res> {
  _$NotificationSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderUpdates = null,
    Object? specialOffers = null,
    Object? menuUpdates = null,
    Object? deliveryReminders = null,
  }) {
    return _then(_value.copyWith(
      orderUpdates: null == orderUpdates
          ? _value.orderUpdates
          : orderUpdates // ignore: cast_nullable_to_non_nullable
              as bool,
      specialOffers: null == specialOffers
          ? _value.specialOffers
          : specialOffers // ignore: cast_nullable_to_non_nullable
              as bool,
      menuUpdates: null == menuUpdates
          ? _value.menuUpdates
          : menuUpdates // ignore: cast_nullable_to_non_nullable
              as bool,
      deliveryReminders: null == deliveryReminders
          ? _value.deliveryReminders
          : deliveryReminders // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationSettingsImplCopyWith<$Res>
    implements $NotificationSettingsCopyWith<$Res> {
  factory _$$NotificationSettingsImplCopyWith(_$NotificationSettingsImpl value,
          $Res Function(_$NotificationSettingsImpl) then) =
      __$$NotificationSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool orderUpdates,
      bool specialOffers,
      bool menuUpdates,
      bool deliveryReminders});
}

/// @nodoc
class __$$NotificationSettingsImplCopyWithImpl<$Res>
    extends _$NotificationSettingsCopyWithImpl<$Res, _$NotificationSettingsImpl>
    implements _$$NotificationSettingsImplCopyWith<$Res> {
  __$$NotificationSettingsImplCopyWithImpl(_$NotificationSettingsImpl _value,
      $Res Function(_$NotificationSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderUpdates = null,
    Object? specialOffers = null,
    Object? menuUpdates = null,
    Object? deliveryReminders = null,
  }) {
    return _then(_$NotificationSettingsImpl(
      orderUpdates: null == orderUpdates
          ? _value.orderUpdates
          : orderUpdates // ignore: cast_nullable_to_non_nullable
              as bool,
      specialOffers: null == specialOffers
          ? _value.specialOffers
          : specialOffers // ignore: cast_nullable_to_non_nullable
              as bool,
      menuUpdates: null == menuUpdates
          ? _value.menuUpdates
          : menuUpdates // ignore: cast_nullable_to_non_nullable
              as bool,
      deliveryReminders: null == deliveryReminders
          ? _value.deliveryReminders
          : deliveryReminders // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationSettingsImpl implements _NotificationSettings {
  const _$NotificationSettingsImpl(
      {this.orderUpdates = true,
      this.specialOffers = true,
      this.menuUpdates = true,
      this.deliveryReminders = true});

  factory _$NotificationSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationSettingsImplFromJson(json);

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

  @override
  String toString() {
    return 'NotificationSettings(orderUpdates: $orderUpdates, specialOffers: $specialOffers, menuUpdates: $menuUpdates, deliveryReminders: $deliveryReminders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationSettingsImpl &&
            (identical(other.orderUpdates, orderUpdates) ||
                other.orderUpdates == orderUpdates) &&
            (identical(other.specialOffers, specialOffers) ||
                other.specialOffers == specialOffers) &&
            (identical(other.menuUpdates, menuUpdates) ||
                other.menuUpdates == menuUpdates) &&
            (identical(other.deliveryReminders, deliveryReminders) ||
                other.deliveryReminders == deliveryReminders));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, orderUpdates, specialOffers, menuUpdates, deliveryReminders);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationSettingsImplCopyWith<_$NotificationSettingsImpl>
      get copyWith =>
          __$$NotificationSettingsImplCopyWithImpl<_$NotificationSettingsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationSettingsImplToJson(
      this,
    );
  }
}

abstract class _NotificationSettings implements NotificationSettings {
  const factory _NotificationSettings(
      {final bool orderUpdates,
      final bool specialOffers,
      final bool menuUpdates,
      final bool deliveryReminders}) = _$NotificationSettingsImpl;

  factory _NotificationSettings.fromJson(Map<String, dynamic> json) =
      _$NotificationSettingsImpl.fromJson;

  @override
  bool get orderUpdates;
  @override
  bool get specialOffers;
  @override
  bool get menuUpdates;
  @override
  bool get deliveryReminders;
  @override
  @JsonKey(ignore: true)
  _$$NotificationSettingsImplCopyWith<_$NotificationSettingsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
