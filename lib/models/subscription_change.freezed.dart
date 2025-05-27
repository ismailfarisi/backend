// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_change.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SubscriptionChange {
  String get id;
  DateTime get changeDate;
  ChangeType get type;
  String get description;
  Map<String, dynamic>? get oldValue;
  Map<String, dynamic>? get newValue;
  String? get reason;

  /// Create a copy of SubscriptionChange
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SubscriptionChangeCopyWith<SubscriptionChange> get copyWith =>
      _$SubscriptionChangeCopyWithImpl<SubscriptionChange>(
          this as SubscriptionChange, _$identity);

  /// Serializes this SubscriptionChange to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SubscriptionChange &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.changeDate, changeDate) ||
                other.changeDate == changeDate) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other.oldValue, oldValue) &&
            const DeepCollectionEquality().equals(other.newValue, newValue) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      changeDate,
      type,
      description,
      const DeepCollectionEquality().hash(oldValue),
      const DeepCollectionEquality().hash(newValue),
      reason);

  @override
  String toString() {
    return 'SubscriptionChange(id: $id, changeDate: $changeDate, type: $type, description: $description, oldValue: $oldValue, newValue: $newValue, reason: $reason)';
  }
}

/// @nodoc
abstract mixin class $SubscriptionChangeCopyWith<$Res> {
  factory $SubscriptionChangeCopyWith(
          SubscriptionChange value, $Res Function(SubscriptionChange) _then) =
      _$SubscriptionChangeCopyWithImpl;
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
class _$SubscriptionChangeCopyWithImpl<$Res>
    implements $SubscriptionChangeCopyWith<$Res> {
  _$SubscriptionChangeCopyWithImpl(this._self, this._then);

  final SubscriptionChange _self;
  final $Res Function(SubscriptionChange) _then;

  /// Create a copy of SubscriptionChange
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      changeDate: null == changeDate
          ? _self.changeDate
          : changeDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as ChangeType,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      oldValue: freezed == oldValue
          ? _self.oldValue
          : oldValue // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      newValue: freezed == newValue
          ? _self.newValue
          : newValue // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      reason: freezed == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _SubscriptionChange implements SubscriptionChange {
  const _SubscriptionChange(
      {required this.id,
      required this.changeDate,
      required this.type,
      required this.description,
      final Map<String, dynamic>? oldValue,
      final Map<String, dynamic>? newValue,
      this.reason})
      : _oldValue = oldValue,
        _newValue = newValue;
  factory _SubscriptionChange.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionChangeFromJson(json);

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

  /// Create a copy of SubscriptionChange
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SubscriptionChangeCopyWith<_SubscriptionChange> get copyWith =>
      __$SubscriptionChangeCopyWithImpl<_SubscriptionChange>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SubscriptionChangeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SubscriptionChange &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'SubscriptionChange(id: $id, changeDate: $changeDate, type: $type, description: $description, oldValue: $oldValue, newValue: $newValue, reason: $reason)';
  }
}

/// @nodoc
abstract mixin class _$SubscriptionChangeCopyWith<$Res>
    implements $SubscriptionChangeCopyWith<$Res> {
  factory _$SubscriptionChangeCopyWith(
          _SubscriptionChange value, $Res Function(_SubscriptionChange) _then) =
      __$SubscriptionChangeCopyWithImpl;
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
class __$SubscriptionChangeCopyWithImpl<$Res>
    implements _$SubscriptionChangeCopyWith<$Res> {
  __$SubscriptionChangeCopyWithImpl(this._self, this._then);

  final _SubscriptionChange _self;
  final $Res Function(_SubscriptionChange) _then;

  /// Create a copy of SubscriptionChange
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? changeDate = null,
    Object? type = null,
    Object? description = null,
    Object? oldValue = freezed,
    Object? newValue = freezed,
    Object? reason = freezed,
  }) {
    return _then(_SubscriptionChange(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      changeDate: null == changeDate
          ? _self.changeDate
          : changeDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as ChangeType,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      oldValue: freezed == oldValue
          ? _self._oldValue
          : oldValue // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      newValue: freezed == newValue
          ? _self._newValue
          : newValue // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      reason: freezed == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
