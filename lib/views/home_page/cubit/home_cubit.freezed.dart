// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeState {
  Subscription? get subscription;
  AppStatus get status;
  String? get errorMessage;
  List<Vendor> get vendors;
  Vendor? get selectedVendor;
  AppStatus get getVendorsStatus;
  AppStatus get getSubscriptionStatus;
  AppStatus get updateVendorStatus;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeStateCopyWith<HomeState> get copyWith =>
      _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeState &&
            (identical(other.subscription, subscription) ||
                other.subscription == subscription) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(other.vendors, vendors) &&
            (identical(other.selectedVendor, selectedVendor) ||
                other.selectedVendor == selectedVendor) &&
            (identical(other.getVendorsStatus, getVendorsStatus) ||
                other.getVendorsStatus == getVendorsStatus) &&
            (identical(other.getSubscriptionStatus, getSubscriptionStatus) ||
                other.getSubscriptionStatus == getSubscriptionStatus) &&
            (identical(other.updateVendorStatus, updateVendorStatus) ||
                other.updateVendorStatus == updateVendorStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      subscription,
      status,
      errorMessage,
      const DeepCollectionEquality().hash(vendors),
      selectedVendor,
      getVendorsStatus,
      getSubscriptionStatus,
      updateVendorStatus);

  @override
  String toString() {
    return 'HomeState(subscription: $subscription, status: $status, errorMessage: $errorMessage, vendors: $vendors, selectedVendor: $selectedVendor, getVendorsStatus: $getVendorsStatus, getSubscriptionStatus: $getSubscriptionStatus, updateVendorStatus: $updateVendorStatus)';
  }
}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) =
      _$HomeStateCopyWithImpl;
  @useResult
  $Res call(
      {Subscription? subscription,
      AppStatus status,
      String? errorMessage,
      List<Vendor> vendors,
      Vendor? selectedVendor,
      AppStatus getVendorsStatus,
      AppStatus getSubscriptionStatus,
      AppStatus updateVendorStatus});

  $SubscriptionCopyWith<$Res>? get subscription;
  $VendorCopyWith<$Res>? get selectedVendor;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscription = freezed,
    Object? status = null,
    Object? errorMessage = freezed,
    Object? vendors = null,
    Object? selectedVendor = freezed,
    Object? getVendorsStatus = null,
    Object? getSubscriptionStatus = null,
    Object? updateVendorStatus = null,
  }) {
    return _then(_self.copyWith(
      subscription: freezed == subscription
          ? _self.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as Subscription?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      vendors: null == vendors
          ? _self.vendors
          : vendors // ignore: cast_nullable_to_non_nullable
              as List<Vendor>,
      selectedVendor: freezed == selectedVendor
          ? _self.selectedVendor
          : selectedVendor // ignore: cast_nullable_to_non_nullable
              as Vendor?,
      getVendorsStatus: null == getVendorsStatus
          ? _self.getVendorsStatus
          : getVendorsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getSubscriptionStatus: null == getSubscriptionStatus
          ? _self.getSubscriptionStatus
          : getSubscriptionStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      updateVendorStatus: null == updateVendorStatus
          ? _self.updateVendorStatus
          : updateVendorStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
    ));
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubscriptionCopyWith<$Res>? get subscription {
    if (_self.subscription == null) {
      return null;
    }

    return $SubscriptionCopyWith<$Res>(_self.subscription!, (value) {
      return _then(_self.copyWith(subscription: value));
    });
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VendorCopyWith<$Res>? get selectedVendor {
    if (_self.selectedVendor == null) {
      return null;
    }

    return $VendorCopyWith<$Res>(_self.selectedVendor!, (value) {
      return _then(_self.copyWith(selectedVendor: value));
    });
  }
}

/// @nodoc

class _HomeState implements HomeState {
  const _HomeState(
      {this.subscription,
      this.status = AppStatus.init,
      this.errorMessage,
      final List<Vendor> vendors = const [],
      this.selectedVendor,
      this.getVendorsStatus = AppStatus.init,
      this.getSubscriptionStatus = AppStatus.init,
      this.updateVendorStatus = AppStatus.init})
      : _vendors = vendors;

  @override
  final Subscription? subscription;
  @override
  @JsonKey()
  final AppStatus status;
  @override
  final String? errorMessage;
  final List<Vendor> _vendors;
  @override
  @JsonKey()
  List<Vendor> get vendors {
    if (_vendors is EqualUnmodifiableListView) return _vendors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vendors);
  }

  @override
  final Vendor? selectedVendor;
  @override
  @JsonKey()
  final AppStatus getVendorsStatus;
  @override
  @JsonKey()
  final AppStatus getSubscriptionStatus;
  @override
  @JsonKey()
  final AppStatus updateVendorStatus;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeState &&
            (identical(other.subscription, subscription) ||
                other.subscription == subscription) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(other._vendors, _vendors) &&
            (identical(other.selectedVendor, selectedVendor) ||
                other.selectedVendor == selectedVendor) &&
            (identical(other.getVendorsStatus, getVendorsStatus) ||
                other.getVendorsStatus == getVendorsStatus) &&
            (identical(other.getSubscriptionStatus, getSubscriptionStatus) ||
                other.getSubscriptionStatus == getSubscriptionStatus) &&
            (identical(other.updateVendorStatus, updateVendorStatus) ||
                other.updateVendorStatus == updateVendorStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      subscription,
      status,
      errorMessage,
      const DeepCollectionEquality().hash(_vendors),
      selectedVendor,
      getVendorsStatus,
      getSubscriptionStatus,
      updateVendorStatus);

  @override
  String toString() {
    return 'HomeState(subscription: $subscription, status: $status, errorMessage: $errorMessage, vendors: $vendors, selectedVendor: $selectedVendor, getVendorsStatus: $getVendorsStatus, getSubscriptionStatus: $getSubscriptionStatus, updateVendorStatus: $updateVendorStatus)';
  }
}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(
          _HomeState value, $Res Function(_HomeState) _then) =
      __$HomeStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Subscription? subscription,
      AppStatus status,
      String? errorMessage,
      List<Vendor> vendors,
      Vendor? selectedVendor,
      AppStatus getVendorsStatus,
      AppStatus getSubscriptionStatus,
      AppStatus updateVendorStatus});

  @override
  $SubscriptionCopyWith<$Res>? get subscription;
  @override
  $VendorCopyWith<$Res>? get selectedVendor;
}

/// @nodoc
class __$HomeStateCopyWithImpl<$Res> implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? subscription = freezed,
    Object? status = null,
    Object? errorMessage = freezed,
    Object? vendors = null,
    Object? selectedVendor = freezed,
    Object? getVendorsStatus = null,
    Object? getSubscriptionStatus = null,
    Object? updateVendorStatus = null,
  }) {
    return _then(_HomeState(
      subscription: freezed == subscription
          ? _self.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as Subscription?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      vendors: null == vendors
          ? _self._vendors
          : vendors // ignore: cast_nullable_to_non_nullable
              as List<Vendor>,
      selectedVendor: freezed == selectedVendor
          ? _self.selectedVendor
          : selectedVendor // ignore: cast_nullable_to_non_nullable
              as Vendor?,
      getVendorsStatus: null == getVendorsStatus
          ? _self.getVendorsStatus
          : getVendorsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getSubscriptionStatus: null == getSubscriptionStatus
          ? _self.getSubscriptionStatus
          : getSubscriptionStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      updateVendorStatus: null == updateVendorStatus
          ? _self.updateVendorStatus
          : updateVendorStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
    ));
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubscriptionCopyWith<$Res>? get subscription {
    if (_self.subscription == null) {
      return null;
    }

    return $SubscriptionCopyWith<$Res>(_self.subscription!, (value) {
      return _then(_self.copyWith(subscription: value));
    });
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VendorCopyWith<$Res>? get selectedVendor {
    if (_self.selectedVendor == null) {
      return null;
    }

    return $VendorCopyWith<$Res>(_self.selectedVendor!, (value) {
      return _then(_self.copyWith(selectedVendor: value));
    });
  }
}

// dart format on
