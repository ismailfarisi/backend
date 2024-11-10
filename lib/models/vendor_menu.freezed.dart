// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vendor_menu.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VendorMenu _$VendorMenuFromJson(Map<String, dynamic> json) {
  return _VendorMenu.fromJson(json);
}

/// @nodoc
mixin _$VendorMenu {
  String get vendorId => throw _privateConstructorUsedError;
  MealType get mealType => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  List<String> get sampleMenuItems => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VendorMenuCopyWith<VendorMenu> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorMenuCopyWith<$Res> {
  factory $VendorMenuCopyWith(
          VendorMenu value, $Res Function(VendorMenu) then) =
      _$VendorMenuCopyWithImpl<$Res, VendorMenu>;
  @useResult
  $Res call(
      {String vendorId,
      MealType mealType,
      String description,
      double price,
      List<String> sampleMenuItems});
}

/// @nodoc
class _$VendorMenuCopyWithImpl<$Res, $Val extends VendorMenu>
    implements $VendorMenuCopyWith<$Res> {
  _$VendorMenuCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vendorId = null,
    Object? mealType = null,
    Object? description = null,
    Object? price = null,
    Object? sampleMenuItems = null,
  }) {
    return _then(_value.copyWith(
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String,
      mealType: null == mealType
          ? _value.mealType
          : mealType // ignore: cast_nullable_to_non_nullable
              as MealType,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      sampleMenuItems: null == sampleMenuItems
          ? _value.sampleMenuItems
          : sampleMenuItems // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VendorMenuImplCopyWith<$Res>
    implements $VendorMenuCopyWith<$Res> {
  factory _$$VendorMenuImplCopyWith(
          _$VendorMenuImpl value, $Res Function(_$VendorMenuImpl) then) =
      __$$VendorMenuImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String vendorId,
      MealType mealType,
      String description,
      double price,
      List<String> sampleMenuItems});
}

/// @nodoc
class __$$VendorMenuImplCopyWithImpl<$Res>
    extends _$VendorMenuCopyWithImpl<$Res, _$VendorMenuImpl>
    implements _$$VendorMenuImplCopyWith<$Res> {
  __$$VendorMenuImplCopyWithImpl(
      _$VendorMenuImpl _value, $Res Function(_$VendorMenuImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vendorId = null,
    Object? mealType = null,
    Object? description = null,
    Object? price = null,
    Object? sampleMenuItems = null,
  }) {
    return _then(_$VendorMenuImpl(
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String,
      mealType: null == mealType
          ? _value.mealType
          : mealType // ignore: cast_nullable_to_non_nullable
              as MealType,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      sampleMenuItems: null == sampleMenuItems
          ? _value._sampleMenuItems
          : sampleMenuItems // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VendorMenuImpl implements _VendorMenu {
  const _$VendorMenuImpl(
      {required this.vendorId,
      required this.mealType,
      required this.description,
      required this.price,
      required final List<String> sampleMenuItems})
      : _sampleMenuItems = sampleMenuItems;

  factory _$VendorMenuImpl.fromJson(Map<String, dynamic> json) =>
      _$$VendorMenuImplFromJson(json);

  @override
  final String vendorId;
  @override
  final MealType mealType;
  @override
  final String description;
  @override
  final double price;
  final List<String> _sampleMenuItems;
  @override
  List<String> get sampleMenuItems {
    if (_sampleMenuItems is EqualUnmodifiableListView) return _sampleMenuItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sampleMenuItems);
  }

  @override
  String toString() {
    return 'VendorMenu(vendorId: $vendorId, mealType: $mealType, description: $description, price: $price, sampleMenuItems: $sampleMenuItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendorMenuImpl &&
            (identical(other.vendorId, vendorId) ||
                other.vendorId == vendorId) &&
            (identical(other.mealType, mealType) ||
                other.mealType == mealType) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality()
                .equals(other._sampleMenuItems, _sampleMenuItems));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, vendorId, mealType, description,
      price, const DeepCollectionEquality().hash(_sampleMenuItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VendorMenuImplCopyWith<_$VendorMenuImpl> get copyWith =>
      __$$VendorMenuImplCopyWithImpl<_$VendorMenuImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VendorMenuImplToJson(
      this,
    );
  }
}

abstract class _VendorMenu implements VendorMenu {
  const factory _VendorMenu(
      {required final String vendorId,
      required final MealType mealType,
      required final String description,
      required final double price,
      required final List<String> sampleMenuItems}) = _$VendorMenuImpl;

  factory _VendorMenu.fromJson(Map<String, dynamic> json) =
      _$VendorMenuImpl.fromJson;

  @override
  String get vendorId;
  @override
  MealType get mealType;
  @override
  String get description;
  @override
  double get price;
  @override
  List<String> get sampleMenuItems;
  @override
  @JsonKey(ignore: true)
  _$$VendorMenuImplCopyWith<_$VendorMenuImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
