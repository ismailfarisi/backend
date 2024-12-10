// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_meal_selection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubscriptionMealSelection _$SubscriptionMealSelectionFromJson(
    Map<String, dynamic> json) {
  return _SubscriptionMealSelection.fromJson(json);
}

/// @nodoc
mixin _$SubscriptionMealSelection {
  MealType get mealType => throw _privateConstructorUsedError;
  List<String> get vendorIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscriptionMealSelectionCopyWith<SubscriptionMealSelection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionMealSelectionCopyWith<$Res> {
  factory $SubscriptionMealSelectionCopyWith(SubscriptionMealSelection value,
          $Res Function(SubscriptionMealSelection) then) =
      _$SubscriptionMealSelectionCopyWithImpl<$Res, SubscriptionMealSelection>;
  @useResult
  $Res call({MealType mealType, List<String> vendorIds});
}

/// @nodoc
class _$SubscriptionMealSelectionCopyWithImpl<$Res,
        $Val extends SubscriptionMealSelection>
    implements $SubscriptionMealSelectionCopyWith<$Res> {
  _$SubscriptionMealSelectionCopyWithImpl(this._value, this._then);

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
abstract class _$$SubscriptionMealSelectionImplCopyWith<$Res>
    implements $SubscriptionMealSelectionCopyWith<$Res> {
  factory _$$SubscriptionMealSelectionImplCopyWith(
          _$SubscriptionMealSelectionImpl value,
          $Res Function(_$SubscriptionMealSelectionImpl) then) =
      __$$SubscriptionMealSelectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MealType mealType, List<String> vendorIds});
}

/// @nodoc
class __$$SubscriptionMealSelectionImplCopyWithImpl<$Res>
    extends _$SubscriptionMealSelectionCopyWithImpl<$Res,
        _$SubscriptionMealSelectionImpl>
    implements _$$SubscriptionMealSelectionImplCopyWith<$Res> {
  __$$SubscriptionMealSelectionImplCopyWithImpl(
      _$SubscriptionMealSelectionImpl _value,
      $Res Function(_$SubscriptionMealSelectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mealType = null,
    Object? vendorIds = null,
  }) {
    return _then(_$SubscriptionMealSelectionImpl(
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
class _$SubscriptionMealSelectionImpl implements _SubscriptionMealSelection {
  const _$SubscriptionMealSelectionImpl(
      {required this.mealType, required final List<String> vendorIds})
      : _vendorIds = vendorIds;

  factory _$SubscriptionMealSelectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubscriptionMealSelectionImplFromJson(json);

  @override
  final MealType mealType;
  final List<String> _vendorIds;
  @override
  List<String> get vendorIds {
    if (_vendorIds is EqualUnmodifiableListView) return _vendorIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vendorIds);
  }

  @override
  String toString() {
    return 'SubscriptionMealSelection(mealType: $mealType, vendorIds: $vendorIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionMealSelectionImpl &&
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
  _$$SubscriptionMealSelectionImplCopyWith<_$SubscriptionMealSelectionImpl>
      get copyWith => __$$SubscriptionMealSelectionImplCopyWithImpl<
          _$SubscriptionMealSelectionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionMealSelectionImplToJson(
      this,
    );
  }
}

abstract class _SubscriptionMealSelection implements SubscriptionMealSelection {
  const factory _SubscriptionMealSelection(
      {required final MealType mealType,
      required final List<String> vendorIds}) = _$SubscriptionMealSelectionImpl;

  factory _SubscriptionMealSelection.fromJson(Map<String, dynamic> json) =
      _$SubscriptionMealSelectionImpl.fromJson;

  @override
  MealType get mealType;
  @override
  List<String> get vendorIds;
  @override
  @JsonKey(ignore: true)
  _$$SubscriptionMealSelectionImplCopyWith<_$SubscriptionMealSelectionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SubscriptionOrderDto _$SubscriptionOrderDtoFromJson(Map<String, dynamic> json) {
  return _SubscriptionOrderDto.fromJson(json);
}

/// @nodoc
mixin _$SubscriptionOrderDto {
  List<SubscriptionMealSelection> get mealSelections =>
      throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscriptionOrderDtoCopyWith<SubscriptionOrderDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionOrderDtoCopyWith<$Res> {
  factory $SubscriptionOrderDtoCopyWith(SubscriptionOrderDto value,
          $Res Function(SubscriptionOrderDto) then) =
      _$SubscriptionOrderDtoCopyWithImpl<$Res, SubscriptionOrderDto>;
  @useResult
  $Res call(
      {List<SubscriptionMealSelection> mealSelections,
      DateTime startDate,
      DateTime endDate});
}

/// @nodoc
class _$SubscriptionOrderDtoCopyWithImpl<$Res,
        $Val extends SubscriptionOrderDto>
    implements $SubscriptionOrderDtoCopyWith<$Res> {
  _$SubscriptionOrderDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mealSelections = null,
    Object? startDate = null,
    Object? endDate = null,
  }) {
    return _then(_value.copyWith(
      mealSelections: null == mealSelections
          ? _value.mealSelections
          : mealSelections // ignore: cast_nullable_to_non_nullable
              as List<SubscriptionMealSelection>,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubscriptionOrderDtoImplCopyWith<$Res>
    implements $SubscriptionOrderDtoCopyWith<$Res> {
  factory _$$SubscriptionOrderDtoImplCopyWith(_$SubscriptionOrderDtoImpl value,
          $Res Function(_$SubscriptionOrderDtoImpl) then) =
      __$$SubscriptionOrderDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<SubscriptionMealSelection> mealSelections,
      DateTime startDate,
      DateTime endDate});
}

/// @nodoc
class __$$SubscriptionOrderDtoImplCopyWithImpl<$Res>
    extends _$SubscriptionOrderDtoCopyWithImpl<$Res, _$SubscriptionOrderDtoImpl>
    implements _$$SubscriptionOrderDtoImplCopyWith<$Res> {
  __$$SubscriptionOrderDtoImplCopyWithImpl(_$SubscriptionOrderDtoImpl _value,
      $Res Function(_$SubscriptionOrderDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mealSelections = null,
    Object? startDate = null,
    Object? endDate = null,
  }) {
    return _then(_$SubscriptionOrderDtoImpl(
      mealSelections: null == mealSelections
          ? _value._mealSelections
          : mealSelections // ignore: cast_nullable_to_non_nullable
              as List<SubscriptionMealSelection>,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscriptionOrderDtoImpl implements _SubscriptionOrderDto {
  const _$SubscriptionOrderDtoImpl(
      {required final List<SubscriptionMealSelection> mealSelections,
      required this.startDate,
      required this.endDate})
      : _mealSelections = mealSelections;

  factory _$SubscriptionOrderDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubscriptionOrderDtoImplFromJson(json);

  final List<SubscriptionMealSelection> _mealSelections;
  @override
  List<SubscriptionMealSelection> get mealSelections {
    if (_mealSelections is EqualUnmodifiableListView) return _mealSelections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mealSelections);
  }

  @override
  final DateTime startDate;
  @override
  final DateTime endDate;

  @override
  String toString() {
    return 'SubscriptionOrderDto(mealSelections: $mealSelections, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionOrderDtoImpl &&
            const DeepCollectionEquality()
                .equals(other._mealSelections, _mealSelections) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_mealSelections), startDate, endDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionOrderDtoImplCopyWith<_$SubscriptionOrderDtoImpl>
      get copyWith =>
          __$$SubscriptionOrderDtoImplCopyWithImpl<_$SubscriptionOrderDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionOrderDtoImplToJson(
      this,
    );
  }
}

abstract class _SubscriptionOrderDto implements SubscriptionOrderDto {
  const factory _SubscriptionOrderDto(
      {required final List<SubscriptionMealSelection> mealSelections,
      required final DateTime startDate,
      required final DateTime endDate}) = _$SubscriptionOrderDtoImpl;

  factory _SubscriptionOrderDto.fromJson(Map<String, dynamic> json) =
      _$SubscriptionOrderDtoImpl.fromJson;

  @override
  List<SubscriptionMealSelection> get mealSelections;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  @JsonKey(ignore: true)
  _$$SubscriptionOrderDtoImplCopyWith<_$SubscriptionOrderDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
