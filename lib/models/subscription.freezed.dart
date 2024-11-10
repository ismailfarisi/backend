// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Subscription _$SubscriptionFromJson(Map<String, dynamic> json) {
  return _Subscription.fromJson(json);
}

/// @nodoc
mixin _$Subscription {
  String? get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  List<MealVendorSelection> get mealSelections =>
      throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  SubscriptionStatus get status => throw _privateConstructorUsedError;
  bool get isAutoRenewal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscriptionCopyWith<Subscription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionCopyWith<$Res> {
  factory $SubscriptionCopyWith(
          Subscription value, $Res Function(Subscription) then) =
      _$SubscriptionCopyWithImpl<$Res, Subscription>;
  @useResult
  $Res call(
      {String? id,
      String userId,
      double price,
      List<MealVendorSelection> mealSelections,
      DateTime startDate,
      DateTime endDate,
      SubscriptionStatus status,
      bool isAutoRenewal});
}

/// @nodoc
class _$SubscriptionCopyWithImpl<$Res, $Val extends Subscription>
    implements $SubscriptionCopyWith<$Res> {
  _$SubscriptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = null,
    Object? price = null,
    Object? mealSelections = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? status = null,
    Object? isAutoRenewal = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      mealSelections: null == mealSelections
          ? _value.mealSelections
          : mealSelections // ignore: cast_nullable_to_non_nullable
              as List<MealVendorSelection>,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SubscriptionStatus,
      isAutoRenewal: null == isAutoRenewal
          ? _value.isAutoRenewal
          : isAutoRenewal // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubscriptionImplCopyWith<$Res>
    implements $SubscriptionCopyWith<$Res> {
  factory _$$SubscriptionImplCopyWith(
          _$SubscriptionImpl value, $Res Function(_$SubscriptionImpl) then) =
      __$$SubscriptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String userId,
      double price,
      List<MealVendorSelection> mealSelections,
      DateTime startDate,
      DateTime endDate,
      SubscriptionStatus status,
      bool isAutoRenewal});
}

/// @nodoc
class __$$SubscriptionImplCopyWithImpl<$Res>
    extends _$SubscriptionCopyWithImpl<$Res, _$SubscriptionImpl>
    implements _$$SubscriptionImplCopyWith<$Res> {
  __$$SubscriptionImplCopyWithImpl(
      _$SubscriptionImpl _value, $Res Function(_$SubscriptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = null,
    Object? price = null,
    Object? mealSelections = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? status = null,
    Object? isAutoRenewal = null,
  }) {
    return _then(_$SubscriptionImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      mealSelections: null == mealSelections
          ? _value._mealSelections
          : mealSelections // ignore: cast_nullable_to_non_nullable
              as List<MealVendorSelection>,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SubscriptionStatus,
      isAutoRenewal: null == isAutoRenewal
          ? _value.isAutoRenewal
          : isAutoRenewal // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscriptionImpl implements _Subscription {
  const _$SubscriptionImpl(
      {this.id,
      required this.userId,
      required this.price,
      required final List<MealVendorSelection> mealSelections,
      required this.startDate,
      required this.endDate,
      required this.status,
      this.isAutoRenewal = false})
      : _mealSelections = mealSelections;

  factory _$SubscriptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubscriptionImplFromJson(json);

  @override
  final String? id;
  @override
  final String userId;
  @override
  final double price;
  final List<MealVendorSelection> _mealSelections;
  @override
  List<MealVendorSelection> get mealSelections {
    if (_mealSelections is EqualUnmodifiableListView) return _mealSelections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mealSelections);
  }

  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final SubscriptionStatus status;
  @override
  @JsonKey()
  final bool isAutoRenewal;

  @override
  String toString() {
    return 'Subscription(id: $id, userId: $userId, price: $price, mealSelections: $mealSelections, startDate: $startDate, endDate: $endDate, status: $status, isAutoRenewal: $isAutoRenewal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality()
                .equals(other._mealSelections, _mealSelections) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isAutoRenewal, isAutoRenewal) ||
                other.isAutoRenewal == isAutoRenewal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      price,
      const DeepCollectionEquality().hash(_mealSelections),
      startDate,
      endDate,
      status,
      isAutoRenewal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionImplCopyWith<_$SubscriptionImpl> get copyWith =>
      __$$SubscriptionImplCopyWithImpl<_$SubscriptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionImplToJson(
      this,
    );
  }
}

abstract class _Subscription implements Subscription {
  const factory _Subscription(
      {final String? id,
      required final String userId,
      required final double price,
      required final List<MealVendorSelection> mealSelections,
      required final DateTime startDate,
      required final DateTime endDate,
      required final SubscriptionStatus status,
      final bool isAutoRenewal}) = _$SubscriptionImpl;

  factory _Subscription.fromJson(Map<String, dynamic> json) =
      _$SubscriptionImpl.fromJson;

  @override
  String? get id;
  @override
  String get userId;
  @override
  double get price;
  @override
  List<MealVendorSelection> get mealSelections;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  SubscriptionStatus get status;
  @override
  bool get isAutoRenewal;
  @override
  @JsonKey(ignore: true)
  _$$SubscriptionImplCopyWith<_$SubscriptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MealVendorSelection _$MealVendorSelectionFromJson(Map<String, dynamic> json) {
  return _MealVendorSelection.fromJson(json);
}

/// @nodoc
mixin _$MealVendorSelection {
  MealType get mealType => throw _privateConstructorUsedError;
  List<String> get vendorIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MealVendorSelectionCopyWith<MealVendorSelection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealVendorSelectionCopyWith<$Res> {
  factory $MealVendorSelectionCopyWith(
          MealVendorSelection value, $Res Function(MealVendorSelection) then) =
      _$MealVendorSelectionCopyWithImpl<$Res, MealVendorSelection>;
  @useResult
  $Res call({MealType mealType, List<String> vendorIds});
}

/// @nodoc
class _$MealVendorSelectionCopyWithImpl<$Res, $Val extends MealVendorSelection>
    implements $MealVendorSelectionCopyWith<$Res> {
  _$MealVendorSelectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mealType = null,
    Object? vendorIds = null,
  }) {
    return _then(_value.copyWith(
      mealType: null == mealType
          ? _value.mealType
          : mealType // ignore: cast_nullable_to_non_nullable
              as MealType,
      vendorIds: null == vendorIds
          ? _value.vendorIds
          : vendorIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MealVendorSelectionImplCopyWith<$Res>
    implements $MealVendorSelectionCopyWith<$Res> {
  factory _$$MealVendorSelectionImplCopyWith(_$MealVendorSelectionImpl value,
          $Res Function(_$MealVendorSelectionImpl) then) =
      __$$MealVendorSelectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MealType mealType, List<String> vendorIds});
}

/// @nodoc
class __$$MealVendorSelectionImplCopyWithImpl<$Res>
    extends _$MealVendorSelectionCopyWithImpl<$Res, _$MealVendorSelectionImpl>
    implements _$$MealVendorSelectionImplCopyWith<$Res> {
  __$$MealVendorSelectionImplCopyWithImpl(_$MealVendorSelectionImpl _value,
      $Res Function(_$MealVendorSelectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mealType = null,
    Object? vendorIds = null,
  }) {
    return _then(_$MealVendorSelectionImpl(
      mealType: null == mealType
          ? _value.mealType
          : mealType // ignore: cast_nullable_to_non_nullable
              as MealType,
      vendorIds: null == vendorIds
          ? _value._vendorIds
          : vendorIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MealVendorSelectionImpl implements _MealVendorSelection {
  const _$MealVendorSelectionImpl(
      {required this.mealType, final List<String> vendorIds = const []})
      : _vendorIds = vendorIds;

  factory _$MealVendorSelectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$MealVendorSelectionImplFromJson(json);

  @override
  final MealType mealType;
  final List<String> _vendorIds;
  @override
  @JsonKey()
  List<String> get vendorIds {
    if (_vendorIds is EqualUnmodifiableListView) return _vendorIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vendorIds);
  }

  @override
  String toString() {
    return 'MealVendorSelection(mealType: $mealType, vendorIds: $vendorIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MealVendorSelectionImpl &&
            (identical(other.mealType, mealType) ||
                other.mealType == mealType) &&
            const DeepCollectionEquality()
                .equals(other._vendorIds, _vendorIds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, mealType, const DeepCollectionEquality().hash(_vendorIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MealVendorSelectionImplCopyWith<_$MealVendorSelectionImpl> get copyWith =>
      __$$MealVendorSelectionImplCopyWithImpl<_$MealVendorSelectionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MealVendorSelectionImplToJson(
      this,
    );
  }
}

abstract class _MealVendorSelection implements MealVendorSelection {
  const factory _MealVendorSelection(
      {required final MealType mealType,
      final List<String> vendorIds}) = _$MealVendorSelectionImpl;

  factory _MealVendorSelection.fromJson(Map<String, dynamic> json) =
      _$MealVendorSelectionImpl.fromJson;

  @override
  MealType get mealType;
  @override
  List<String> get vendorIds;
  @override
  @JsonKey(ignore: true)
  _$$MealVendorSelectionImplCopyWith<_$MealVendorSelectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
