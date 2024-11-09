// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_change.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubscriptionChange _$SubscriptionChangeFromJson(Map<String, dynamic> json) {
  return _SubscriptionChange.fromJson(json);
}

/// @nodoc
mixin _$SubscriptionChange {
  String get id => throw _privateConstructorUsedError;
  DateTime get changeDate => throw _privateConstructorUsedError;
  ChangeType get type => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Map<String, dynamic>? get oldValue => throw _privateConstructorUsedError;
  Map<String, dynamic>? get newValue => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscriptionChangeCopyWith<SubscriptionChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionChangeCopyWith<$Res> {
  factory $SubscriptionChangeCopyWith(
          SubscriptionChange value, $Res Function(SubscriptionChange) then) =
      _$SubscriptionChangeCopyWithImpl<$Res, SubscriptionChange>;
  @useResult
  $Res call(
      {String id,
      DateTime changeDate,
      ChangeType type,
      String description,
      Map<String, dynamic>? oldValue,
      Map<String, dynamic>? newValue,
      String? reason});
}

/// @nodoc
class _$SubscriptionChangeCopyWithImpl<$Res, $Val extends SubscriptionChange>
    implements $SubscriptionChangeCopyWith<$Res> {
  _$SubscriptionChangeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? changeDate = null,
    Object? type = null,
    Object? description = null,
    Object? oldValue = freezed,
    Object? newValue = freezed,
    Object? reason = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      changeDate: null == changeDate
          ? _value.changeDate
          : changeDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ChangeType,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      oldValue: freezed == oldValue
          ? _value.oldValue
          : oldValue // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      newValue: freezed == newValue
          ? _value.newValue
          : newValue // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubscriptionChangeImplCopyWith<$Res>
    implements $SubscriptionChangeCopyWith<$Res> {
  factory _$$SubscriptionChangeImplCopyWith(_$SubscriptionChangeImpl value,
          $Res Function(_$SubscriptionChangeImpl) then) =
      __$$SubscriptionChangeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime changeDate,
      ChangeType type,
      String description,
      Map<String, dynamic>? oldValue,
      Map<String, dynamic>? newValue,
      String? reason});
}

/// @nodoc
class __$$SubscriptionChangeImplCopyWithImpl<$Res>
    extends _$SubscriptionChangeCopyWithImpl<$Res, _$SubscriptionChangeImpl>
    implements _$$SubscriptionChangeImplCopyWith<$Res> {
  __$$SubscriptionChangeImplCopyWithImpl(_$SubscriptionChangeImpl _value,
      $Res Function(_$SubscriptionChangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? changeDate = null,
    Object? type = null,
    Object? description = null,
    Object? oldValue = freezed,
    Object? newValue = freezed,
    Object? reason = freezed,
  }) {
    return _then(_$SubscriptionChangeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      changeDate: null == changeDate
          ? _value.changeDate
          : changeDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ChangeType,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      oldValue: freezed == oldValue
          ? _value._oldValue
          : oldValue // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      newValue: freezed == newValue
          ? _value._newValue
          : newValue // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscriptionChangeImpl implements _SubscriptionChange {
  const _$SubscriptionChangeImpl(
      {required this.id,
      required this.changeDate,
      required this.type,
      required this.description,
      final Map<String, dynamic>? oldValue,
      final Map<String, dynamic>? newValue,
      this.reason})
      : _oldValue = oldValue,
        _newValue = newValue;

  factory _$SubscriptionChangeImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubscriptionChangeImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime changeDate;
  @override
  final ChangeType type;
  @override
  final String description;
  final Map<String, dynamic>? _oldValue;
  @override
  Map<String, dynamic>? get oldValue {
    final value = _oldValue;
    if (value == null) return null;
    if (_oldValue is EqualUnmodifiableMapView) return _oldValue;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _newValue;
  @override
  Map<String, dynamic>? get newValue {
    final value = _newValue;
    if (value == null) return null;
    if (_newValue is EqualUnmodifiableMapView) return _newValue;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? reason;

  @override
  String toString() {
    return 'SubscriptionChange(id: $id, changeDate: $changeDate, type: $type, description: $description, oldValue: $oldValue, newValue: $newValue, reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionChangeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.changeDate, changeDate) ||
                other.changeDate == changeDate) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._oldValue, _oldValue) &&
            const DeepCollectionEquality().equals(other._newValue, _newValue) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      changeDate,
      type,
      description,
      const DeepCollectionEquality().hash(_oldValue),
      const DeepCollectionEquality().hash(_newValue),
      reason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionChangeImplCopyWith<_$SubscriptionChangeImpl> get copyWith =>
      __$$SubscriptionChangeImplCopyWithImpl<_$SubscriptionChangeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionChangeImplToJson(
      this,
    );
  }
}

abstract class _SubscriptionChange implements SubscriptionChange {
  const factory _SubscriptionChange(
      {required final String id,
      required final DateTime changeDate,
      required final ChangeType type,
      required final String description,
      final Map<String, dynamic>? oldValue,
      final Map<String, dynamic>? newValue,
      final String? reason}) = _$SubscriptionChangeImpl;

  factory _SubscriptionChange.fromJson(Map<String, dynamic> json) =
      _$SubscriptionChangeImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get changeDate;
  @override
  ChangeType get type;
  @override
  String get description;
  @override
  Map<String, dynamic>? get oldValue;
  @override
  Map<String, dynamic>? get newValue;
  @override
  String? get reason;
  @override
  @JsonKey(ignore: true)
  _$$SubscriptionChangeImplCopyWith<_$SubscriptionChangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
