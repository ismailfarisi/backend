// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'monthly_subscription.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MonthlySubscription {
  /// Unique identifier for the subscription
  String get id;

  /// ID of the user who owns this subscription
  @JsonKey(name: 'user_id')
  String get userId;

  /// Type of subscription (single vendor or multi-vendor weekly split)
  @JsonKey(name: 'subscription_type')
  MonthlySubscriptionType get subscriptionType;

  /// List of vendor IDs involved in this subscription
  @JsonKey(name: 'vendor_ids')
  List<String> get vendorIds;

  /// Weekly vendor assignments for multi-vendor subscriptions
  /// Null or empty for single vendor subscriptions
  @JsonKey(name: 'weekly_vendor_assignments')
  List<WeeklyVendorAssignment>? get weeklyVendorAssignments;

  /// Start date of the subscription
  @JsonKey(name: 'start_date')
  DateTime get startDate;

  /// End date of the subscription
  @JsonKey(name: 'end_date')
  DateTime get endDate;

  /// Total price for the entire subscription period
  @JsonKey(name: 'total_price')
  double get totalPrice;

  /// Current status of the subscription
  SubscriptionStatus get status;

  /// Meal selections and preferences for the subscription
  @JsonKey(name: 'meal_selections')
  Map<String, dynamic>? get mealSelections;

  /// Creation timestamp
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;

  /// Last update timestamp
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// Create a copy of MonthlySubscription
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MonthlySubscriptionCopyWith<MonthlySubscription> get copyWith =>
      _$MonthlySubscriptionCopyWithImpl<MonthlySubscription>(
          this as MonthlySubscription, _$identity);

  /// Serializes this MonthlySubscription to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MonthlySubscription &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.subscriptionType, subscriptionType) ||
                other.subscriptionType == subscriptionType) &&
            const DeepCollectionEquality().equals(other.vendorIds, vendorIds) &&
            const DeepCollectionEquality().equals(
                other.weeklyVendorAssignments, weeklyVendorAssignments) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other.mealSelections, mealSelections) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      subscriptionType,
      const DeepCollectionEquality().hash(vendorIds),
      const DeepCollectionEquality().hash(weeklyVendorAssignments),
      startDate,
      endDate,
      totalPrice,
      status,
      const DeepCollectionEquality().hash(mealSelections),
      createdAt,
      updatedAt);

  @override
  String toString() {
    return 'MonthlySubscription(id: $id, userId: $userId, subscriptionType: $subscriptionType, vendorIds: $vendorIds, weeklyVendorAssignments: $weeklyVendorAssignments, startDate: $startDate, endDate: $endDate, totalPrice: $totalPrice, status: $status, mealSelections: $mealSelections, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $MonthlySubscriptionCopyWith<$Res> {
  factory $MonthlySubscriptionCopyWith(
          MonthlySubscription value, $Res Function(MonthlySubscription) _then) =
      _$MonthlySubscriptionCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'subscription_type')
      MonthlySubscriptionType subscriptionType,
      @JsonKey(name: 'vendor_ids') List<String> vendorIds,
      @JsonKey(name: 'weekly_vendor_assignments')
      List<WeeklyVendorAssignment>? weeklyVendorAssignments,
      @JsonKey(name: 'start_date') DateTime startDate,
      @JsonKey(name: 'end_date') DateTime endDate,
      @JsonKey(name: 'total_price') double totalPrice,
      SubscriptionStatus status,
      @JsonKey(name: 'meal_selections') Map<String, dynamic>? mealSelections,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$MonthlySubscriptionCopyWithImpl<$Res>
    implements $MonthlySubscriptionCopyWith<$Res> {
  _$MonthlySubscriptionCopyWithImpl(this._self, this._then);

  final MonthlySubscription _self;
  final $Res Function(MonthlySubscription) _then;

  /// Create a copy of MonthlySubscription
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? subscriptionType = null,
    Object? vendorIds = null,
    Object? weeklyVendorAssignments = freezed,
    Object? startDate = null,
    Object? endDate = null,
    Object? totalPrice = null,
    Object? status = null,
    Object? mealSelections = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      subscriptionType: null == subscriptionType
          ? _self.subscriptionType
          : subscriptionType // ignore: cast_nullable_to_non_nullable
              as MonthlySubscriptionType,
      vendorIds: null == vendorIds
          ? _self.vendorIds
          : vendorIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      weeklyVendorAssignments: freezed == weeklyVendorAssignments
          ? _self.weeklyVendorAssignments
          : weeklyVendorAssignments // ignore: cast_nullable_to_non_nullable
              as List<WeeklyVendorAssignment>?,
      startDate: null == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalPrice: null == totalPrice
          ? _self.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as SubscriptionStatus,
      mealSelections: freezed == mealSelections
          ? _self.mealSelections
          : mealSelections // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _MonthlySubscription implements MonthlySubscription {
  const _MonthlySubscription(
      {required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'subscription_type') required this.subscriptionType,
      @JsonKey(name: 'vendor_ids') required final List<String> vendorIds,
      @JsonKey(name: 'weekly_vendor_assignments')
      final List<WeeklyVendorAssignment>? weeklyVendorAssignments,
      @JsonKey(name: 'start_date') required this.startDate,
      @JsonKey(name: 'end_date') required this.endDate,
      @JsonKey(name: 'total_price') required this.totalPrice,
      required this.status,
      @JsonKey(name: 'meal_selections')
      final Map<String, dynamic>? mealSelections,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt})
      : _vendorIds = vendorIds,
        _weeklyVendorAssignments = weeklyVendorAssignments,
        _mealSelections = mealSelections;
  factory _MonthlySubscription.fromJson(Map<String, dynamic> json) =>
      _$MonthlySubscriptionFromJson(json);

  /// Unique identifier for the subscription
  @override
  final String id;

  /// ID of the user who owns this subscription
  @override
  @JsonKey(name: 'user_id')
  final String userId;

  /// Type of subscription (single vendor or multi-vendor weekly split)
  @override
  @JsonKey(name: 'subscription_type')
  final MonthlySubscriptionType subscriptionType;

  /// List of vendor IDs involved in this subscription
  final List<String> _vendorIds;

  /// List of vendor IDs involved in this subscription
  @override
  @JsonKey(name: 'vendor_ids')
  List<String> get vendorIds {
    if (_vendorIds is EqualUnmodifiableListView) return _vendorIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vendorIds);
  }

  /// Weekly vendor assignments for multi-vendor subscriptions
  /// Null or empty for single vendor subscriptions
  final List<WeeklyVendorAssignment>? _weeklyVendorAssignments;

  /// Weekly vendor assignments for multi-vendor subscriptions
  /// Null or empty for single vendor subscriptions
  @override
  @JsonKey(name: 'weekly_vendor_assignments')
  List<WeeklyVendorAssignment>? get weeklyVendorAssignments {
    final value = _weeklyVendorAssignments;
    if (value == null) return null;
    if (_weeklyVendorAssignments is EqualUnmodifiableListView)
      return _weeklyVendorAssignments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Start date of the subscription
  @override
  @JsonKey(name: 'start_date')
  final DateTime startDate;

  /// End date of the subscription
  @override
  @JsonKey(name: 'end_date')
  final DateTime endDate;

  /// Total price for the entire subscription period
  @override
  @JsonKey(name: 'total_price')
  final double totalPrice;

  /// Current status of the subscription
  @override
  final SubscriptionStatus status;

  /// Meal selections and preferences for the subscription
  final Map<String, dynamic>? _mealSelections;

  /// Meal selections and preferences for the subscription
  @override
  @JsonKey(name: 'meal_selections')
  Map<String, dynamic>? get mealSelections {
    final value = _mealSelections;
    if (value == null) return null;
    if (_mealSelections is EqualUnmodifiableMapView) return _mealSelections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Creation timestamp
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;

  /// Last update timestamp
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  /// Create a copy of MonthlySubscription
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MonthlySubscriptionCopyWith<_MonthlySubscription> get copyWith =>
      __$MonthlySubscriptionCopyWithImpl<_MonthlySubscription>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MonthlySubscriptionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MonthlySubscription &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.subscriptionType, subscriptionType) ||
                other.subscriptionType == subscriptionType) &&
            const DeepCollectionEquality()
                .equals(other._vendorIds, _vendorIds) &&
            const DeepCollectionEquality().equals(
                other._weeklyVendorAssignments, _weeklyVendorAssignments) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._mealSelections, _mealSelections) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      subscriptionType,
      const DeepCollectionEquality().hash(_vendorIds),
      const DeepCollectionEquality().hash(_weeklyVendorAssignments),
      startDate,
      endDate,
      totalPrice,
      status,
      const DeepCollectionEquality().hash(_mealSelections),
      createdAt,
      updatedAt);

  @override
  String toString() {
    return 'MonthlySubscription(id: $id, userId: $userId, subscriptionType: $subscriptionType, vendorIds: $vendorIds, weeklyVendorAssignments: $weeklyVendorAssignments, startDate: $startDate, endDate: $endDate, totalPrice: $totalPrice, status: $status, mealSelections: $mealSelections, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$MonthlySubscriptionCopyWith<$Res>
    implements $MonthlySubscriptionCopyWith<$Res> {
  factory _$MonthlySubscriptionCopyWith(_MonthlySubscription value,
          $Res Function(_MonthlySubscription) _then) =
      __$MonthlySubscriptionCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'subscription_type')
      MonthlySubscriptionType subscriptionType,
      @JsonKey(name: 'vendor_ids') List<String> vendorIds,
      @JsonKey(name: 'weekly_vendor_assignments')
      List<WeeklyVendorAssignment>? weeklyVendorAssignments,
      @JsonKey(name: 'start_date') DateTime startDate,
      @JsonKey(name: 'end_date') DateTime endDate,
      @JsonKey(name: 'total_price') double totalPrice,
      SubscriptionStatus status,
      @JsonKey(name: 'meal_selections') Map<String, dynamic>? mealSelections,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$MonthlySubscriptionCopyWithImpl<$Res>
    implements _$MonthlySubscriptionCopyWith<$Res> {
  __$MonthlySubscriptionCopyWithImpl(this._self, this._then);

  final _MonthlySubscription _self;
  final $Res Function(_MonthlySubscription) _then;

  /// Create a copy of MonthlySubscription
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? subscriptionType = null,
    Object? vendorIds = null,
    Object? weeklyVendorAssignments = freezed,
    Object? startDate = null,
    Object? endDate = null,
    Object? totalPrice = null,
    Object? status = null,
    Object? mealSelections = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_MonthlySubscription(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      subscriptionType: null == subscriptionType
          ? _self.subscriptionType
          : subscriptionType // ignore: cast_nullable_to_non_nullable
              as MonthlySubscriptionType,
      vendorIds: null == vendorIds
          ? _self._vendorIds
          : vendorIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      weeklyVendorAssignments: freezed == weeklyVendorAssignments
          ? _self._weeklyVendorAssignments
          : weeklyVendorAssignments // ignore: cast_nullable_to_non_nullable
              as List<WeeklyVendorAssignment>?,
      startDate: null == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalPrice: null == totalPrice
          ? _self.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as SubscriptionStatus,
      mealSelections: freezed == mealSelections
          ? _self._mealSelections
          : mealSelections // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

// dart format on
