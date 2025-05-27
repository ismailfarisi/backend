// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SubscriptionState {
  AppStatus get status;
  AppStatus get getVendorsStatus;
  AppStatus get updateVendorStatus;
  AppStatus get submitStatus;
  String? get errorMessage;
  List<MealType> get selectedMealTypes;
  Map<MealType, List<String>>? get selectedVendors;
  Map<MealType, List<Vendor>>? get availableVendors;
  Subscription? get subscriptionPlan;
  DeliveryAddress? get deliveryLocation;
  DateTime? get startDate;

  /// Create a copy of SubscriptionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SubscriptionStateCopyWith<SubscriptionState> get copyWith =>
      _$SubscriptionStateCopyWithImpl<SubscriptionState>(
          this as SubscriptionState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SubscriptionState &&
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
                .equals(other.selectedMealTypes, selectedMealTypes) &&
            const DeepCollectionEquality()
                .equals(other.selectedVendors, selectedVendors) &&
            const DeepCollectionEquality()
                .equals(other.availableVendors, availableVendors) &&
            (identical(other.subscriptionPlan, subscriptionPlan) ||
                other.subscriptionPlan == subscriptionPlan) &&
            (identical(other.deliveryLocation, deliveryLocation) ||
                other.deliveryLocation == deliveryLocation) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      getVendorsStatus,
      updateVendorStatus,
      submitStatus,
      errorMessage,
      const DeepCollectionEquality().hash(selectedMealTypes),
      const DeepCollectionEquality().hash(selectedVendors),
      const DeepCollectionEquality().hash(availableVendors),
      subscriptionPlan,
      deliveryLocation,
      startDate);

  @override
  String toString() {
    return 'SubscriptionState(status: $status, getVendorsStatus: $getVendorsStatus, updateVendorStatus: $updateVendorStatus, submitStatus: $submitStatus, errorMessage: $errorMessage, selectedMealTypes: $selectedMealTypes, selectedVendors: $selectedVendors, availableVendors: $availableVendors, subscriptionPlan: $subscriptionPlan, deliveryLocation: $deliveryLocation, startDate: $startDate)';
  }
}

/// @nodoc
abstract mixin class $SubscriptionStateCopyWith<$Res> {
  factory $SubscriptionStateCopyWith(
          SubscriptionState value, $Res Function(SubscriptionState) _then) =
      _$SubscriptionStateCopyWithImpl;
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
      DeliveryAddress? deliveryLocation,
      DateTime? startDate});

  $SubscriptionCopyWith<$Res>? get subscriptionPlan;
  $DeliveryAddressCopyWith<$Res>? get deliveryLocation;
}

/// @nodoc
class _$SubscriptionStateCopyWithImpl<$Res>
    implements $SubscriptionStateCopyWith<$Res> {
  _$SubscriptionStateCopyWithImpl(this._self, this._then);

  final SubscriptionState _self;
  final $Res Function(SubscriptionState) _then;

  /// Create a copy of SubscriptionState
  /// with the given fields replaced by the non-null parameter values.
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
    Object? startDate = freezed,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getVendorsStatus: null == getVendorsStatus
          ? _self.getVendorsStatus
          : getVendorsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      updateVendorStatus: null == updateVendorStatus
          ? _self.updateVendorStatus
          : updateVendorStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      submitStatus: null == submitStatus
          ? _self.submitStatus
          : submitStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedMealTypes: null == selectedMealTypes
          ? _self.selectedMealTypes
          : selectedMealTypes // ignore: cast_nullable_to_non_nullable
              as List<MealType>,
      selectedVendors: freezed == selectedVendors
          ? _self.selectedVendors
          : selectedVendors // ignore: cast_nullable_to_non_nullable
              as Map<MealType, List<String>>?,
      availableVendors: freezed == availableVendors
          ? _self.availableVendors
          : availableVendors // ignore: cast_nullable_to_non_nullable
              as Map<MealType, List<Vendor>>?,
      subscriptionPlan: freezed == subscriptionPlan
          ? _self.subscriptionPlan
          : subscriptionPlan // ignore: cast_nullable_to_non_nullable
              as Subscription?,
      deliveryLocation: freezed == deliveryLocation
          ? _self.deliveryLocation
          : deliveryLocation // ignore: cast_nullable_to_non_nullable
              as DeliveryAddress?,
      startDate: freezed == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  /// Create a copy of SubscriptionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubscriptionCopyWith<$Res>? get subscriptionPlan {
    if (_self.subscriptionPlan == null) {
      return null;
    }

    return $SubscriptionCopyWith<$Res>(_self.subscriptionPlan!, (value) {
      return _then(_self.copyWith(subscriptionPlan: value));
    });
  }

  /// Create a copy of SubscriptionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeliveryAddressCopyWith<$Res>? get deliveryLocation {
    if (_self.deliveryLocation == null) {
      return null;
    }

    return $DeliveryAddressCopyWith<$Res>(_self.deliveryLocation!, (value) {
      return _then(_self.copyWith(deliveryLocation: value));
    });
  }
}

/// @nodoc

class _SubscriptionState implements SubscriptionState {
  const _SubscriptionState(
      {this.status = AppStatus.init,
      this.getVendorsStatus = AppStatus.init,
      this.updateVendorStatus = AppStatus.init,
      this.submitStatus = AppStatus.init,
      this.errorMessage,
      final List<MealType> selectedMealTypes = const [],
      final Map<MealType, List<String>>? selectedVendors,
      final Map<MealType, List<Vendor>>? availableVendors,
      this.subscriptionPlan,
      this.deliveryLocation,
      this.startDate})
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
  final DateTime? startDate;

  /// Create a copy of SubscriptionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SubscriptionStateCopyWith<_SubscriptionState> get copyWith =>
      __$SubscriptionStateCopyWithImpl<_SubscriptionState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SubscriptionState &&
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
                other.deliveryLocation == deliveryLocation) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate));
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
      deliveryLocation,
      startDate);

  @override
  String toString() {
    return 'SubscriptionState(status: $status, getVendorsStatus: $getVendorsStatus, updateVendorStatus: $updateVendorStatus, submitStatus: $submitStatus, errorMessage: $errorMessage, selectedMealTypes: $selectedMealTypes, selectedVendors: $selectedVendors, availableVendors: $availableVendors, subscriptionPlan: $subscriptionPlan, deliveryLocation: $deliveryLocation, startDate: $startDate)';
  }
}

/// @nodoc
abstract mixin class _$SubscriptionStateCopyWith<$Res>
    implements $SubscriptionStateCopyWith<$Res> {
  factory _$SubscriptionStateCopyWith(
          _SubscriptionState value, $Res Function(_SubscriptionState) _then) =
      __$SubscriptionStateCopyWithImpl;
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
      DeliveryAddress? deliveryLocation,
      DateTime? startDate});

  @override
  $SubscriptionCopyWith<$Res>? get subscriptionPlan;
  @override
  $DeliveryAddressCopyWith<$Res>? get deliveryLocation;
}

/// @nodoc
class __$SubscriptionStateCopyWithImpl<$Res>
    implements _$SubscriptionStateCopyWith<$Res> {
  __$SubscriptionStateCopyWithImpl(this._self, this._then);

  final _SubscriptionState _self;
  final $Res Function(_SubscriptionState) _then;

  /// Create a copy of SubscriptionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    Object? startDate = freezed,
  }) {
    return _then(_SubscriptionState(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      getVendorsStatus: null == getVendorsStatus
          ? _self.getVendorsStatus
          : getVendorsStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      updateVendorStatus: null == updateVendorStatus
          ? _self.updateVendorStatus
          : updateVendorStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      submitStatus: null == submitStatus
          ? _self.submitStatus
          : submitStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedMealTypes: null == selectedMealTypes
          ? _self._selectedMealTypes
          : selectedMealTypes // ignore: cast_nullable_to_non_nullable
              as List<MealType>,
      selectedVendors: freezed == selectedVendors
          ? _self._selectedVendors
          : selectedVendors // ignore: cast_nullable_to_non_nullable
              as Map<MealType, List<String>>?,
      availableVendors: freezed == availableVendors
          ? _self._availableVendors
          : availableVendors // ignore: cast_nullable_to_non_nullable
              as Map<MealType, List<Vendor>>?,
      subscriptionPlan: freezed == subscriptionPlan
          ? _self.subscriptionPlan
          : subscriptionPlan // ignore: cast_nullable_to_non_nullable
              as Subscription?,
      deliveryLocation: freezed == deliveryLocation
          ? _self.deliveryLocation
          : deliveryLocation // ignore: cast_nullable_to_non_nullable
              as DeliveryAddress?,
      startDate: freezed == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  /// Create a copy of SubscriptionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubscriptionCopyWith<$Res>? get subscriptionPlan {
    if (_self.subscriptionPlan == null) {
      return null;
    }

    return $SubscriptionCopyWith<$Res>(_self.subscriptionPlan!, (value) {
      return _then(_self.copyWith(subscriptionPlan: value));
    });
  }

  /// Create a copy of SubscriptionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeliveryAddressCopyWith<$Res>? get deliveryLocation {
    if (_self.deliveryLocation == null) {
      return null;
    }

    return $DeliveryAddressCopyWith<$Res>(_self.deliveryLocation!, (value) {
      return _then(_self.copyWith(deliveryLocation: value));
    });
  }
}

// dart format on
