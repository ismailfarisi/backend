// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vendor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Vendor _$VendorFromJson(Map<String, dynamic> json) {
  return _Vendor.fromJson(json);
}

/// @nodoc
mixin _$Vendor {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get businessName => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  int get totalRatings => throw _privateConstructorUsedError;
  String get profilePhotoUrl => throw _privateConstructorUsedError;
  String get coverPhotoUrl => throw _privateConstructorUsedError;
  List<String> get cuisineTypes => throw _privateConstructorUsedError;
  List<String> get foodTypes => throw _privateConstructorUsedError;
  bool get isOpen => throw _privateConstructorUsedError;
  String? get closureMessage => throw _privateConstructorUsedError;
  double? get distance => throw _privateConstructorUsedError;
  List<String> get acceptedPaymentMethods => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VendorCopyWith<Vendor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorCopyWith<$Res> {
  factory $VendorCopyWith(Vendor value, $Res Function(Vendor) then) =
      _$VendorCopyWithImpl<$Res, Vendor>;
  @useResult
  $Res call(
      {String id,
      String name,
      String businessName,
      String address,
      String phone,
      double rating,
      int totalRatings,
      String profilePhotoUrl,
      String coverPhotoUrl,
      List<String> cuisineTypes,
      List<String> foodTypes,
      bool isOpen,
      String? closureMessage,
      double? distance,
      List<String> acceptedPaymentMethods});
}

/// @nodoc
class _$VendorCopyWithImpl<$Res, $Val extends Vendor>
    implements $VendorCopyWith<$Res> {
  _$VendorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? businessName = null,
    Object? address = null,
    Object? phone = null,
    Object? rating = null,
    Object? totalRatings = null,
    Object? profilePhotoUrl = null,
    Object? coverPhotoUrl = null,
    Object? cuisineTypes = null,
    Object? foodTypes = null,
    Object? isOpen = null,
    Object? closureMessage = freezed,
    Object? distance = freezed,
    Object? acceptedPaymentMethods = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      businessName: null == businessName
          ? _value.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      totalRatings: null == totalRatings
          ? _value.totalRatings
          : totalRatings // ignore: cast_nullable_to_non_nullable
              as int,
      profilePhotoUrl: null == profilePhotoUrl
          ? _value.profilePhotoUrl
          : profilePhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      coverPhotoUrl: null == coverPhotoUrl
          ? _value.coverPhotoUrl
          : coverPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      cuisineTypes: null == cuisineTypes
          ? _value.cuisineTypes
          : cuisineTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      foodTypes: null == foodTypes
          ? _value.foodTypes
          : foodTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isOpen: null == isOpen
          ? _value.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      closureMessage: freezed == closureMessage
          ? _value.closureMessage
          : closureMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      acceptedPaymentMethods: null == acceptedPaymentMethods
          ? _value.acceptedPaymentMethods
          : acceptedPaymentMethods // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VendorImplCopyWith<$Res> implements $VendorCopyWith<$Res> {
  factory _$$VendorImplCopyWith(
          _$VendorImpl value, $Res Function(_$VendorImpl) then) =
      __$$VendorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String businessName,
      String address,
      String phone,
      double rating,
      int totalRatings,
      String profilePhotoUrl,
      String coverPhotoUrl,
      List<String> cuisineTypes,
      List<String> foodTypes,
      bool isOpen,
      String? closureMessage,
      double? distance,
      List<String> acceptedPaymentMethods});
}

/// @nodoc
class __$$VendorImplCopyWithImpl<$Res>
    extends _$VendorCopyWithImpl<$Res, _$VendorImpl>
    implements _$$VendorImplCopyWith<$Res> {
  __$$VendorImplCopyWithImpl(
      _$VendorImpl _value, $Res Function(_$VendorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? businessName = null,
    Object? address = null,
    Object? phone = null,
    Object? rating = null,
    Object? totalRatings = null,
    Object? profilePhotoUrl = null,
    Object? coverPhotoUrl = null,
    Object? cuisineTypes = null,
    Object? foodTypes = null,
    Object? isOpen = null,
    Object? closureMessage = freezed,
    Object? distance = freezed,
    Object? acceptedPaymentMethods = null,
  }) {
    return _then(_$VendorImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      businessName: null == businessName
          ? _value.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      totalRatings: null == totalRatings
          ? _value.totalRatings
          : totalRatings // ignore: cast_nullable_to_non_nullable
              as int,
      profilePhotoUrl: null == profilePhotoUrl
          ? _value.profilePhotoUrl
          : profilePhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      coverPhotoUrl: null == coverPhotoUrl
          ? _value.coverPhotoUrl
          : coverPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      cuisineTypes: null == cuisineTypes
          ? _value._cuisineTypes
          : cuisineTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      foodTypes: null == foodTypes
          ? _value._foodTypes
          : foodTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isOpen: null == isOpen
          ? _value.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      closureMessage: freezed == closureMessage
          ? _value.closureMessage
          : closureMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      acceptedPaymentMethods: null == acceptedPaymentMethods
          ? _value._acceptedPaymentMethods
          : acceptedPaymentMethods // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VendorImpl implements _Vendor {
  const _$VendorImpl(
      {required this.id,
      required this.name,
      required this.businessName,
      required this.address,
      required this.phone,
      required this.rating,
      required this.totalRatings,
      required this.profilePhotoUrl,
      required this.coverPhotoUrl,
      final List<String> cuisineTypes = const [],
      final List<String> foodTypes = const [],
      this.isOpen = true,
      this.closureMessage,
      this.distance,
      final List<String> acceptedPaymentMethods = const []})
      : _cuisineTypes = cuisineTypes,
        _foodTypes = foodTypes,
        _acceptedPaymentMethods = acceptedPaymentMethods;

  factory _$VendorImpl.fromJson(Map<String, dynamic> json) =>
      _$$VendorImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String businessName;
  @override
  final String address;
  @override
  final String phone;
  @override
  final double rating;
  @override
  final int totalRatings;
  @override
  final String profilePhotoUrl;
  @override
  final String coverPhotoUrl;
  final List<String> _cuisineTypes;
  @override
  @JsonKey()
  List<String> get cuisineTypes {
    if (_cuisineTypes is EqualUnmodifiableListView) return _cuisineTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cuisineTypes);
  }

  final List<String> _foodTypes;
  @override
  @JsonKey()
  List<String> get foodTypes {
    if (_foodTypes is EqualUnmodifiableListView) return _foodTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_foodTypes);
  }

  @override
  @JsonKey()
  final bool isOpen;
  @override
  final String? closureMessage;
  @override
  final double? distance;
  final List<String> _acceptedPaymentMethods;
  @override
  @JsonKey()
  List<String> get acceptedPaymentMethods {
    if (_acceptedPaymentMethods is EqualUnmodifiableListView)
      return _acceptedPaymentMethods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_acceptedPaymentMethods);
  }

  @override
  String toString() {
    return 'Vendor(id: $id, name: $name, businessName: $businessName, address: $address, phone: $phone, rating: $rating, totalRatings: $totalRatings, profilePhotoUrl: $profilePhotoUrl, coverPhotoUrl: $coverPhotoUrl, cuisineTypes: $cuisineTypes, foodTypes: $foodTypes, isOpen: $isOpen, closureMessage: $closureMessage, distance: $distance, acceptedPaymentMethods: $acceptedPaymentMethods)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendorImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.businessName, businessName) ||
                other.businessName == businessName) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.totalRatings, totalRatings) ||
                other.totalRatings == totalRatings) &&
            (identical(other.profilePhotoUrl, profilePhotoUrl) ||
                other.profilePhotoUrl == profilePhotoUrl) &&
            (identical(other.coverPhotoUrl, coverPhotoUrl) ||
                other.coverPhotoUrl == coverPhotoUrl) &&
            const DeepCollectionEquality()
                .equals(other._cuisineTypes, _cuisineTypes) &&
            const DeepCollectionEquality()
                .equals(other._foodTypes, _foodTypes) &&
            (identical(other.isOpen, isOpen) || other.isOpen == isOpen) &&
            (identical(other.closureMessage, closureMessage) ||
                other.closureMessage == closureMessage) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            const DeepCollectionEquality().equals(
                other._acceptedPaymentMethods, _acceptedPaymentMethods));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      businessName,
      address,
      phone,
      rating,
      totalRatings,
      profilePhotoUrl,
      coverPhotoUrl,
      const DeepCollectionEquality().hash(_cuisineTypes),
      const DeepCollectionEquality().hash(_foodTypes),
      isOpen,
      closureMessage,
      distance,
      const DeepCollectionEquality().hash(_acceptedPaymentMethods));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VendorImplCopyWith<_$VendorImpl> get copyWith =>
      __$$VendorImplCopyWithImpl<_$VendorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VendorImplToJson(
      this,
    );
  }
}

abstract class _Vendor implements Vendor {
  const factory _Vendor(
      {required final String id,
      required final String name,
      required final String businessName,
      required final String address,
      required final String phone,
      required final double rating,
      required final int totalRatings,
      required final String profilePhotoUrl,
      required final String coverPhotoUrl,
      final List<String> cuisineTypes,
      final List<String> foodTypes,
      final bool isOpen,
      final String? closureMessage,
      final double? distance,
      final List<String> acceptedPaymentMethods}) = _$VendorImpl;

  factory _Vendor.fromJson(Map<String, dynamic> json) = _$VendorImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get businessName;
  @override
  String get address;
  @override
  String get phone;
  @override
  double get rating;
  @override
  int get totalRatings;
  @override
  String get profilePhotoUrl;
  @override
  String get coverPhotoUrl;
  @override
  List<String> get cuisineTypes;
  @override
  List<String> get foodTypes;
  @override
  bool get isOpen;
  @override
  String? get closureMessage;
  @override
  double? get distance;
  @override
  List<String> get acceptedPaymentMethods;
  @override
  @JsonKey(ignore: true)
  _$$VendorImplCopyWith<_$VendorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GeoPoint _$GeoPointFromJson(Map<String, dynamic> json) {
  return _GeoPoint.fromJson(json);
}

/// @nodoc
mixin _$GeoPoint {
  String get type => throw _privateConstructorUsedError;
  List<double> get coordinates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeoPointCopyWith<GeoPoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoPointCopyWith<$Res> {
  factory $GeoPointCopyWith(GeoPoint value, $Res Function(GeoPoint) then) =
      _$GeoPointCopyWithImpl<$Res, GeoPoint>;
  @useResult
  $Res call({String type, List<double> coordinates});
}

/// @nodoc
class _$GeoPointCopyWithImpl<$Res, $Val extends GeoPoint>
    implements $GeoPointCopyWith<$Res> {
  _$GeoPointCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? coordinates = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeoPointImplCopyWith<$Res>
    implements $GeoPointCopyWith<$Res> {
  factory _$$GeoPointImplCopyWith(
          _$GeoPointImpl value, $Res Function(_$GeoPointImpl) then) =
      __$$GeoPointImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, List<double> coordinates});
}

/// @nodoc
class __$$GeoPointImplCopyWithImpl<$Res>
    extends _$GeoPointCopyWithImpl<$Res, _$GeoPointImpl>
    implements _$$GeoPointImplCopyWith<$Res> {
  __$$GeoPointImplCopyWithImpl(
      _$GeoPointImpl _value, $Res Function(_$GeoPointImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? coordinates = null,
  }) {
    return _then(_$GeoPointImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: null == coordinates
          ? _value._coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeoPointImpl implements _GeoPoint {
  const _$GeoPointImpl(
      {required this.type, required final List<double> coordinates})
      : _coordinates = coordinates;

  factory _$GeoPointImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeoPointImplFromJson(json);

  @override
  final String type;
  final List<double> _coordinates;
  @override
  List<double> get coordinates {
    if (_coordinates is EqualUnmodifiableListView) return _coordinates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coordinates);
  }

  @override
  String toString() {
    return 'GeoPoint(type: $type, coordinates: $coordinates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeoPointImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._coordinates, _coordinates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, const DeepCollectionEquality().hash(_coordinates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeoPointImplCopyWith<_$GeoPointImpl> get copyWith =>
      __$$GeoPointImplCopyWithImpl<_$GeoPointImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeoPointImplToJson(
      this,
    );
  }
}

abstract class _GeoPoint implements GeoPoint {
  const factory _GeoPoint(
      {required final String type,
      required final List<double> coordinates}) = _$GeoPointImpl;

  factory _GeoPoint.fromJson(Map<String, dynamic> json) =
      _$GeoPointImpl.fromJson;

  @override
  String get type;
  @override
  List<double> get coordinates;
  @override
  @JsonKey(ignore: true)
  _$$GeoPointImplCopyWith<_$GeoPointImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
