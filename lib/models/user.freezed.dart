// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String get id => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String? get whatsapp => throw _privateConstructorUsedError;
  @JsonKey(name: "full_name")
  String get fullName => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  List<String> get dietaryPreferences => throw _privateConstructorUsedError;
  List<String> get allergies => throw _privateConstructorUsedError;
  bool get isVegetarian => throw _privateConstructorUsedError;
  DeliveryAddress? get defaultAddress => throw _privateConstructorUsedError;
  NotificationSettings get notificationSettings =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String id,
      String? email,
      String phone,
      String? whatsapp,
      @JsonKey(name: "full_name") String fullName,
      String? city,
      String? photo,
      List<String> dietaryPreferences,
      List<String> allergies,
      bool isVegetarian,
      DeliveryAddress? defaultAddress,
      NotificationSettings notificationSettings});

  $DeliveryAddressCopyWith<$Res>? get defaultAddress;
  $NotificationSettingsCopyWith<$Res> get notificationSettings;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = freezed,
    Object? phone = null,
    Object? whatsapp = freezed,
    Object? fullName = null,
    Object? city = freezed,
    Object? photo = freezed,
    Object? dietaryPreferences = null,
    Object? allergies = null,
    Object? isVegetarian = null,
    Object? defaultAddress = freezed,
    Object? notificationSettings = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      whatsapp: freezed == whatsapp
          ? _value.whatsapp
          : whatsapp // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      dietaryPreferences: null == dietaryPreferences
          ? _value.dietaryPreferences
          : dietaryPreferences // ignore: cast_nullable_to_non_nullable
              as List<String>,
      allergies: null == allergies
          ? _value.allergies
          : allergies // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isVegetarian: null == isVegetarian
          ? _value.isVegetarian
          : isVegetarian // ignore: cast_nullable_to_non_nullable
              as bool,
      defaultAddress: freezed == defaultAddress
          ? _value.defaultAddress
          : defaultAddress // ignore: cast_nullable_to_non_nullable
              as DeliveryAddress?,
      notificationSettings: null == notificationSettings
          ? _value.notificationSettings
          : notificationSettings // ignore: cast_nullable_to_non_nullable
              as NotificationSettings,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DeliveryAddressCopyWith<$Res>? get defaultAddress {
    if (_value.defaultAddress == null) {
      return null;
    }

    return $DeliveryAddressCopyWith<$Res>(_value.defaultAddress!, (value) {
      return _then(_value.copyWith(defaultAddress: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NotificationSettingsCopyWith<$Res> get notificationSettings {
    return $NotificationSettingsCopyWith<$Res>(_value.notificationSettings,
        (value) {
      return _then(_value.copyWith(notificationSettings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? email,
      String phone,
      String? whatsapp,
      @JsonKey(name: "full_name") String fullName,
      String? city,
      String? photo,
      List<String> dietaryPreferences,
      List<String> allergies,
      bool isVegetarian,
      DeliveryAddress? defaultAddress,
      NotificationSettings notificationSettings});

  @override
  $DeliveryAddressCopyWith<$Res>? get defaultAddress;
  @override
  $NotificationSettingsCopyWith<$Res> get notificationSettings;
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = freezed,
    Object? phone = null,
    Object? whatsapp = freezed,
    Object? fullName = null,
    Object? city = freezed,
    Object? photo = freezed,
    Object? dietaryPreferences = null,
    Object? allergies = null,
    Object? isVegetarian = null,
    Object? defaultAddress = freezed,
    Object? notificationSettings = null,
  }) {
    return _then(_$UserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      whatsapp: freezed == whatsapp
          ? _value.whatsapp
          : whatsapp // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      dietaryPreferences: null == dietaryPreferences
          ? _value._dietaryPreferences
          : dietaryPreferences // ignore: cast_nullable_to_non_nullable
              as List<String>,
      allergies: null == allergies
          ? _value._allergies
          : allergies // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isVegetarian: null == isVegetarian
          ? _value.isVegetarian
          : isVegetarian // ignore: cast_nullable_to_non_nullable
              as bool,
      defaultAddress: freezed == defaultAddress
          ? _value.defaultAddress
          : defaultAddress // ignore: cast_nullable_to_non_nullable
              as DeliveryAddress?,
      notificationSettings: null == notificationSettings
          ? _value.notificationSettings
          : notificationSettings // ignore: cast_nullable_to_non_nullable
              as NotificationSettings,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      {required this.id,
      required this.email,
      this.phone = '',
      this.whatsapp,
      @JsonKey(name: "full_name") this.fullName = '',
      this.city,
      this.photo,
      final List<String> dietaryPreferences = const [],
      final List<String> allergies = const [],
      this.isVegetarian = false,
      this.defaultAddress,
      this.notificationSettings = const NotificationSettings()})
      : _dietaryPreferences = dietaryPreferences,
        _allergies = allergies;

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final String id;
  @override
  final String? email;
  @override
  @JsonKey()
  final String phone;
  @override
  final String? whatsapp;
  @override
  @JsonKey(name: "full_name")
  final String fullName;
  @override
  final String? city;
  @override
  final String? photo;
  final List<String> _dietaryPreferences;
  @override
  @JsonKey()
  List<String> get dietaryPreferences {
    if (_dietaryPreferences is EqualUnmodifiableListView)
      return _dietaryPreferences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dietaryPreferences);
  }

  final List<String> _allergies;
  @override
  @JsonKey()
  List<String> get allergies {
    if (_allergies is EqualUnmodifiableListView) return _allergies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allergies);
  }

  @override
  @JsonKey()
  final bool isVegetarian;
  @override
  final DeliveryAddress? defaultAddress;
  @override
  @JsonKey()
  final NotificationSettings notificationSettings;

  @override
  String toString() {
    return 'User(id: $id, email: $email, phone: $phone, whatsapp: $whatsapp, fullName: $fullName, city: $city, photo: $photo, dietaryPreferences: $dietaryPreferences, allergies: $allergies, isVegetarian: $isVegetarian, defaultAddress: $defaultAddress, notificationSettings: $notificationSettings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.whatsapp, whatsapp) ||
                other.whatsapp == whatsapp) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            const DeepCollectionEquality()
                .equals(other._dietaryPreferences, _dietaryPreferences) &&
            const DeepCollectionEquality()
                .equals(other._allergies, _allergies) &&
            (identical(other.isVegetarian, isVegetarian) ||
                other.isVegetarian == isVegetarian) &&
            (identical(other.defaultAddress, defaultAddress) ||
                other.defaultAddress == defaultAddress) &&
            (identical(other.notificationSettings, notificationSettings) ||
                other.notificationSettings == notificationSettings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      email,
      phone,
      whatsapp,
      fullName,
      city,
      photo,
      const DeepCollectionEquality().hash(_dietaryPreferences),
      const DeepCollectionEquality().hash(_allergies),
      isVegetarian,
      defaultAddress,
      notificationSettings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {required final String id,
      required final String? email,
      final String phone,
      final String? whatsapp,
      @JsonKey(name: "full_name") final String fullName,
      final String? city,
      final String? photo,
      final List<String> dietaryPreferences,
      final List<String> allergies,
      final bool isVegetarian,
      final DeliveryAddress? defaultAddress,
      final NotificationSettings notificationSettings}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  String get id;
  @override
  String? get email;
  @override
  String get phone;
  @override
  String? get whatsapp;
  @override
  @JsonKey(name: "full_name")
  String get fullName;
  @override
  String? get city;
  @override
  String? get photo;
  @override
  List<String> get dietaryPreferences;
  @override
  List<String> get allergies;
  @override
  bool get isVegetarian;
  @override
  DeliveryAddress? get defaultAddress;
  @override
  NotificationSettings get notificationSettings;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
