// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vendor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Vendor {
  String get id;
  String get name;
  String get businessName;
  String? get address;
  String? get phone;
  double get rating;
  dynamic get totalRatings;
  String get profilePhotoUrl;
  String get coverPhotoUrl;
  List<String> get cuisineTypes;
  List<String> get foodTypes;
  List<VendorMenu> get menus;
  bool get isOpen;
  String? get closureMessage;
  double? get distance;
  List<String> get acceptedPaymentMethods;

  /// Create a copy of Vendor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VendorCopyWith<Vendor> get copyWith =>
      _$VendorCopyWithImpl<Vendor>(this as Vendor, _$identity);

  /// Serializes this Vendor to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Vendor &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.businessName, businessName) ||
                other.businessName == businessName) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            const DeepCollectionEquality()
                .equals(other.totalRatings, totalRatings) &&
            (identical(other.profilePhotoUrl, profilePhotoUrl) ||
                other.profilePhotoUrl == profilePhotoUrl) &&
            (identical(other.coverPhotoUrl, coverPhotoUrl) ||
                other.coverPhotoUrl == coverPhotoUrl) &&
            const DeepCollectionEquality()
                .equals(other.cuisineTypes, cuisineTypes) &&
            const DeepCollectionEquality().equals(other.foodTypes, foodTypes) &&
            const DeepCollectionEquality().equals(other.menus, menus) &&
            (identical(other.isOpen, isOpen) || other.isOpen == isOpen) &&
            (identical(other.closureMessage, closureMessage) ||
                other.closureMessage == closureMessage) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            const DeepCollectionEquality()
                .equals(other.acceptedPaymentMethods, acceptedPaymentMethods));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      businessName,
      address,
      phone,
      rating,
      const DeepCollectionEquality().hash(totalRatings),
      profilePhotoUrl,
      coverPhotoUrl,
      const DeepCollectionEquality().hash(cuisineTypes),
      const DeepCollectionEquality().hash(foodTypes),
      const DeepCollectionEquality().hash(menus),
      isOpen,
      closureMessage,
      distance,
      const DeepCollectionEquality().hash(acceptedPaymentMethods));

  @override
  String toString() {
    return 'Vendor(id: $id, name: $name, businessName: $businessName, address: $address, phone: $phone, rating: $rating, totalRatings: $totalRatings, profilePhotoUrl: $profilePhotoUrl, coverPhotoUrl: $coverPhotoUrl, cuisineTypes: $cuisineTypes, foodTypes: $foodTypes, menus: $menus, isOpen: $isOpen, closureMessage: $closureMessage, distance: $distance, acceptedPaymentMethods: $acceptedPaymentMethods)';
  }
}

/// @nodoc
abstract mixin class $VendorCopyWith<$Res> {
  factory $VendorCopyWith(Vendor value, $Res Function(Vendor) _then) =
      _$VendorCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      String businessName,
      String? address,
      String? phone,
      double rating,
      dynamic totalRatings,
      String profilePhotoUrl,
      String coverPhotoUrl,
      List<String> cuisineTypes,
      List<String> foodTypes,
      List<VendorMenu> menus,
      bool isOpen,
      String? closureMessage,
      double? distance,
      List<String> acceptedPaymentMethods});
}

/// @nodoc
class _$VendorCopyWithImpl<$Res> implements $VendorCopyWith<$Res> {
  _$VendorCopyWithImpl(this._self, this._then);

  final Vendor _self;
  final $Res Function(Vendor) _then;

  /// Create a copy of Vendor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? businessName = null,
    Object? address = freezed,
    Object? phone = freezed,
    Object? rating = null,
    Object? totalRatings = freezed,
    Object? profilePhotoUrl = null,
    Object? coverPhotoUrl = null,
    Object? cuisineTypes = null,
    Object? foodTypes = null,
    Object? menus = null,
    Object? isOpen = null,
    Object? closureMessage = freezed,
    Object? distance = freezed,
    Object? acceptedPaymentMethods = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      businessName: null == businessName
          ? _self.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: null == rating
          ? _self.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      totalRatings: freezed == totalRatings
          ? _self.totalRatings
          : totalRatings // ignore: cast_nullable_to_non_nullable
              as dynamic,
      profilePhotoUrl: null == profilePhotoUrl
          ? _self.profilePhotoUrl
          : profilePhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      coverPhotoUrl: null == coverPhotoUrl
          ? _self.coverPhotoUrl
          : coverPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      cuisineTypes: null == cuisineTypes
          ? _self.cuisineTypes
          : cuisineTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      foodTypes: null == foodTypes
          ? _self.foodTypes
          : foodTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      menus: null == menus
          ? _self.menus
          : menus // ignore: cast_nullable_to_non_nullable
              as List<VendorMenu>,
      isOpen: null == isOpen
          ? _self.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      closureMessage: freezed == closureMessage
          ? _self.closureMessage
          : closureMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      distance: freezed == distance
          ? _self.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      acceptedPaymentMethods: null == acceptedPaymentMethods
          ? _self.acceptedPaymentMethods
          : acceptedPaymentMethods // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Vendor implements Vendor {
  const _Vendor(
      {required this.id,
      required this.name,
      required this.businessName,
      this.address,
      this.phone,
      this.rating = 0,
      this.totalRatings = 0,
      required this.profilePhotoUrl,
      required this.coverPhotoUrl,
      final List<String> cuisineTypes = const [],
      final List<String> foodTypes = const [],
      final List<VendorMenu> menus = const [],
      this.isOpen = true,
      this.closureMessage,
      this.distance,
      final List<String> acceptedPaymentMethods = const []})
      : _cuisineTypes = cuisineTypes,
        _foodTypes = foodTypes,
        _menus = menus,
        _acceptedPaymentMethods = acceptedPaymentMethods;
  factory _Vendor.fromJson(Map<String, dynamic> json) => _$VendorFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String businessName;
  @override
  final String? address;
  @override
  final String? phone;
  @override
  @JsonKey()
  final double rating;
  @override
  @JsonKey()
  final dynamic totalRatings;
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

  final List<VendorMenu> _menus;
  @override
  @JsonKey()
  List<VendorMenu> get menus {
    if (_menus is EqualUnmodifiableListView) return _menus;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_menus);
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

  /// Create a copy of Vendor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VendorCopyWith<_Vendor> get copyWith =>
      __$VendorCopyWithImpl<_Vendor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VendorToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Vendor &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.businessName, businessName) ||
                other.businessName == businessName) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            const DeepCollectionEquality()
                .equals(other.totalRatings, totalRatings) &&
            (identical(other.profilePhotoUrl, profilePhotoUrl) ||
                other.profilePhotoUrl == profilePhotoUrl) &&
            (identical(other.coverPhotoUrl, coverPhotoUrl) ||
                other.coverPhotoUrl == coverPhotoUrl) &&
            const DeepCollectionEquality()
                .equals(other._cuisineTypes, _cuisineTypes) &&
            const DeepCollectionEquality()
                .equals(other._foodTypes, _foodTypes) &&
            const DeepCollectionEquality().equals(other._menus, _menus) &&
            (identical(other.isOpen, isOpen) || other.isOpen == isOpen) &&
            (identical(other.closureMessage, closureMessage) ||
                other.closureMessage == closureMessage) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            const DeepCollectionEquality().equals(
                other._acceptedPaymentMethods, _acceptedPaymentMethods));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      businessName,
      address,
      phone,
      rating,
      const DeepCollectionEquality().hash(totalRatings),
      profilePhotoUrl,
      coverPhotoUrl,
      const DeepCollectionEquality().hash(_cuisineTypes),
      const DeepCollectionEquality().hash(_foodTypes),
      const DeepCollectionEquality().hash(_menus),
      isOpen,
      closureMessage,
      distance,
      const DeepCollectionEquality().hash(_acceptedPaymentMethods));

  @override
  String toString() {
    return 'Vendor(id: $id, name: $name, businessName: $businessName, address: $address, phone: $phone, rating: $rating, totalRatings: $totalRatings, profilePhotoUrl: $profilePhotoUrl, coverPhotoUrl: $coverPhotoUrl, cuisineTypes: $cuisineTypes, foodTypes: $foodTypes, menus: $menus, isOpen: $isOpen, closureMessage: $closureMessage, distance: $distance, acceptedPaymentMethods: $acceptedPaymentMethods)';
  }
}

/// @nodoc
abstract mixin class _$VendorCopyWith<$Res> implements $VendorCopyWith<$Res> {
  factory _$VendorCopyWith(_Vendor value, $Res Function(_Vendor) _then) =
      __$VendorCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String businessName,
      String? address,
      String? phone,
      double rating,
      dynamic totalRatings,
      String profilePhotoUrl,
      String coverPhotoUrl,
      List<String> cuisineTypes,
      List<String> foodTypes,
      List<VendorMenu> menus,
      bool isOpen,
      String? closureMessage,
      double? distance,
      List<String> acceptedPaymentMethods});
}

/// @nodoc
class __$VendorCopyWithImpl<$Res> implements _$VendorCopyWith<$Res> {
  __$VendorCopyWithImpl(this._self, this._then);

  final _Vendor _self;
  final $Res Function(_Vendor) _then;

  /// Create a copy of Vendor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? businessName = null,
    Object? address = freezed,
    Object? phone = freezed,
    Object? rating = null,
    Object? totalRatings = freezed,
    Object? profilePhotoUrl = null,
    Object? coverPhotoUrl = null,
    Object? cuisineTypes = null,
    Object? foodTypes = null,
    Object? menus = null,
    Object? isOpen = null,
    Object? closureMessage = freezed,
    Object? distance = freezed,
    Object? acceptedPaymentMethods = null,
  }) {
    return _then(_Vendor(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      businessName: null == businessName
          ? _self.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: null == rating
          ? _self.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      totalRatings: freezed == totalRatings
          ? _self.totalRatings
          : totalRatings // ignore: cast_nullable_to_non_nullable
              as dynamic,
      profilePhotoUrl: null == profilePhotoUrl
          ? _self.profilePhotoUrl
          : profilePhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      coverPhotoUrl: null == coverPhotoUrl
          ? _self.coverPhotoUrl
          : coverPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      cuisineTypes: null == cuisineTypes
          ? _self._cuisineTypes
          : cuisineTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      foodTypes: null == foodTypes
          ? _self._foodTypes
          : foodTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      menus: null == menus
          ? _self._menus
          : menus // ignore: cast_nullable_to_non_nullable
              as List<VendorMenu>,
      isOpen: null == isOpen
          ? _self.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      closureMessage: freezed == closureMessage
          ? _self.closureMessage
          : closureMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      distance: freezed == distance
          ? _self.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      acceptedPaymentMethods: null == acceptedPaymentMethods
          ? _self._acceptedPaymentMethods
          : acceptedPaymentMethods // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
mixin _$GeoPoint {
  String get type;
  List<double> get coordinates;

  /// Create a copy of GeoPoint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GeoPointCopyWith<GeoPoint> get copyWith =>
      _$GeoPointCopyWithImpl<GeoPoint>(this as GeoPoint, _$identity);

  /// Serializes this GeoPoint to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GeoPoint &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other.coordinates, coordinates));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, const DeepCollectionEquality().hash(coordinates));

  @override
  String toString() {
    return 'GeoPoint(type: $type, coordinates: $coordinates)';
  }
}

/// @nodoc
abstract mixin class $GeoPointCopyWith<$Res> {
  factory $GeoPointCopyWith(GeoPoint value, $Res Function(GeoPoint) _then) =
      _$GeoPointCopyWithImpl;
  @useResult
  $Res call({String type, List<double> coordinates});
}

/// @nodoc
class _$GeoPointCopyWithImpl<$Res> implements $GeoPointCopyWith<$Res> {
  _$GeoPointCopyWithImpl(this._self, this._then);

  final GeoPoint _self;
  final $Res Function(GeoPoint) _then;

  /// Create a copy of GeoPoint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? coordinates = null,
  }) {
    return _then(_self.copyWith(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: null == coordinates
          ? _self.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _GeoPoint implements GeoPoint {
  const _GeoPoint({required this.type, required final List<double> coordinates})
      : _coordinates = coordinates;
  factory _GeoPoint.fromJson(Map<String, dynamic> json) =>
      _$GeoPointFromJson(json);

  @override
  final String type;
  final List<double> _coordinates;
  @override
  List<double> get coordinates {
    if (_coordinates is EqualUnmodifiableListView) return _coordinates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coordinates);
  }

  /// Create a copy of GeoPoint
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GeoPointCopyWith<_GeoPoint> get copyWith =>
      __$GeoPointCopyWithImpl<_GeoPoint>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GeoPointToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GeoPoint &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._coordinates, _coordinates));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, const DeepCollectionEquality().hash(_coordinates));

  @override
  String toString() {
    return 'GeoPoint(type: $type, coordinates: $coordinates)';
  }
}

/// @nodoc
abstract mixin class _$GeoPointCopyWith<$Res>
    implements $GeoPointCopyWith<$Res> {
  factory _$GeoPointCopyWith(_GeoPoint value, $Res Function(_GeoPoint) _then) =
      __$GeoPointCopyWithImpl;
  @override
  @useResult
  $Res call({String type, List<double> coordinates});
}

/// @nodoc
class __$GeoPointCopyWithImpl<$Res> implements _$GeoPointCopyWith<$Res> {
  __$GeoPointCopyWithImpl(this._self, this._then);

  final _GeoPoint _self;
  final $Res Function(_GeoPoint) _then;

  /// Create a copy of GeoPoint
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? coordinates = null,
  }) {
    return _then(_GeoPoint(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: null == coordinates
          ? _self._coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

// dart format on
