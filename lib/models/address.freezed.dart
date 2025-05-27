// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeliveryAddress {
  String get id;
  String get fullAddress;
  String get street;
  String? get apartment;
  String get emirate;
  LatLng get coordinates;
  bool get isDefault;
  AddressType get type;

  /// Create a copy of DeliveryAddress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DeliveryAddressCopyWith<DeliveryAddress> get copyWith =>
      _$DeliveryAddressCopyWithImpl<DeliveryAddress>(
          this as DeliveryAddress, _$identity);

  /// Serializes this DeliveryAddress to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeliveryAddress &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullAddress, fullAddress) ||
                other.fullAddress == fullAddress) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.apartment, apartment) ||
                other.apartment == apartment) &&
            (identical(other.emirate, emirate) || other.emirate == emirate) &&
            (identical(other.coordinates, coordinates) ||
                other.coordinates == coordinates) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, fullAddress, street,
      apartment, emirate, coordinates, isDefault, type);

  @override
  String toString() {
    return 'DeliveryAddress(id: $id, fullAddress: $fullAddress, street: $street, apartment: $apartment, emirate: $emirate, coordinates: $coordinates, isDefault: $isDefault, type: $type)';
  }
}

/// @nodoc
abstract mixin class $DeliveryAddressCopyWith<$Res> {
  factory $DeliveryAddressCopyWith(
          DeliveryAddress value, $Res Function(DeliveryAddress) _then) =
      _$DeliveryAddressCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String fullAddress,
      String street,
      String? apartment,
      String emirate,
      LatLng coordinates,
      bool isDefault,
      AddressType type});

  $LatLngCopyWith<$Res> get coordinates;
}

/// @nodoc
class _$DeliveryAddressCopyWithImpl<$Res>
    implements $DeliveryAddressCopyWith<$Res> {
  _$DeliveryAddressCopyWithImpl(this._self, this._then);

  final DeliveryAddress _self;
  final $Res Function(DeliveryAddress) _then;

  /// Create a copy of DeliveryAddress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullAddress = null,
    Object? street = null,
    Object? apartment = freezed,
    Object? emirate = null,
    Object? coordinates = null,
    Object? isDefault = null,
    Object? type = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fullAddress: null == fullAddress
          ? _self.fullAddress
          : fullAddress // ignore: cast_nullable_to_non_nullable
              as String,
      street: null == street
          ? _self.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      apartment: freezed == apartment
          ? _self.apartment
          : apartment // ignore: cast_nullable_to_non_nullable
              as String?,
      emirate: null == emirate
          ? _self.emirate
          : emirate // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: null == coordinates
          ? _self.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as LatLng,
      isDefault: null == isDefault
          ? _self.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as AddressType,
    ));
  }

  /// Create a copy of DeliveryAddress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LatLngCopyWith<$Res> get coordinates {
    return $LatLngCopyWith<$Res>(_self.coordinates, (value) {
      return _then(_self.copyWith(coordinates: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _DeliveryAddress implements DeliveryAddress {
  const _DeliveryAddress(
      {required this.id,
      required this.fullAddress,
      required this.street,
      this.apartment,
      required this.emirate,
      required this.coordinates,
      this.isDefault = false,
      this.type = AddressType.home});
  factory _DeliveryAddress.fromJson(Map<String, dynamic> json) =>
      _$DeliveryAddressFromJson(json);

  @override
  final String id;
  @override
  final String fullAddress;
  @override
  final String street;
  @override
  final String? apartment;
  @override
  final String emirate;
  @override
  final LatLng coordinates;
  @override
  @JsonKey()
  final bool isDefault;
  @override
  @JsonKey()
  final AddressType type;

  /// Create a copy of DeliveryAddress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DeliveryAddressCopyWith<_DeliveryAddress> get copyWith =>
      __$DeliveryAddressCopyWithImpl<_DeliveryAddress>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DeliveryAddressToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeliveryAddress &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullAddress, fullAddress) ||
                other.fullAddress == fullAddress) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.apartment, apartment) ||
                other.apartment == apartment) &&
            (identical(other.emirate, emirate) || other.emirate == emirate) &&
            (identical(other.coordinates, coordinates) ||
                other.coordinates == coordinates) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, fullAddress, street,
      apartment, emirate, coordinates, isDefault, type);

  @override
  String toString() {
    return 'DeliveryAddress(id: $id, fullAddress: $fullAddress, street: $street, apartment: $apartment, emirate: $emirate, coordinates: $coordinates, isDefault: $isDefault, type: $type)';
  }
}

/// @nodoc
abstract mixin class _$DeliveryAddressCopyWith<$Res>
    implements $DeliveryAddressCopyWith<$Res> {
  factory _$DeliveryAddressCopyWith(
          _DeliveryAddress value, $Res Function(_DeliveryAddress) _then) =
      __$DeliveryAddressCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String fullAddress,
      String street,
      String? apartment,
      String emirate,
      LatLng coordinates,
      bool isDefault,
      AddressType type});

  @override
  $LatLngCopyWith<$Res> get coordinates;
}

/// @nodoc
class __$DeliveryAddressCopyWithImpl<$Res>
    implements _$DeliveryAddressCopyWith<$Res> {
  __$DeliveryAddressCopyWithImpl(this._self, this._then);

  final _DeliveryAddress _self;
  final $Res Function(_DeliveryAddress) _then;

  /// Create a copy of DeliveryAddress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? fullAddress = null,
    Object? street = null,
    Object? apartment = freezed,
    Object? emirate = null,
    Object? coordinates = null,
    Object? isDefault = null,
    Object? type = null,
  }) {
    return _then(_DeliveryAddress(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fullAddress: null == fullAddress
          ? _self.fullAddress
          : fullAddress // ignore: cast_nullable_to_non_nullable
              as String,
      street: null == street
          ? _self.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      apartment: freezed == apartment
          ? _self.apartment
          : apartment // ignore: cast_nullable_to_non_nullable
              as String?,
      emirate: null == emirate
          ? _self.emirate
          : emirate // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: null == coordinates
          ? _self.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as LatLng,
      isDefault: null == isDefault
          ? _self.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as AddressType,
    ));
  }

  /// Create a copy of DeliveryAddress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LatLngCopyWith<$Res> get coordinates {
    return $LatLngCopyWith<$Res>(_self.coordinates, (value) {
      return _then(_self.copyWith(coordinates: value));
    });
  }
}

/// @nodoc
mixin _$LatLng {
  double get latitude;
  double get longitude;

  /// Create a copy of LatLng
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LatLngCopyWith<LatLng> get copyWith =>
      _$LatLngCopyWithImpl<LatLng>(this as LatLng, _$identity);

  /// Serializes this LatLng to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LatLng &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  @override
  String toString() {
    return 'LatLng(latitude: $latitude, longitude: $longitude)';
  }
}

/// @nodoc
abstract mixin class $LatLngCopyWith<$Res> {
  factory $LatLngCopyWith(LatLng value, $Res Function(LatLng) _then) =
      _$LatLngCopyWithImpl;
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class _$LatLngCopyWithImpl<$Res> implements $LatLngCopyWith<$Res> {
  _$LatLngCopyWithImpl(this._self, this._then);

  final LatLng _self;
  final $Res Function(LatLng) _then;

  /// Create a copy of LatLng
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_self.copyWith(
      latitude: null == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _LatLng implements LatLng {
  const _LatLng({required this.latitude, required this.longitude});
  factory _LatLng.fromJson(Map<String, dynamic> json) => _$LatLngFromJson(json);

  @override
  final double latitude;
  @override
  final double longitude;

  /// Create a copy of LatLng
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LatLngCopyWith<_LatLng> get copyWith =>
      __$LatLngCopyWithImpl<_LatLng>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LatLngToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LatLng &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  @override
  String toString() {
    return 'LatLng(latitude: $latitude, longitude: $longitude)';
  }
}

/// @nodoc
abstract mixin class _$LatLngCopyWith<$Res> implements $LatLngCopyWith<$Res> {
  factory _$LatLngCopyWith(_LatLng value, $Res Function(_LatLng) _then) =
      __$LatLngCopyWithImpl;
  @override
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class __$LatLngCopyWithImpl<$Res> implements _$LatLngCopyWith<$Res> {
  __$LatLngCopyWithImpl(this._self, this._then);

  final _LatLng _self;
  final $Res Function(_LatLng) _then;

  /// Create a copy of LatLng
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_LatLng(
      latitude: null == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

// dart format on
