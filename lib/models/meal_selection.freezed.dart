// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meal_selection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MealSelection _$MealSelectionFromJson(Map<String, dynamic> json) {
  return _MealSelection.fromJson(json);
}

/// @nodoc
mixin _$MealSelection {
  DateTime get date => throw _privateConstructorUsedError;
  Map<MealType, MenuItem> get selectedMeals =>
      throw _privateConstructorUsedError;
  DeliveryStatus get deliveryStatus => throw _privateConstructorUsedError;
  DateTime? get deliveredAt => throw _privateConstructorUsedError;
  String? get deliveryNote => throw _privateConstructorUsedError;
  String? get feedbackId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MealSelectionCopyWith<MealSelection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealSelectionCopyWith<$Res> {
  factory $MealSelectionCopyWith(
          MealSelection value, $Res Function(MealSelection) then) =
      _$MealSelectionCopyWithImpl<$Res, MealSelection>;
  @useResult
  $Res call(
      {DateTime date,
      Map<MealType, MenuItem> selectedMeals,
      DeliveryStatus deliveryStatus,
      DateTime? deliveredAt,
      String? deliveryNote,
      String? feedbackId});
}

/// @nodoc
class _$MealSelectionCopyWithImpl<$Res, $Val extends MealSelection>
    implements $MealSelectionCopyWith<$Res> {
  _$MealSelectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? selectedMeals = null,
    Object? deliveryStatus = null,
    Object? deliveredAt = freezed,
    Object? deliveryNote = freezed,
    Object? feedbackId = freezed,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      selectedMeals: null == selectedMeals
          ? _value.selectedMeals
          : selectedMeals // ignore: cast_nullable_to_non_nullable
              as Map<MealType, MenuItem>,
      deliveryStatus: null == deliveryStatus
          ? _value.deliveryStatus
          : deliveryStatus // ignore: cast_nullable_to_non_nullable
              as DeliveryStatus,
      deliveredAt: freezed == deliveredAt
          ? _value.deliveredAt
          : deliveredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deliveryNote: freezed == deliveryNote
          ? _value.deliveryNote
          : deliveryNote // ignore: cast_nullable_to_non_nullable
              as String?,
      feedbackId: freezed == feedbackId
          ? _value.feedbackId
          : feedbackId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MealSelectionImplCopyWith<$Res>
    implements $MealSelectionCopyWith<$Res> {
  factory _$$MealSelectionImplCopyWith(
          _$MealSelectionImpl value, $Res Function(_$MealSelectionImpl) then) =
      __$$MealSelectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime date,
      Map<MealType, MenuItem> selectedMeals,
      DeliveryStatus deliveryStatus,
      DateTime? deliveredAt,
      String? deliveryNote,
      String? feedbackId});
}

/// @nodoc
class __$$MealSelectionImplCopyWithImpl<$Res>
    extends _$MealSelectionCopyWithImpl<$Res, _$MealSelectionImpl>
    implements _$$MealSelectionImplCopyWith<$Res> {
  __$$MealSelectionImplCopyWithImpl(
      _$MealSelectionImpl _value, $Res Function(_$MealSelectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? selectedMeals = null,
    Object? deliveryStatus = null,
    Object? deliveredAt = freezed,
    Object? deliveryNote = freezed,
    Object? feedbackId = freezed,
  }) {
    return _then(_$MealSelectionImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      selectedMeals: null == selectedMeals
          ? _value._selectedMeals
          : selectedMeals // ignore: cast_nullable_to_non_nullable
              as Map<MealType, MenuItem>,
      deliveryStatus: null == deliveryStatus
          ? _value.deliveryStatus
          : deliveryStatus // ignore: cast_nullable_to_non_nullable
              as DeliveryStatus,
      deliveredAt: freezed == deliveredAt
          ? _value.deliveredAt
          : deliveredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deliveryNote: freezed == deliveryNote
          ? _value.deliveryNote
          : deliveryNote // ignore: cast_nullable_to_non_nullable
              as String?,
      feedbackId: freezed == feedbackId
          ? _value.feedbackId
          : feedbackId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MealSelectionImpl implements _MealSelection {
  const _$MealSelectionImpl(
      {required this.date,
      required final Map<MealType, MenuItem> selectedMeals,
      this.deliveryStatus = DeliveryStatus.scheduled,
      this.deliveredAt,
      this.deliveryNote,
      this.feedbackId})
      : _selectedMeals = selectedMeals;

  factory _$MealSelectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$MealSelectionImplFromJson(json);

  @override
  final DateTime date;
  final Map<MealType, MenuItem> _selectedMeals;
  @override
  Map<MealType, MenuItem> get selectedMeals {
    if (_selectedMeals is EqualUnmodifiableMapView) return _selectedMeals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_selectedMeals);
  }

  @override
  @JsonKey()
  final DeliveryStatus deliveryStatus;
  @override
  final DateTime? deliveredAt;
  @override
  final String? deliveryNote;
  @override
  final String? feedbackId;

  @override
  String toString() {
    return 'MealSelection(date: $date, selectedMeals: $selectedMeals, deliveryStatus: $deliveryStatus, deliveredAt: $deliveredAt, deliveryNote: $deliveryNote, feedbackId: $feedbackId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MealSelectionImpl &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality()
                .equals(other._selectedMeals, _selectedMeals) &&
            (identical(other.deliveryStatus, deliveryStatus) ||
                other.deliveryStatus == deliveryStatus) &&
            (identical(other.deliveredAt, deliveredAt) ||
                other.deliveredAt == deliveredAt) &&
            (identical(other.deliveryNote, deliveryNote) ||
                other.deliveryNote == deliveryNote) &&
            (identical(other.feedbackId, feedbackId) ||
                other.feedbackId == feedbackId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      date,
      const DeepCollectionEquality().hash(_selectedMeals),
      deliveryStatus,
      deliveredAt,
      deliveryNote,
      feedbackId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MealSelectionImplCopyWith<_$MealSelectionImpl> get copyWith =>
      __$$MealSelectionImplCopyWithImpl<_$MealSelectionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MealSelectionImplToJson(
      this,
    );
  }
}

abstract class _MealSelection implements MealSelection {
  const factory _MealSelection(
      {required final DateTime date,
      required final Map<MealType, MenuItem> selectedMeals,
      final DeliveryStatus deliveryStatus,
      final DateTime? deliveredAt,
      final String? deliveryNote,
      final String? feedbackId}) = _$MealSelectionImpl;

  factory _MealSelection.fromJson(Map<String, dynamic> json) =
      _$MealSelectionImpl.fromJson;

  @override
  DateTime get date;
  @override
  Map<MealType, MenuItem> get selectedMeals;
  @override
  DeliveryStatus get deliveryStatus;
  @override
  DateTime? get deliveredAt;
  @override
  String? get deliveryNote;
  @override
  String? get feedbackId;
  @override
  @JsonKey(ignore: true)
  _$$MealSelectionImplCopyWith<_$MealSelectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
