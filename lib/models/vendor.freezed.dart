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
  String get description => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  int get totalRatings => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  List<String> get specialities => throw _privateConstructorUsedError;
  List<MealType> get availableMealTypes => throw _privateConstructorUsedError;
  Map<MealType, double> get mealPrices => throw _privateConstructorUsedError;

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
      String description,
      double rating,
      int totalRatings,
      String imageUrl,
      List<String> specialities,
      List<MealType> availableMealTypes,
      Map<MealType, double> mealPrices});
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
    Object? description = null,
    Object? rating = null,
    Object? totalRatings = null,
    Object? imageUrl = null,
    Object? specialities = null,
    Object? availableMealTypes = null,
    Object? mealPrices = null,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      totalRatings: null == totalRatings
          ? _value.totalRatings
          : totalRatings // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      specialities: null == specialities
          ? _value.specialities
          : specialities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      availableMealTypes: null == availableMealTypes
          ? _value.availableMealTypes
          : availableMealTypes // ignore: cast_nullable_to_non_nullable
              as List<MealType>,
      mealPrices: null == mealPrices
          ? _value.mealPrices
          : mealPrices // ignore: cast_nullable_to_non_nullable
              as Map<MealType, double>,
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
      String description,
      double rating,
      int totalRatings,
      String imageUrl,
      List<String> specialities,
      List<MealType> availableMealTypes,
      Map<MealType, double> mealPrices});
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
    Object? description = null,
    Object? rating = null,
    Object? totalRatings = null,
    Object? imageUrl = null,
    Object? specialities = null,
    Object? availableMealTypes = null,
    Object? mealPrices = null,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      totalRatings: null == totalRatings
          ? _value.totalRatings
          : totalRatings // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      specialities: null == specialities
          ? _value._specialities
          : specialities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      availableMealTypes: null == availableMealTypes
          ? _value._availableMealTypes
          : availableMealTypes // ignore: cast_nullable_to_non_nullable
              as List<MealType>,
      mealPrices: null == mealPrices
          ? _value._mealPrices
          : mealPrices // ignore: cast_nullable_to_non_nullable
              as Map<MealType, double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VendorImpl implements _Vendor {
  const _$VendorImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.rating,
      this.totalRatings = 0,
      required this.imageUrl,
      final List<String> specialities = const [],
      final List<MealType> availableMealTypes = const [],
      required final Map<MealType, double> mealPrices})
      : _specialities = specialities,
        _availableMealTypes = availableMealTypes,
        _mealPrices = mealPrices;

  factory _$VendorImpl.fromJson(Map<String, dynamic> json) =>
      _$$VendorImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final double rating;
  @override
  @JsonKey()
  final int totalRatings;
  @override
  final String imageUrl;
  final List<String> _specialities;
  @override
  @JsonKey()
  List<String> get specialities {
    if (_specialities is EqualUnmodifiableListView) return _specialities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_specialities);
  }

  final List<MealType> _availableMealTypes;
  @override
  @JsonKey()
  List<MealType> get availableMealTypes {
    if (_availableMealTypes is EqualUnmodifiableListView)
      return _availableMealTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableMealTypes);
  }

  final Map<MealType, double> _mealPrices;
  @override
  Map<MealType, double> get mealPrices {
    if (_mealPrices is EqualUnmodifiableMapView) return _mealPrices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_mealPrices);
  }

  @override
  String toString() {
    return 'Vendor(id: $id, name: $name, description: $description, rating: $rating, totalRatings: $totalRatings, imageUrl: $imageUrl, specialities: $specialities, availableMealTypes: $availableMealTypes, mealPrices: $mealPrices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendorImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.totalRatings, totalRatings) ||
                other.totalRatings == totalRatings) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality()
                .equals(other._specialities, _specialities) &&
            const DeepCollectionEquality()
                .equals(other._availableMealTypes, _availableMealTypes) &&
            const DeepCollectionEquality()
                .equals(other._mealPrices, _mealPrices));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      rating,
      totalRatings,
      imageUrl,
      const DeepCollectionEquality().hash(_specialities),
      const DeepCollectionEquality().hash(_availableMealTypes),
      const DeepCollectionEquality().hash(_mealPrices));

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
      required final String description,
      required final double rating,
      final int totalRatings,
      required final String imageUrl,
      final List<String> specialities,
      final List<MealType> availableMealTypes,
      required final Map<MealType, double> mealPrices}) = _$VendorImpl;

  factory _Vendor.fromJson(Map<String, dynamic> json) = _$VendorImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  double get rating;
  @override
  int get totalRatings;
  @override
  String get imageUrl;
  @override
  List<String> get specialities;
  @override
  List<MealType> get availableMealTypes;
  @override
  Map<MealType, double> get mealPrices;
  @override
  @JsonKey(ignore: true)
  _$$VendorImplCopyWith<_$VendorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
