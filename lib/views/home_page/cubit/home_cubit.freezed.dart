// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  Subscription? get subscription => throw _privateConstructorUsedError;
  AppStatus get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  List<Vendor> get vendors => throw _privateConstructorUsedError;
  Vendor? get selectedVendor => throw _privateConstructorUsedError;
  AppStatus get getVendorsStatus => throw _privateConstructorUsedError;
  AppStatus get getSubscriptionStatus => throw _privateConstructorUsedError;
  AppStatus get updateVendorStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
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
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      subscription: freezed == subscription
          ? _value.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as Subscription?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      vendors: null == vendors
          ? _value.vendors
          : vendors // ignore: cast_nullable_to_non_nullable
              as List<Vendor>,
      selectedVendor: freezed == selectedVendor
          ? _value.selectedVendor
          : selectedVendor // ignore: cast_nullable_to_non_nullable
              as Vendor?,
      getVendorsStatus: null == getVendorsStatus
          ? _value.getVendorsStatus
          : getVendorsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getSubscriptionStatus: null == getSubscriptionStatus
          ? _value.getSubscriptionStatus
          : getSubscriptionStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      updateVendorStatus: null == updateVendorStatus
          ? _value.updateVendorStatus
          : updateVendorStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SubscriptionCopyWith<$Res>? get subscription {
    if (_value.subscription == null) {
      return null;
    }

    return $SubscriptionCopyWith<$Res>(_value.subscription!, (value) {
      return _then(_value.copyWith(subscription: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $VendorCopyWith<$Res>? get selectedVendor {
    if (_value.selectedVendor == null) {
      return null;
    }

    return $VendorCopyWith<$Res>(_value.selectedVendor!, (value) {
      return _then(_value.copyWith(selectedVendor: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
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
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

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
    return _then(_$HomeStateImpl(
      subscription: freezed == subscription
          ? _value.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as Subscription?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      vendors: null == vendors
          ? _value._vendors
          : vendors // ignore: cast_nullable_to_non_nullable
              as List<Vendor>,
      selectedVendor: freezed == selectedVendor
          ? _value.selectedVendor
          : selectedVendor // ignore: cast_nullable_to_non_nullable
              as Vendor?,
      getVendorsStatus: null == getVendorsStatus
          ? _value.getVendorsStatus
          : getVendorsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getSubscriptionStatus: null == getSubscriptionStatus
          ? _value.getSubscriptionStatus
          : getSubscriptionStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      updateVendorStatus: null == updateVendorStatus
          ? _value.updateVendorStatus
          : updateVendorStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
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

  @override
  String toString() {
    return 'HomeState(subscription: $subscription, status: $status, errorMessage: $errorMessage, vendors: $vendors, selectedVendor: $selectedVendor, getVendorsStatus: $getVendorsStatus, getSubscriptionStatus: $getSubscriptionStatus, updateVendorStatus: $updateVendorStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final Subscription? subscription,
      final AppStatus status,
      final String? errorMessage,
      final List<Vendor> vendors,
      final Vendor? selectedVendor,
      final AppStatus getVendorsStatus,
      final AppStatus getSubscriptionStatus,
      final AppStatus updateVendorStatus}) = _$HomeStateImpl;

  @override
  Subscription? get subscription;
  @override
  AppStatus get status;
  @override
  String? get errorMessage;
  @override
  List<Vendor> get vendors;
  @override
  Vendor? get selectedVendor;
  @override
  AppStatus get getVendorsStatus;
  @override
  AppStatus get getSubscriptionStatus;
  @override
  AppStatus get updateVendorStatus;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
