// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_timeslot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeliveryTimeSlot _$DeliveryTimeSlotFromJson(Map<String, dynamic> json) {
  return _DeliveryTimeSlot.fromJson(json);
}

/// @nodoc
mixin _$DeliveryTimeSlot {
  String get id => throw _privateConstructorUsedError;
  TimeOfDay get startTime => throw _privateConstructorUsedError;
  TimeOfDay get endTime => throw _privateConstructorUsedError;
  List<String> get availableDays => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  String? get specialInstructions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryTimeSlotCopyWith<DeliveryTimeSlot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryTimeSlotCopyWith<$Res> {
  factory $DeliveryTimeSlotCopyWith(
          DeliveryTimeSlot value, $Res Function(DeliveryTimeSlot) then) =
      _$DeliveryTimeSlotCopyWithImpl<$Res, DeliveryTimeSlot>;
  @useResult
  $Res call(
      {String id,
      TimeOfDay startTime,
      TimeOfDay endTime,
      List<String> availableDays,
      bool isActive,
      String? specialInstructions});
}

/// @nodoc
class _$DeliveryTimeSlotCopyWithImpl<$Res, $Val extends DeliveryTimeSlot>
    implements $DeliveryTimeSlotCopyWith<$Res> {
  _$DeliveryTimeSlotCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      availableDays: null == availableDays
          ? _value.availableDays
          : availableDays // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      specialInstructions: freezed == specialInstructions
          ? _value.specialInstructions
          : specialInstructions // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeliveryTimeSlotImplCopyWith<$Res>
    implements $DeliveryTimeSlotCopyWith<$Res> {
  factory _$$DeliveryTimeSlotImplCopyWith(_$DeliveryTimeSlotImpl value,
          $Res Function(_$DeliveryTimeSlotImpl) then) =
      __$$DeliveryTimeSlotImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      TimeOfDay startTime,
      TimeOfDay endTime,
      List<String> availableDays,
      bool isActive,
      String? specialInstructions});
}

/// @nodoc
class __$$DeliveryTimeSlotImplCopyWithImpl<$Res>
    extends _$DeliveryTimeSlotCopyWithImpl<$Res, _$DeliveryTimeSlotImpl>
    implements _$$DeliveryTimeSlotImplCopyWith<$Res> {
  __$$DeliveryTimeSlotImplCopyWithImpl(_$DeliveryTimeSlotImpl _value,
      $Res Function(_$DeliveryTimeSlotImpl) _then)
      : super(_value, _then);

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
    return _then(_$DeliveryTimeSlotImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      availableDays: null == availableDays
          ? _value._availableDays
          : availableDays // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      specialInstructions: freezed == specialInstructions
          ? _value.specialInstructions
          : specialInstructions // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeliveryTimeSlotImpl implements _DeliveryTimeSlot {
  const _$DeliveryTimeSlotImpl(
      {required this.id,
      required this.startTime,
      required this.endTime,
      required final List<String> availableDays,
      this.isActive = true,
      this.specialInstructions})
      : _availableDays = availableDays;

  factory _$DeliveryTimeSlotImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveryTimeSlotImplFromJson(json);

  @override
  final String id;
  @override
  final TimeOfDay startTime;
  @override
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

  @override
  String toString() {
    return 'DeliveryTimeSlot(id: $id, startTime: $startTime, endTime: $endTime, availableDays: $availableDays, isActive: $isActive, specialInstructions: $specialInstructions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryTimeSlotImpl &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      startTime,
      endTime,
      const DeepCollectionEquality().hash(_availableDays),
      isActive,
      specialInstructions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryTimeSlotImplCopyWith<_$DeliveryTimeSlotImpl> get copyWith =>
      __$$DeliveryTimeSlotImplCopyWithImpl<_$DeliveryTimeSlotImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveryTimeSlotImplToJson(
      this,
    );
  }
}

abstract class _DeliveryTimeSlot implements DeliveryTimeSlot {
  const factory _DeliveryTimeSlot(
      {required final String id,
      required final TimeOfDay startTime,
      required final TimeOfDay endTime,
      required final List<String> availableDays,
      final bool isActive,
      final String? specialInstructions}) = _$DeliveryTimeSlotImpl;

  factory _DeliveryTimeSlot.fromJson(Map<String, dynamic> json) =
      _$DeliveryTimeSlotImpl.fromJson;

  @override
  String get id;
  @override
  TimeOfDay get startTime;
  @override
  TimeOfDay get endTime;
  @override
  List<String> get availableDays;
  @override
  bool get isActive;
  @override
  String? get specialInstructions;
  @override
  @JsonKey(ignore: true)
  _$$DeliveryTimeSlotImplCopyWith<_$DeliveryTimeSlotImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
