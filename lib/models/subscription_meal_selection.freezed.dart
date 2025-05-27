// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_meal_selection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SubscriptionMealSelection {
  MealType get mealType;
  List<String> get vendorIds;

  /// Create a copy of SubscriptionMealSelection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SubscriptionMealSelectionCopyWith<SubscriptionMealSelection> get copyWith =>
      _$SubscriptionMealSelectionCopyWithImpl<SubscriptionMealSelection>(
          this as SubscriptionMealSelection, _$identity);

  /// Serializes this SubscriptionMealSelection to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SubscriptionMealSelection &&
            (identical(other.mealType, mealType) ||
                other.mealType == mealType) &&
            const DeepCollectionEquality().equals(other.vendorIds, vendorIds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, mealType, const DeepCollectionEquality().hash(vendorIds));

  @override
  String toString() {
    return 'SubscriptionMealSelection(mealType: $mealType, vendorIds: $vendorIds)';
  }
}

/// @nodoc
abstract mixin class $SubscriptionMealSelectionCopyWith<$Res> {
  factory $SubscriptionMealSelectionCopyWith(SubscriptionMealSelection value,
          $Res Function(SubscriptionMealSelection) _then) =
      _$SubscriptionMealSelectionCopyWithImpl;
  @useResult
  $Res call({MealType mealType, List<String> vendorIds});
}

/// @nodoc
class _$SubscriptionMealSelectionCopyWithImpl<$Res>
    implements $SubscriptionMealSelectionCopyWith<$Res> {
  _$SubscriptionMealSelectionCopyWithImpl(this._self, this._then);

  final SubscriptionMealSelection _self;
  final $Res Function(SubscriptionMealSelection) _then;

  /// Create a copy of SubscriptionMealSelection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mealType = null,
    Object? vendorIds = null,
  }) {
    return _then(_self.copyWith(
      mealType: null == mealType
          ? _self.mealType
          : mealType // ignore: cast_nullable_to_non_nullable
              as MealType,
      vendorIds: null == vendorIds
          ? _self.vendorIds
          : vendorIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _SubscriptionMealSelection implements SubscriptionMealSelection {
  const _SubscriptionMealSelection(
      {required this.mealType, required final List<String> vendorIds})
      : _vendorIds = vendorIds;
  factory _SubscriptionMealSelection.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionMealSelectionFromJson(json);

  @override
  final MealType mealType;
  final List<String> _vendorIds;
  @override
  List<String> get vendorIds {
    if (_vendorIds is EqualUnmodifiableListView) return _vendorIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vendorIds);
  }

  /// Create a copy of SubscriptionMealSelection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SubscriptionMealSelectionCopyWith<_SubscriptionMealSelection>
      get copyWith =>
          __$SubscriptionMealSelectionCopyWithImpl<_SubscriptionMealSelection>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SubscriptionMealSelectionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SubscriptionMealSelection &&
            (identical(other.mealType, mealType) ||
                other.mealType == mealType) &&
            const DeepCollectionEquality()
                .equals(other._vendorIds, _vendorIds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, mealType, const DeepCollectionEquality().hash(_vendorIds));

  @override
  String toString() {
    return 'SubscriptionMealSelection(mealType: $mealType, vendorIds: $vendorIds)';
  }
}

/// @nodoc
abstract mixin class _$SubscriptionMealSelectionCopyWith<$Res>
    implements $SubscriptionMealSelectionCopyWith<$Res> {
  factory _$SubscriptionMealSelectionCopyWith(_SubscriptionMealSelection value,
          $Res Function(_SubscriptionMealSelection) _then) =
      __$SubscriptionMealSelectionCopyWithImpl;
  @override
  @useResult
  $Res call({MealType mealType, List<String> vendorIds});
}

/// @nodoc
class __$SubscriptionMealSelectionCopyWithImpl<$Res>
    implements _$SubscriptionMealSelectionCopyWith<$Res> {
  __$SubscriptionMealSelectionCopyWithImpl(this._self, this._then);

  final _SubscriptionMealSelection _self;
  final $Res Function(_SubscriptionMealSelection) _then;

  /// Create a copy of SubscriptionMealSelection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? mealType = null,
    Object? vendorIds = null,
  }) {
    return _then(_SubscriptionMealSelection(
      mealType: null == mealType
          ? _self.mealType
          : mealType // ignore: cast_nullable_to_non_nullable
              as MealType,
      vendorIds: null == vendorIds
          ? _self._vendorIds
          : vendorIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
mixin _$SubscriptionOrderDto {
  List<SubscriptionMealSelection> get mealSelections;
  DateTime get startDate;
  DateTime get endDate;

  /// Create a copy of SubscriptionOrderDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SubscriptionOrderDtoCopyWith<SubscriptionOrderDto> get copyWith =>
      _$SubscriptionOrderDtoCopyWithImpl<SubscriptionOrderDto>(
          this as SubscriptionOrderDto, _$identity);

  /// Serializes this SubscriptionOrderDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SubscriptionOrderDto &&
            const DeepCollectionEquality()
                .equals(other.mealSelections, mealSelections) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(mealSelections), startDate, endDate);

  @override
  String toString() {
    return 'SubscriptionOrderDto(mealSelections: $mealSelections, startDate: $startDate, endDate: $endDate)';
  }
}

/// @nodoc
abstract mixin class $SubscriptionOrderDtoCopyWith<$Res> {
  factory $SubscriptionOrderDtoCopyWith(SubscriptionOrderDto value,
          $Res Function(SubscriptionOrderDto) _then) =
      _$SubscriptionOrderDtoCopyWithImpl;
  @useResult
  $Res call(
      {List<SubscriptionMealSelection> mealSelections,
      DateTime startDate,
      DateTime endDate});
}

/// @nodoc
class _$SubscriptionOrderDtoCopyWithImpl<$Res>
    implements $SubscriptionOrderDtoCopyWith<$Res> {
  _$SubscriptionOrderDtoCopyWithImpl(this._self, this._then);

  final SubscriptionOrderDto _self;
  final $Res Function(SubscriptionOrderDto) _then;

  /// Create a copy of SubscriptionOrderDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mealSelections = null,
    Object? startDate = null,
    Object? endDate = null,
  }) {
    return _then(_self.copyWith(
      mealSelections: null == mealSelections
          ? _self.mealSelections
          : mealSelections // ignore: cast_nullable_to_non_nullable
              as List<SubscriptionMealSelection>,
      startDate: null == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _SubscriptionOrderDto implements SubscriptionOrderDto {
  const _SubscriptionOrderDto(
      {required final List<SubscriptionMealSelection> mealSelections,
      required this.startDate,
      required this.endDate})
      : _mealSelections = mealSelections;
  factory _SubscriptionOrderDto.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionOrderDtoFromJson(json);

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

  /// Create a copy of SubscriptionOrderDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SubscriptionOrderDtoCopyWith<_SubscriptionOrderDto> get copyWith =>
      __$SubscriptionOrderDtoCopyWithImpl<_SubscriptionOrderDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SubscriptionOrderDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SubscriptionOrderDto &&
            const DeepCollectionEquality()
                .equals(other._mealSelections, _mealSelections) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_mealSelections), startDate, endDate);

  @override
  String toString() {
    return 'SubscriptionOrderDto(mealSelections: $mealSelections, startDate: $startDate, endDate: $endDate)';
  }
}

/// @nodoc
abstract mixin class _$SubscriptionOrderDtoCopyWith<$Res>
    implements $SubscriptionOrderDtoCopyWith<$Res> {
  factory _$SubscriptionOrderDtoCopyWith(_SubscriptionOrderDto value,
          $Res Function(_SubscriptionOrderDto) _then) =
      __$SubscriptionOrderDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<SubscriptionMealSelection> mealSelections,
      DateTime startDate,
      DateTime endDate});
}

/// @nodoc
class __$SubscriptionOrderDtoCopyWithImpl<$Res>
    implements _$SubscriptionOrderDtoCopyWith<$Res> {
  __$SubscriptionOrderDtoCopyWithImpl(this._self, this._then);

  final _SubscriptionOrderDto _self;
  final $Res Function(_SubscriptionOrderDto) _then;

  /// Create a copy of SubscriptionOrderDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? mealSelections = null,
    Object? startDate = null,
    Object? endDate = null,
  }) {
    return _then(_SubscriptionOrderDto(
      mealSelections: null == mealSelections
          ? _self._mealSelections
          : mealSelections // ignore: cast_nullable_to_non_nullable
              as List<SubscriptionMealSelection>,
      startDate: null == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

// dart format on
