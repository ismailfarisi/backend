// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_creation_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SubscriptionCreationRequest {
  /// Type of subscription being created
  @JsonKey(name: 'subscription_type')
  MonthlySubscriptionType get subscriptionType;

  /// List of vendor IDs to be included in the subscription
  @JsonKey(name: 'vendor_ids')
  List<String> get vendorIds;

  /// Weekly vendor assignments for multi-vendor subscriptions
  /// Required only for multi-vendor weekly split subscriptions
  @JsonKey(name: 'weekly_assignments')
  List<WeeklyVendorAssignment>? get weeklyAssignments;

  /// Desired start date for the subscription
  @JsonKey(name: 'start_date')
  DateTime get startDate;

  /// Meal selections and preferences
  @JsonKey(name: 'meal_selections')
  Map<String, dynamic>? get mealSelections;

  /// Delivery address for the subscription
  @JsonKey(name: 'delivery_address')
  DeliveryAddress get deliveryAddress;

  /// Additional notes or special instructions
  String? get notes;

  /// Preferred delivery time window
  @JsonKey(name: 'delivery_time_preference')
  String? get deliveryTimePreference;

  /// Dietary restrictions or preferences
  @JsonKey(name: 'dietary_restrictions')
  List<String>? get dietaryRestrictions;

  /// Create a copy of SubscriptionCreationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SubscriptionCreationRequestCopyWith<SubscriptionCreationRequest>
      get copyWith => _$SubscriptionCreationRequestCopyWithImpl<
              SubscriptionCreationRequest>(
          this as SubscriptionCreationRequest, _$identity);

  /// Serializes this SubscriptionCreationRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SubscriptionCreationRequest &&
            (identical(other.subscriptionType, subscriptionType) ||
                other.subscriptionType == subscriptionType) &&
            const DeepCollectionEquality().equals(other.vendorIds, vendorIds) &&
            const DeepCollectionEquality()
                .equals(other.weeklyAssignments, weeklyAssignments) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            const DeepCollectionEquality()
                .equals(other.mealSelections, mealSelections) &&
            (identical(other.deliveryAddress, deliveryAddress) ||
                other.deliveryAddress == deliveryAddress) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.deliveryTimePreference, deliveryTimePreference) ||
                other.deliveryTimePreference == deliveryTimePreference) &&
            const DeepCollectionEquality()
                .equals(other.dietaryRestrictions, dietaryRestrictions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      subscriptionType,
      const DeepCollectionEquality().hash(vendorIds),
      const DeepCollectionEquality().hash(weeklyAssignments),
      startDate,
      const DeepCollectionEquality().hash(mealSelections),
      deliveryAddress,
      notes,
      deliveryTimePreference,
      const DeepCollectionEquality().hash(dietaryRestrictions));

  @override
  String toString() {
    return 'SubscriptionCreationRequest(subscriptionType: $subscriptionType, vendorIds: $vendorIds, weeklyAssignments: $weeklyAssignments, startDate: $startDate, mealSelections: $mealSelections, deliveryAddress: $deliveryAddress, notes: $notes, deliveryTimePreference: $deliveryTimePreference, dietaryRestrictions: $dietaryRestrictions)';
  }
}

/// @nodoc
abstract mixin class $SubscriptionCreationRequestCopyWith<$Res> {
  factory $SubscriptionCreationRequestCopyWith(
          SubscriptionCreationRequest value,
          $Res Function(SubscriptionCreationRequest) _then) =
      _$SubscriptionCreationRequestCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'subscription_type')
      MonthlySubscriptionType subscriptionType,
      @JsonKey(name: 'vendor_ids') List<String> vendorIds,
      @JsonKey(name: 'weekly_assignments')
      List<WeeklyVendorAssignment>? weeklyAssignments,
      @JsonKey(name: 'start_date') DateTime startDate,
      @JsonKey(name: 'meal_selections') Map<String, dynamic>? mealSelections,
      @JsonKey(name: 'delivery_address') DeliveryAddress deliveryAddress,
      String? notes,
      @JsonKey(name: 'delivery_time_preference') String? deliveryTimePreference,
      @JsonKey(name: 'dietary_restrictions')
      List<String>? dietaryRestrictions});

  $DeliveryAddressCopyWith<$Res> get deliveryAddress;
}

/// @nodoc
class _$SubscriptionCreationRequestCopyWithImpl<$Res>
    implements $SubscriptionCreationRequestCopyWith<$Res> {
  _$SubscriptionCreationRequestCopyWithImpl(this._self, this._then);

  final SubscriptionCreationRequest _self;
  final $Res Function(SubscriptionCreationRequest) _then;

  /// Create a copy of SubscriptionCreationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscriptionType = null,
    Object? vendorIds = null,
    Object? weeklyAssignments = freezed,
    Object? startDate = null,
    Object? mealSelections = freezed,
    Object? deliveryAddress = null,
    Object? notes = freezed,
    Object? deliveryTimePreference = freezed,
    Object? dietaryRestrictions = freezed,
  }) {
    return _then(_self.copyWith(
      subscriptionType: null == subscriptionType
          ? _self.subscriptionType
          : subscriptionType // ignore: cast_nullable_to_non_nullable
              as MonthlySubscriptionType,
      vendorIds: null == vendorIds
          ? _self.vendorIds
          : vendorIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      weeklyAssignments: freezed == weeklyAssignments
          ? _self.weeklyAssignments
          : weeklyAssignments // ignore: cast_nullable_to_non_nullable
              as List<WeeklyVendorAssignment>?,
      startDate: null == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      mealSelections: freezed == mealSelections
          ? _self.mealSelections
          : mealSelections // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      deliveryAddress: null == deliveryAddress
          ? _self.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as DeliveryAddress,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryTimePreference: freezed == deliveryTimePreference
          ? _self.deliveryTimePreference
          : deliveryTimePreference // ignore: cast_nullable_to_non_nullable
              as String?,
      dietaryRestrictions: freezed == dietaryRestrictions
          ? _self.dietaryRestrictions
          : dietaryRestrictions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }

  /// Create a copy of SubscriptionCreationRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeliveryAddressCopyWith<$Res> get deliveryAddress {
    return $DeliveryAddressCopyWith<$Res>(_self.deliveryAddress, (value) {
      return _then(_self.copyWith(deliveryAddress: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _SubscriptionCreationRequest implements SubscriptionCreationRequest {
  const _SubscriptionCreationRequest(
      {@JsonKey(name: 'subscription_type') required this.subscriptionType,
      @JsonKey(name: 'vendor_ids') required final List<String> vendorIds,
      @JsonKey(name: 'weekly_assignments')
      final List<WeeklyVendorAssignment>? weeklyAssignments,
      @JsonKey(name: 'start_date') required this.startDate,
      @JsonKey(name: 'meal_selections')
      final Map<String, dynamic>? mealSelections,
      @JsonKey(name: 'delivery_address') required this.deliveryAddress,
      this.notes,
      @JsonKey(name: 'delivery_time_preference') this.deliveryTimePreference,
      @JsonKey(name: 'dietary_restrictions')
      final List<String>? dietaryRestrictions})
      : _vendorIds = vendorIds,
        _weeklyAssignments = weeklyAssignments,
        _mealSelections = mealSelections,
        _dietaryRestrictions = dietaryRestrictions;
  factory _SubscriptionCreationRequest.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionCreationRequestFromJson(json);

  /// Type of subscription being created
  @override
  @JsonKey(name: 'subscription_type')
  final MonthlySubscriptionType subscriptionType;

  /// List of vendor IDs to be included in the subscription
  final List<String> _vendorIds;

  /// List of vendor IDs to be included in the subscription
  @override
  @JsonKey(name: 'vendor_ids')
  List<String> get vendorIds {
    if (_vendorIds is EqualUnmodifiableListView) return _vendorIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vendorIds);
  }

  /// Weekly vendor assignments for multi-vendor subscriptions
  /// Required only for multi-vendor weekly split subscriptions
  final List<WeeklyVendorAssignment>? _weeklyAssignments;

  /// Weekly vendor assignments for multi-vendor subscriptions
  /// Required only for multi-vendor weekly split subscriptions
  @override
  @JsonKey(name: 'weekly_assignments')
  List<WeeklyVendorAssignment>? get weeklyAssignments {
    final value = _weeklyAssignments;
    if (value == null) return null;
    if (_weeklyAssignments is EqualUnmodifiableListView)
      return _weeklyAssignments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Desired start date for the subscription
  @override
  @JsonKey(name: 'start_date')
  final DateTime startDate;

  /// Meal selections and preferences
  final Map<String, dynamic>? _mealSelections;

  /// Meal selections and preferences
  @override
  @JsonKey(name: 'meal_selections')
  Map<String, dynamic>? get mealSelections {
    final value = _mealSelections;
    if (value == null) return null;
    if (_mealSelections is EqualUnmodifiableMapView) return _mealSelections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Delivery address for the subscription
  @override
  @JsonKey(name: 'delivery_address')
  final DeliveryAddress deliveryAddress;

  /// Additional notes or special instructions
  @override
  final String? notes;

  /// Preferred delivery time window
  @override
  @JsonKey(name: 'delivery_time_preference')
  final String? deliveryTimePreference;

  /// Dietary restrictions or preferences
  final List<String>? _dietaryRestrictions;

  /// Dietary restrictions or preferences
  @override
  @JsonKey(name: 'dietary_restrictions')
  List<String>? get dietaryRestrictions {
    final value = _dietaryRestrictions;
    if (value == null) return null;
    if (_dietaryRestrictions is EqualUnmodifiableListView)
      return _dietaryRestrictions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of SubscriptionCreationRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SubscriptionCreationRequestCopyWith<_SubscriptionCreationRequest>
      get copyWith => __$SubscriptionCreationRequestCopyWithImpl<
          _SubscriptionCreationRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SubscriptionCreationRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SubscriptionCreationRequest &&
            (identical(other.subscriptionType, subscriptionType) ||
                other.subscriptionType == subscriptionType) &&
            const DeepCollectionEquality()
                .equals(other._vendorIds, _vendorIds) &&
            const DeepCollectionEquality()
                .equals(other._weeklyAssignments, _weeklyAssignments) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            const DeepCollectionEquality()
                .equals(other._mealSelections, _mealSelections) &&
            (identical(other.deliveryAddress, deliveryAddress) ||
                other.deliveryAddress == deliveryAddress) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.deliveryTimePreference, deliveryTimePreference) ||
                other.deliveryTimePreference == deliveryTimePreference) &&
            const DeepCollectionEquality()
                .equals(other._dietaryRestrictions, _dietaryRestrictions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      subscriptionType,
      const DeepCollectionEquality().hash(_vendorIds),
      const DeepCollectionEquality().hash(_weeklyAssignments),
      startDate,
      const DeepCollectionEquality().hash(_mealSelections),
      deliveryAddress,
      notes,
      deliveryTimePreference,
      const DeepCollectionEquality().hash(_dietaryRestrictions));

  @override
  String toString() {
    return 'SubscriptionCreationRequest(subscriptionType: $subscriptionType, vendorIds: $vendorIds, weeklyAssignments: $weeklyAssignments, startDate: $startDate, mealSelections: $mealSelections, deliveryAddress: $deliveryAddress, notes: $notes, deliveryTimePreference: $deliveryTimePreference, dietaryRestrictions: $dietaryRestrictions)';
  }
}

/// @nodoc
abstract mixin class _$SubscriptionCreationRequestCopyWith<$Res>
    implements $SubscriptionCreationRequestCopyWith<$Res> {
  factory _$SubscriptionCreationRequestCopyWith(
          _SubscriptionCreationRequest value,
          $Res Function(_SubscriptionCreationRequest) _then) =
      __$SubscriptionCreationRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'subscription_type')
      MonthlySubscriptionType subscriptionType,
      @JsonKey(name: 'vendor_ids') List<String> vendorIds,
      @JsonKey(name: 'weekly_assignments')
      List<WeeklyVendorAssignment>? weeklyAssignments,
      @JsonKey(name: 'start_date') DateTime startDate,
      @JsonKey(name: 'meal_selections') Map<String, dynamic>? mealSelections,
      @JsonKey(name: 'delivery_address') DeliveryAddress deliveryAddress,
      String? notes,
      @JsonKey(name: 'delivery_time_preference') String? deliveryTimePreference,
      @JsonKey(name: 'dietary_restrictions')
      List<String>? dietaryRestrictions});

  @override
  $DeliveryAddressCopyWith<$Res> get deliveryAddress;
}

/// @nodoc
class __$SubscriptionCreationRequestCopyWithImpl<$Res>
    implements _$SubscriptionCreationRequestCopyWith<$Res> {
  __$SubscriptionCreationRequestCopyWithImpl(this._self, this._then);

  final _SubscriptionCreationRequest _self;
  final $Res Function(_SubscriptionCreationRequest) _then;

  /// Create a copy of SubscriptionCreationRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? subscriptionType = null,
    Object? vendorIds = null,
    Object? weeklyAssignments = freezed,
    Object? startDate = null,
    Object? mealSelections = freezed,
    Object? deliveryAddress = null,
    Object? notes = freezed,
    Object? deliveryTimePreference = freezed,
    Object? dietaryRestrictions = freezed,
  }) {
    return _then(_SubscriptionCreationRequest(
      subscriptionType: null == subscriptionType
          ? _self.subscriptionType
          : subscriptionType // ignore: cast_nullable_to_non_nullable
              as MonthlySubscriptionType,
      vendorIds: null == vendorIds
          ? _self._vendorIds
          : vendorIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      weeklyAssignments: freezed == weeklyAssignments
          ? _self._weeklyAssignments
          : weeklyAssignments // ignore: cast_nullable_to_non_nullable
              as List<WeeklyVendorAssignment>?,
      startDate: null == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      mealSelections: freezed == mealSelections
          ? _self._mealSelections
          : mealSelections // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      deliveryAddress: null == deliveryAddress
          ? _self.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as DeliveryAddress,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryTimePreference: freezed == deliveryTimePreference
          ? _self.deliveryTimePreference
          : deliveryTimePreference // ignore: cast_nullable_to_non_nullable
              as String?,
      dietaryRestrictions: freezed == dietaryRestrictions
          ? _self._dietaryRestrictions
          : dietaryRestrictions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }

  /// Create a copy of SubscriptionCreationRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeliveryAddressCopyWith<$Res> get deliveryAddress {
    return $DeliveryAddressCopyWith<$Res>(_self.deliveryAddress, (value) {
      return _then(_self.copyWith(deliveryAddress: value));
    });
  }
}

// dart format on
