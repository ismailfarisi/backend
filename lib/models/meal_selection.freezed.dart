// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meal_selection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MealSelection {
  DateTime get date;
  Map<MealType, MenuItem> get selectedMeals;
  DeliveryStatus get deliveryStatus;
  DateTime? get deliveredAt;
  String? get deliveryNote;
  String? get feedbackId;

  /// Create a copy of MealSelection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MealSelectionCopyWith<MealSelection> get copyWith =>
      _$MealSelectionCopyWithImpl<MealSelection>(
          this as MealSelection, _$identity);

  /// Serializes this MealSelection to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MealSelection &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality()
                .equals(other.selectedMeals, selectedMeals) &&
            (identical(other.deliveryStatus, deliveryStatus) ||
                other.deliveryStatus == deliveryStatus) &&
            (identical(other.deliveredAt, deliveredAt) ||
                other.deliveredAt == deliveredAt) &&
            (identical(other.deliveryNote, deliveryNote) ||
                other.deliveryNote == deliveryNote) &&
            (identical(other.feedbackId, feedbackId) ||
                other.feedbackId == feedbackId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      date,
      const DeepCollectionEquality().hash(selectedMeals),
      deliveryStatus,
      deliveredAt,
      deliveryNote,
      feedbackId);

  @override
  String toString() {
    return 'MealSelection(date: $date, selectedMeals: $selectedMeals, deliveryStatus: $deliveryStatus, deliveredAt: $deliveredAt, deliveryNote: $deliveryNote, feedbackId: $feedbackId)';
  }
}

/// @nodoc
abstract mixin class $MealSelectionCopyWith<$Res> {
  factory $MealSelectionCopyWith(
          MealSelection value, $Res Function(MealSelection) _then) =
      _$MealSelectionCopyWithImpl;
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
class _$MealSelectionCopyWithImpl<$Res>
    implements $MealSelectionCopyWith<$Res> {
  _$MealSelectionCopyWithImpl(this._self, this._then);

  final MealSelection _self;
  final $Res Function(MealSelection) _then;

  /// Create a copy of MealSelection
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      selectedMeals: null == selectedMeals
          ? _self.selectedMeals
          : selectedMeals // ignore: cast_nullable_to_non_nullable
              as Map<MealType, MenuItem>,
      deliveryStatus: null == deliveryStatus
          ? _self.deliveryStatus
          : deliveryStatus // ignore: cast_nullable_to_non_nullable
              as DeliveryStatus,
      deliveredAt: freezed == deliveredAt
          ? _self.deliveredAt
          : deliveredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deliveryNote: freezed == deliveryNote
          ? _self.deliveryNote
          : deliveryNote // ignore: cast_nullable_to_non_nullable
              as String?,
      feedbackId: freezed == feedbackId
          ? _self.feedbackId
          : feedbackId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _MealSelection implements MealSelection {
  const _MealSelection(
      {required this.date,
      required final Map<MealType, MenuItem> selectedMeals,
      this.deliveryStatus = DeliveryStatus.scheduled,
      this.deliveredAt,
      this.deliveryNote,
      this.feedbackId})
      : _selectedMeals = selectedMeals;
  factory _MealSelection.fromJson(Map<String, dynamic> json) =>
      _$MealSelectionFromJson(json);

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

  /// Create a copy of MealSelection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MealSelectionCopyWith<_MealSelection> get copyWith =>
      __$MealSelectionCopyWithImpl<_MealSelection>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MealSelectionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MealSelection &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      date,
      const DeepCollectionEquality().hash(_selectedMeals),
      deliveryStatus,
      deliveredAt,
      deliveryNote,
      feedbackId);

  @override
  String toString() {
    return 'MealSelection(date: $date, selectedMeals: $selectedMeals, deliveryStatus: $deliveryStatus, deliveredAt: $deliveredAt, deliveryNote: $deliveryNote, feedbackId: $feedbackId)';
  }
}

/// @nodoc
abstract mixin class _$MealSelectionCopyWith<$Res>
    implements $MealSelectionCopyWith<$Res> {
  factory _$MealSelectionCopyWith(
          _MealSelection value, $Res Function(_MealSelection) _then) =
      __$MealSelectionCopyWithImpl;
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
class __$MealSelectionCopyWithImpl<$Res>
    implements _$MealSelectionCopyWith<$Res> {
  __$MealSelectionCopyWithImpl(this._self, this._then);

  final _MealSelection _self;
  final $Res Function(_MealSelection) _then;

  /// Create a copy of MealSelection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? date = null,
    Object? selectedMeals = null,
    Object? deliveryStatus = null,
    Object? deliveredAt = freezed,
    Object? deliveryNote = freezed,
    Object? feedbackId = freezed,
  }) {
    return _then(_MealSelection(
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      selectedMeals: null == selectedMeals
          ? _self._selectedMeals
          : selectedMeals // ignore: cast_nullable_to_non_nullable
              as Map<MealType, MenuItem>,
      deliveryStatus: null == deliveryStatus
          ? _self.deliveryStatus
          : deliveryStatus // ignore: cast_nullable_to_non_nullable
              as DeliveryStatus,
      deliveredAt: freezed == deliveredAt
          ? _self.deliveredAt
          : deliveredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deliveryNote: freezed == deliveryNote
          ? _self.deliveryNote
          : deliveryNote // ignore: cast_nullable_to_non_nullable
              as String?,
      feedbackId: freezed == feedbackId
          ? _self.feedbackId
          : feedbackId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
