// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$User {
  String get id;
  String? get email;
  String get phone;
  String? get whatsapp;
  String get fullName;
  String? get city;
  String? get photo;
  List<String> get dietaryPreferences;
  List<String> get allergies;
  bool get isVegetarian;
  DeliveryAddress? get defaultAddress;
  NotificationSettings get notificationSettings;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserCopyWith<User> get copyWith =>
      _$UserCopyWithImpl<User>(this as User, _$identity);

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is User &&
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
                .equals(other.dietaryPreferences, dietaryPreferences) &&
            const DeepCollectionEquality().equals(other.allergies, allergies) &&
            (identical(other.isVegetarian, isVegetarian) ||
                other.isVegetarian == isVegetarian) &&
            (identical(other.defaultAddress, defaultAddress) ||
                other.defaultAddress == defaultAddress) &&
            (identical(other.notificationSettings, notificationSettings) ||
                other.notificationSettings == notificationSettings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
      const DeepCollectionEquality().hash(dietaryPreferences),
      const DeepCollectionEquality().hash(allergies),
      isVegetarian,
      defaultAddress,
      notificationSettings);

  @override
  String toString() {
    return 'User(id: $id, email: $email, phone: $phone, whatsapp: $whatsapp, fullName: $fullName, city: $city, photo: $photo, dietaryPreferences: $dietaryPreferences, allergies: $allergies, isVegetarian: $isVegetarian, defaultAddress: $defaultAddress, notificationSettings: $notificationSettings)';
  }
}

/// @nodoc
abstract mixin class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) _then) =
      _$UserCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String? email,
      String phone,
      String? whatsapp,
      String fullName,
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
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._self, this._then);

  final User _self;
  final $Res Function(User) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      whatsapp: freezed == whatsapp
          ? _self.whatsapp
          : whatsapp // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: null == fullName
          ? _self.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      city: freezed == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _self.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      dietaryPreferences: null == dietaryPreferences
          ? _self.dietaryPreferences
          : dietaryPreferences // ignore: cast_nullable_to_non_nullable
              as List<String>,
      allergies: null == allergies
          ? _self.allergies
          : allergies // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isVegetarian: null == isVegetarian
          ? _self.isVegetarian
          : isVegetarian // ignore: cast_nullable_to_non_nullable
              as bool,
      defaultAddress: freezed == defaultAddress
          ? _self.defaultAddress
          : defaultAddress // ignore: cast_nullable_to_non_nullable
              as DeliveryAddress?,
      notificationSettings: null == notificationSettings
          ? _self.notificationSettings
          : notificationSettings // ignore: cast_nullable_to_non_nullable
              as NotificationSettings,
    ));
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeliveryAddressCopyWith<$Res>? get defaultAddress {
    if (_self.defaultAddress == null) {
      return null;
    }

    return $DeliveryAddressCopyWith<$Res>(_self.defaultAddress!, (value) {
      return _then(_self.copyWith(defaultAddress: value));
    });
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NotificationSettingsCopyWith<$Res> get notificationSettings {
    return $NotificationSettingsCopyWith<$Res>(_self.notificationSettings,
        (value) {
      return _then(_self.copyWith(notificationSettings: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _User implements User {
  const _User(
      {required this.id,
      required this.email,
      this.phone = '',
      this.whatsapp,
      this.fullName = '',
      this.city,
      this.photo,
      final List<String> dietaryPreferences = const [],
      final List<String> allergies = const [],
      this.isVegetarian = false,
      this.defaultAddress,
      this.notificationSettings = const NotificationSettings()})
      : _dietaryPreferences = dietaryPreferences,
        _allergies = allergies;
  factory _User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

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
  @JsonKey()
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

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _User &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'User(id: $id, email: $email, phone: $phone, whatsapp: $whatsapp, fullName: $fullName, city: $city, photo: $photo, dietaryPreferences: $dietaryPreferences, allergies: $allergies, isVegetarian: $isVegetarian, defaultAddress: $defaultAddress, notificationSettings: $notificationSettings)';
  }
}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) =
      __$UserCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String? email,
      String phone,
      String? whatsapp,
      String fullName,
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
class __$UserCopyWithImpl<$Res> implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(this._self, this._then);

  final _User _self;
  final $Res Function(_User) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_User(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      whatsapp: freezed == whatsapp
          ? _self.whatsapp
          : whatsapp // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: null == fullName
          ? _self.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      city: freezed == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _self.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      dietaryPreferences: null == dietaryPreferences
          ? _self._dietaryPreferences
          : dietaryPreferences // ignore: cast_nullable_to_non_nullable
              as List<String>,
      allergies: null == allergies
          ? _self._allergies
          : allergies // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isVegetarian: null == isVegetarian
          ? _self.isVegetarian
          : isVegetarian // ignore: cast_nullable_to_non_nullable
              as bool,
      defaultAddress: freezed == defaultAddress
          ? _self.defaultAddress
          : defaultAddress // ignore: cast_nullable_to_non_nullable
              as DeliveryAddress?,
      notificationSettings: null == notificationSettings
          ? _self.notificationSettings
          : notificationSettings // ignore: cast_nullable_to_non_nullable
              as NotificationSettings,
    ));
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeliveryAddressCopyWith<$Res>? get defaultAddress {
    if (_self.defaultAddress == null) {
      return null;
    }

    return $DeliveryAddressCopyWith<$Res>(_self.defaultAddress!, (value) {
      return _then(_self.copyWith(defaultAddress: value));
    });
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NotificationSettingsCopyWith<$Res> get notificationSettings {
    return $NotificationSettingsCopyWith<$Res>(_self.notificationSettings,
        (value) {
      return _then(_self.copyWith(notificationSettings: value));
    });
  }
}

// dart format on
