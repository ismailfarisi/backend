// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SubscriptionState {
  AppStatus get status => throw _privateConstructorUsedError;
  AppStatus get getVendorsStatus => throw _privateConstructorUsedError;
  AppStatus get updateVendorStatus => throw _privateConstructorUsedError;
  AppStatus get submitStatus => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  List<MealType> get selectedMealTypes => throw _privateConstructorUsedError;
  Map<MealType, List<String>>? get selectedVendors =>
      throw _privateConstructorUsedError;
  Map<MealType, List<Vendor>>? get availableVendors =>
      throw _privateConstructorUsedError;
  Subscription? get subscriptionPlan => throw _privateConstructorUsedError;
  DeliveryAddress? get deliveryLocation => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubscriptionStateCopyWith<SubscriptionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionStateCopyWith<$Res> {
  factory $SubscriptionStateCopyWith(
          SubscriptionState value, $Res Function(SubscriptionState) then) =
      _$SubscriptionStateCopyWithImpl<$Res, SubscriptionState>;
  @useResult
  $Res call(
      {AppStatus status,
      AppStatus getVendorsStatus,
      AppStatus updateVendorStatus,
      AppStatus submitStatus,
      String? errorMessage,
      List<MealType> selectedMealTypes,
      Map<MealType, List<String>>? selectedVendors,
      Map<MealType, List<Vendor>>? availableVendors,
      Subscription? subscriptionPlan,
      DeliveryAddress? deliveryLocation});

  $SubscriptionCopyWith<$Res>? get subscriptionPlan;
  $DeliveryAddressCopyWith<$Res>? get deliveryLocation;
}

/// @nodoc
class _$SubscriptionStateCopyWithImpl<$Res, $Val extends SubscriptionState>
    implements $SubscriptionStateCopyWith<$Res> {
  _$SubscriptionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? getVendorsStatus = null,
    Object? updateVendorStatus = null,
    Object? submitStatus = null,
    Object? errorMessage = freezed,
    Object? selectedMealTypes = null,
    Object? selectedVendors = freezed,
    Object? availableVendors = freezed,
    Object? subscriptionPlan = freezed,
    Object? deliveryLocation = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getVendorsStatus: null == getVendorsStatus
          ? _value.getVendorsStatus
          : getVendorsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      updateVendorStatus: null == updateVendorStatus
          ? _value.updateVendorStatus
          : updateVendorStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      submitStatus: null == submitStatus
          ? _value.submitStatus
          : submitStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedMealTypes: null == selectedMealTypes
          ? _value.selectedMealTypes
          : selectedMealTypes // ignore: cast_nullable_to_non_nullable
              as List<MealType>,
      selectedVendors: freezed == selectedVendors
          ? _value.selectedVendors
          : selectedVendors // ignore: cast_nullable_to_non_nullable
              as Map<MealType, List<String>>?,
      availableVendors: freezed == availableVendors
          ? _value.availableVendors
          : availableVendors // ignore: cast_nullable_to_non_nullable
              as Map<MealType, List<Vendor>>?,
      subscriptionPlan: freezed == subscriptionPlan
          ? _value.subscriptionPlan
          : subscriptionPlan // ignore: cast_nullable_to_non_nullable
              as Subscription?,
      deliveryLocation: freezed == deliveryLocation
          ? _value.deliveryLocation
          : deliveryLocation // ignore: cast_nullable_to_non_nullable
              as DeliveryAddress?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SubscriptionCopyWith<$Res>? get subscriptionPlan {
    if (_value.subscriptionPlan == null) {
      return null;
    }

    return $SubscriptionCopyWith<$Res>(_value.subscriptionPlan!, (value) {
      return _then(_value.copyWith(subscriptionPlan: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DeliveryAddressCopyWith<$Res>? get deliveryLocation {
    if (_value.deliveryLocation == null) {
      return null;
    }

    return $DeliveryAddressCopyWith<$Res>(_value.deliveryLocation!, (value) {
      return _then(_value.copyWith(deliveryLocation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubscriptionStateImplCopyWith<$Res>
    implements $SubscriptionStateCopyWith<$Res> {
  factory _$$SubscriptionStateImplCopyWith(_$SubscriptionStateImpl value,
          $Res Function(_$SubscriptionStateImpl) then) =
      __$$SubscriptionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppStatus status,
      AppStatus getVendorsStatus,
      AppStatus updateVendorStatus,
      AppStatus submitStatus,
      String? errorMessage,
      List<MealType> selectedMealTypes,
      Map<MealType, List<String>>? selectedVendors,
      Map<MealType, List<Vendor>>? availableVendors,
      Subscription? subscriptionPlan,
      DeliveryAddress? deliveryLocation});

  @override
  $SubscriptionCopyWith<$Res>? get subscriptionPlan;
  @override
  $DeliveryAddressCopyWith<$Res>? get deliveryLocation;
}

/// @nodoc
class __$$SubscriptionStateImplCopyWithImpl<$Res>
    extends _$SubscriptionStateCopyWithImpl<$Res, _$SubscriptionStateImpl>
    implements _$$SubscriptionStateImplCopyWith<$Res> {
  __$$SubscriptionStateImplCopyWithImpl(_$SubscriptionStateImpl _value,
      $Res Function(_$SubscriptionStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? getVendorsStatus = null,
    Object? updateVendorStatus = null,
    Object? submitStatus = null,
    Object? errorMessage = freezed,
    Object? selectedMealTypes = null,
    Object? selectedVendors = freezed,
    Object? availableVendors = freezed,
    Object? subscriptionPlan = freezed,
    Object? deliveryLocation = freezed,
  }) {
    return _then(_$SubscriptionStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getVendorsStatus: null == getVendorsStatus
          ? _value.getVendorsStatus
          : getVendorsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      updateVendorStatus: null == updateVendorStatus
          ? _value.updateVendorStatus
          : updateVendorStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      submitStatus: null == submitStatus
          ? _value.submitStatus
          : submitStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedMealTypes: null == selectedMealTypes
          ? _value._selectedMealTypes
          : selectedMealTypes // ignore: cast_nullable_to_non_nullable
              as List<MealType>,
      selectedVendors: freezed == selectedVendors
          ? _value._selectedVendors
          : selectedVendors // ignore: cast_nullable_to_non_nullable
              as Map<MealType, List<String>>?,
      availableVendors: freezed == availableVendors
          ? _value._availableVendors
          : availableVendors // ignore: cast_nullable_to_non_nullable
              as Map<MealType, List<Vendor>>?,
      subscriptionPlan: freezed == subscriptionPlan
          ? _value.subscriptionPlan
          : subscriptionPlan // ignore: cast_nullable_to_non_nullable
              as Subscription?,
      deliveryLocation: freezed == deliveryLocation
          ? _value.deliveryLocation
          : deliveryLocation // ignore: cast_nullable_to_non_nullable
              as DeliveryAddress?,
    ));
  }
}

/// @nodoc

class _$SubscriptionStateImpl implements _SubscriptionState {
  const _$SubscriptionStateImpl(
      {this.status = AppStatus.init,
      this.getVendorsStatus = AppStatus.init,
      this.updateVendorStatus = AppStatus.init,
      this.submitStatus = AppStatus.init,
      this.errorMessage,
      final List<MealType> selectedMealTypes = const [],
      final Map<MealType, List<String>>? selectedVendors,
      final Map<MealType, List<Vendor>>? availableVendors,
      this.subscriptionPlan,
      this.deliveryLocation})
      : _selectedMealTypes = selectedMealTypes,
        _selectedVendors = selectedVendors,
        _availableVendors = availableVendors;

  @override
  @JsonKey()
  final AppStatus status;
  @override
  @JsonKey()
  final AppStatus getVendorsStatus;
  @override
  @JsonKey()
  final AppStatus updateVendorStatus;
  @override
  @JsonKey()
  final AppStatus submitStatus;
  @override
  final String? errorMessage;
  final List<MealType> _selectedMealTypes;
  @override
  @JsonKey()
  List<MealType> get selectedMealTypes {
    if (_selectedMealTypes is EqualUnmodifiableListView)
      return _selectedMealTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedMealTypes);
  }

  final Map<MealType, List<String>>? _selectedVendors;
  @override
  Map<MealType, List<String>>? get selectedVendors {
    final value = _selectedVendors;
    if (value == null) return null;
    if (_selectedVendors is EqualUnmodifiableMapView) return _selectedVendors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<MealType, List<Vendor>>? _availableVendors;
  @override
  Map<MealType, List<Vendor>>? get availableVendors {
    final value = _availableVendors;
    if (value == null) return null;
    if (_availableVendors is EqualUnmodifiableMapView) return _availableVendors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final Subscription? subscriptionPlan;
  @override
  final DeliveryAddress? deliveryLocation;

  @override
  String toString() {
    return 'SubscriptionState(status: $status, getVendorsStatus: $getVendorsStatus, updateVendorStatus: $updateVendorStatus, submitStatus: $submitStatus, errorMessage: $errorMessage, selectedMealTypes: $selectedMealTypes, selectedVendors: $selectedVendors, availableVendors: $availableVendors, subscriptionPlan: $subscriptionPlan, deliveryLocation: $deliveryLocation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.getVendorsStatus, getVendorsStatus) ||
                other.getVendorsStatus == getVendorsStatus) &&
            (identical(other.updateVendorStatus, updateVendorStatus) ||
                other.updateVendorStatus == updateVendorStatus) &&
            (identical(other.submitStatus, submitStatus) ||
                other.submitStatus == submitStatus) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality()
                .equals(other._selectedMealTypes, _selectedMealTypes) &&
            const DeepCollectionEquality()
                .equals(other._selectedVendors, _selectedVendors) &&
            const DeepCollectionEquality()
                .equals(other._availableVendors, _availableVendors) &&
            (identical(other.subscriptionPlan, subscriptionPlan) ||
                other.subscriptionPlan == subscriptionPlan) &&
            (identical(other.deliveryLocation, deliveryLocation) ||
                other.deliveryLocation == deliveryLocation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      getVendorsStatus,
      updateVendorStatus,
      submitStatus,
      errorMessage,
      const DeepCollectionEquality().hash(_selectedMealTypes),
      const DeepCollectionEquality().hash(_selectedVendors),
      const DeepCollectionEquality().hash(_availableVendors),
      subscriptionPlan,
      deliveryLocation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionStateImplCopyWith<_$SubscriptionStateImpl> get copyWith =>
      __$$SubscriptionStateImplCopyWithImpl<_$SubscriptionStateImpl>(
          this, _$identity);
}

abstract class _SubscriptionState implements SubscriptionState {
  const factory _SubscriptionState(
      {final AppStatus status,
      final AppStatus getVendorsStatus,
      final AppStatus updateVendorStatus,
      final AppStatus submitStatus,
      final String? errorMessage,
      final List<MealType> selectedMealTypes,
      final Map<MealType, List<String>>? selectedVendors,
      final Map<MealType, List<Vendor>>? availableVendors,
      final Subscription? subscriptionPlan,
      final DeliveryAddress? deliveryLocation}) = _$SubscriptionStateImpl;

  @override
  AppStatus get status;
  @override
  AppStatus get getVendorsStatus;
  @override
  AppStatus get updateVendorStatus;
  @override
  AppStatus get submitStatus;
  @override
  String? get errorMessage;
  @override
  List<MealType> get selectedMealTypes;
  @override
  Map<MealType, List<String>>? get selectedVendors;
  @override
  Map<MealType, List<Vendor>>? get availableVendors;
  @override
  Subscription? get subscriptionPlan;
  @override
  DeliveryAddress? get deliveryLocation;
  @override
  @JsonKey(ignore: true)
  _$$SubscriptionStateImplCopyWith<_$SubscriptionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
