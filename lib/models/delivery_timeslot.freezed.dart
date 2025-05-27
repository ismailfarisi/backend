// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_timeslot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeliveryTimeSlot {
  String get id;
  @TimeOfDayConverter()
  TimeOfDay get startTime;
  @TimeOfDayConverter()
  TimeOfDay get endTime;
  List<String> get availableDays;
  bool get isActive;
  String? get specialInstructions;

  /// Create a copy of DeliveryTimeSlot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DeliveryTimeSlotCopyWith<DeliveryTimeSlot> get copyWith =>
      _$DeliveryTimeSlotCopyWithImpl<DeliveryTimeSlot>(
          this as DeliveryTimeSlot, _$identity);

  /// Serializes this DeliveryTimeSlot to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeliveryTimeSlot &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            const DeepCollectionEquality()
                .equals(other.availableDays, availableDays) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.specialInstructions, specialInstructions) ||
                other.specialInstructions == specialInstructions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      startTime,
      endTime,
      const DeepCollectionEquality().hash(availableDays),
      isActive,
      specialInstructions);

  @override
  String toString() {
    return 'DeliveryTimeSlot(id: $id, startTime: $startTime, endTime: $endTime, availableDays: $availableDays, isActive: $isActive, specialInstructions: $specialInstructions)';
  }
}

/// @nodoc
abstract mixin class $DeliveryTimeSlotCopyWith<$Res> {
  factory $DeliveryTimeSlotCopyWith(
          DeliveryTimeSlot value, $Res Function(DeliveryTimeSlot) _then) =
      _$DeliveryTimeSlotCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      @TimeOfDayConverter() TimeOfDay startTime,
      @TimeOfDayConverter() TimeOfDay endTime,
      List<String> availableDays,
      bool isActive,
      String? specialInstructions});
}

/// @nodoc
class _$DeliveryTimeSlotCopyWithImpl<$Res>
    implements $DeliveryTimeSlotCopyWith<$Res> {
  _$DeliveryTimeSlotCopyWithImpl(this._self, this._then);

  final DeliveryTimeSlot _self;
  final $Res Function(DeliveryTimeSlot) _then;

  /// Create a copy of DeliveryTimeSlot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? availableDays = null,
    Object? isActive = null,
    Object? specialInstructions = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _self.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      endTime: null == endTime
          ? _self.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      availableDays: null == availableDays
          ? _self.availableDays
          : availableDays // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isActive: null == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      specialInstructions: freezed == specialInstructions
          ? _self.specialInstructions
          : specialInstructions // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _DeliveryTimeSlot implements DeliveryTimeSlot {
  const _DeliveryTimeSlot(
      {required this.id,
      @TimeOfDayConverter() required this.startTime,
      @TimeOfDayConverter() required this.endTime,
      required final List<String> availableDays,
      this.isActive = true,
      this.specialInstructions})
      : _availableDays = availableDays;
  factory _DeliveryTimeSlot.fromJson(Map<String, dynamic> json) =>
      _$DeliveryTimeSlotFromJson(json);

  @override
  final String id;
  @override
  @TimeOfDayConverter()
  final TimeOfDay startTime;
  @override
  @TimeOfDayConverter()
  final TimeOfDay endTime;
  final List<String> _availableDays;
  @override
  List<String> get availableDays {
    if (_availableDays is EqualUnmodifiableListView) return _availableDays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableDays);
  }

  @override
  @JsonKey()
  final bool isActive;
  @override
  final String? specialInstructions;

  /// Create a copy of DeliveryTimeSlot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DeliveryTimeSlotCopyWith<_DeliveryTimeSlot> get copyWith =>
      __$DeliveryTimeSlotCopyWithImpl<_DeliveryTimeSlot>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DeliveryTimeSlotToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeliveryTimeSlot &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            const DeepCollectionEquality()
                .equals(other._availableDays, _availableDays) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.specialInstructions, specialInstructions) ||
                other.specialInstructions == specialInstructions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      startTime,
      endTime,
      const DeepCollectionEquality().hash(_availableDays),
      isActive,
      specialInstructions);

  @override
  String toString() {
    return 'DeliveryTimeSlot(id: $id, startTime: $startTime, endTime: $endTime, availableDays: $availableDays, isActive: $isActive, specialInstructions: $specialInstructions)';
  }
}

/// @nodoc
abstract mixin class _$DeliveryTimeSlotCopyWith<$Res>
    implements $DeliveryTimeSlotCopyWith<$Res> {
  factory _$DeliveryTimeSlotCopyWith(
          _DeliveryTimeSlot value, $Res Function(_DeliveryTimeSlot) _then) =
      __$DeliveryTimeSlotCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      @TimeOfDayConverter() TimeOfDay startTime,
      @TimeOfDayConverter() TimeOfDay endTime,
      List<String> availableDays,
      bool isActive,
      String? specialInstructions});
}

/// @nodoc
class __$DeliveryTimeSlotCopyWithImpl<$Res>
    implements _$DeliveryTimeSlotCopyWith<$Res> {
  __$DeliveryTimeSlotCopyWithImpl(this._self, this._then);

  final _DeliveryTimeSlot _self;
  final $Res Function(_DeliveryTimeSlot) _then;

  /// Create a copy of DeliveryTimeSlot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? availableDays = null,
    Object? isActive = null,
    Object? specialInstructions = freezed,
  }) {
    return _then(_DeliveryTimeSlot(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _self.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      endTime: null == endTime
          ? _self.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      availableDays: null == availableDays
          ? _self._availableDays
          : availableDays // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isActive: null == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      specialInstructions: freezed == specialInstructions
          ? _self.specialInstructions
          : specialInstructions // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
