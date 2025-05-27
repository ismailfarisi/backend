// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProfileState {
  User? get userProfile;
  AppStatus get status;
  String? get errorMessage;
  AppStatus get updateStatus;
  String? get updateErrorMessage;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      _$ProfileStateCopyWithImpl<ProfileState>(
          this as ProfileState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProfileState &&
            (identical(other.userProfile, userProfile) ||
                other.userProfile == userProfile) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.updateStatus, updateStatus) ||
                other.updateStatus == updateStatus) &&
            (identical(other.updateErrorMessage, updateErrorMessage) ||
                other.updateErrorMessage == updateErrorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userProfile, status,
      errorMessage, updateStatus, updateErrorMessage);

  @override
  String toString() {
    return 'ProfileState(userProfile: $userProfile, status: $status, errorMessage: $errorMessage, updateStatus: $updateStatus, updateErrorMessage: $updateErrorMessage)';
  }
}

/// @nodoc
abstract mixin class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) _then) =
      _$ProfileStateCopyWithImpl;
  @useResult
  $Res call(
      {User? userProfile,
      AppStatus status,
      String? errorMessage,
      AppStatus updateStatus,
      String? updateErrorMessage});

  $UserCopyWith<$Res>? get userProfile;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._self, this._then);

  final ProfileState _self;
  final $Res Function(ProfileState) _then;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userProfile = freezed,
    Object? status = null,
    Object? errorMessage = freezed,
    Object? updateStatus = null,
    Object? updateErrorMessage = freezed,
  }) {
    return _then(_self.copyWith(
      userProfile: freezed == userProfile
          ? _self.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as User?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      updateStatus: null == updateStatus
          ? _self.updateStatus
          : updateStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      updateErrorMessage: freezed == updateErrorMessage
          ? _self.updateErrorMessage
          : updateErrorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get userProfile {
    if (_self.userProfile == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_self.userProfile!, (value) {
      return _then(_self.copyWith(userProfile: value));
    });
  }
}

/// @nodoc

class _ProfileState implements ProfileState {
  const _ProfileState(
      {this.userProfile,
      this.status = AppStatus.init,
      this.errorMessage,
      this.updateStatus = AppStatus.init,
      this.updateErrorMessage});

  @override
  final User? userProfile;
  @override
  @JsonKey()
  final AppStatus status;
  @override
  final String? errorMessage;
  @override
  @JsonKey()
  final AppStatus updateStatus;
  @override
  final String? updateErrorMessage;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProfileStateCopyWith<_ProfileState> get copyWith =>
      __$ProfileStateCopyWithImpl<_ProfileState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProfileState &&
            (identical(other.userProfile, userProfile) ||
                other.userProfile == userProfile) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.updateStatus, updateStatus) ||
                other.updateStatus == updateStatus) &&
            (identical(other.updateErrorMessage, updateErrorMessage) ||
                other.updateErrorMessage == updateErrorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userProfile, status,
      errorMessage, updateStatus, updateErrorMessage);

  @override
  String toString() {
    return 'ProfileState(userProfile: $userProfile, status: $status, errorMessage: $errorMessage, updateStatus: $updateStatus, updateErrorMessage: $updateErrorMessage)';
  }
}

/// @nodoc
abstract mixin class _$ProfileStateCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$ProfileStateCopyWith(
          _ProfileState value, $Res Function(_ProfileState) _then) =
      __$ProfileStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {User? userProfile,
      AppStatus status,
      String? errorMessage,
      AppStatus updateStatus,
      String? updateErrorMessage});

  @override
  $UserCopyWith<$Res>? get userProfile;
}

/// @nodoc
class __$ProfileStateCopyWithImpl<$Res>
    implements _$ProfileStateCopyWith<$Res> {
  __$ProfileStateCopyWithImpl(this._self, this._then);

  final _ProfileState _self;
  final $Res Function(_ProfileState) _then;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? userProfile = freezed,
    Object? status = null,
    Object? errorMessage = freezed,
    Object? updateStatus = null,
    Object? updateErrorMessage = freezed,
  }) {
    return _then(_ProfileState(
      userProfile: freezed == userProfile
          ? _self.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as User?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      updateStatus: null == updateStatus
          ? _self.updateStatus
          : updateStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      updateErrorMessage: freezed == updateErrorMessage
          ? _self.updateErrorMessage
          : updateErrorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get userProfile {
    if (_self.userProfile == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_self.userProfile!, (value) {
      return _then(_self.copyWith(userProfile: value));
    });
  }
}

// dart format on
