// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SubscriptionOrder {
  String get id;
  String get userId;
  String get vendorId;
  DateTime get startDate;
  DateTime get endDate;
  double get monthlyAmount;
  List<MealType> get subscribedMeals;
  SubscriptionStatus get status;
  PaymentStatus get paymentStatus;
  List<MealSelection> get mealSelections;
  DeliveryAddress? get deliveryAddress;
  String? get cancelReason;
  DateTime? get cancelledAt;
  DateTime? get pausedFrom;
  DateTime? get pausedUntil;
  String? get pauseReason;
  List<SubscriptionChange> get changes;

  /// Create a copy of SubscriptionOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SubscriptionOrderCopyWith<SubscriptionOrder> get copyWith =>
      _$SubscriptionOrderCopyWithImpl<SubscriptionOrder>(
          this as SubscriptionOrder, _$identity);

  /// Serializes this SubscriptionOrder to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SubscriptionOrder &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.vendorId, vendorId) ||
                other.vendorId == vendorId) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.monthlyAmount, monthlyAmount) ||
                other.monthlyAmount == monthlyAmount) &&
            const DeepCollectionEquality()
                .equals(other.subscribedMeals, subscribedMeals) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            const DeepCollectionEquality()
                .equals(other.mealSelections, mealSelections) &&
            (identical(other.deliveryAddress, deliveryAddress) ||
                other.deliveryAddress == deliveryAddress) &&
            (identical(other.cancelReason, cancelReason) ||
                other.cancelReason == cancelReason) &&
            (identical(other.cancelledAt, cancelledAt) ||
                other.cancelledAt == cancelledAt) &&
            (identical(other.pausedFrom, pausedFrom) ||
                other.pausedFrom == pausedFrom) &&
            (identical(other.pausedUntil, pausedUntil) ||
                other.pausedUntil == pausedUntil) &&
            (identical(other.pauseReason, pauseReason) ||
                other.pauseReason == pauseReason) &&
            const DeepCollectionEquality().equals(other.changes, changes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      vendorId,
      startDate,
      endDate,
      monthlyAmount,
      const DeepCollectionEquality().hash(subscribedMeals),
      status,
      paymentStatus,
      const DeepCollectionEquality().hash(mealSelections),
      deliveryAddress,
      cancelReason,
      cancelledAt,
      pausedFrom,
      pausedUntil,
      pauseReason,
      const DeepCollectionEquality().hash(changes));

  @override
  String toString() {
    return 'SubscriptionOrder(id: $id, userId: $userId, vendorId: $vendorId, startDate: $startDate, endDate: $endDate, monthlyAmount: $monthlyAmount, subscribedMeals: $subscribedMeals, status: $status, paymentStatus: $paymentStatus, mealSelections: $mealSelections, deliveryAddress: $deliveryAddress, cancelReason: $cancelReason, cancelledAt: $cancelledAt, pausedFrom: $pausedFrom, pausedUntil: $pausedUntil, pauseReason: $pauseReason, changes: $changes)';
  }
}

/// @nodoc
abstract mixin class $SubscriptionOrderCopyWith<$Res> {
  factory $SubscriptionOrderCopyWith(
          SubscriptionOrder value, $Res Function(SubscriptionOrder) _then) =
      _$SubscriptionOrderCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String userId,
      String vendorId,
      DateTime startDate,
      DateTime endDate,
      double monthlyAmount,
      List<MealType> subscribedMeals,
      SubscriptionStatus status,
      PaymentStatus paymentStatus,
      List<MealSelection> mealSelections,
      DeliveryAddress? deliveryAddress,
      String? cancelReason,
      DateTime? cancelledAt,
      DateTime? pausedFrom,
      DateTime? pausedUntil,
      String? pauseReason,
      List<SubscriptionChange> changes});

  $DeliveryAddressCopyWith<$Res>? get deliveryAddress;
}

/// @nodoc
class _$SubscriptionOrderCopyWithImpl<$Res>
    implements $SubscriptionOrderCopyWith<$Res> {
  _$SubscriptionOrderCopyWithImpl(this._self, this._then);

  final SubscriptionOrder _self;
  final $Res Function(SubscriptionOrder) _then;

  /// Create a copy of SubscriptionOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? vendorId = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? monthlyAmount = null,
    Object? subscribedMeals = null,
    Object? status = null,
    Object? paymentStatus = null,
    Object? mealSelections = null,
    Object? deliveryAddress = freezed,
    Object? cancelReason = freezed,
    Object? cancelledAt = freezed,
    Object? pausedFrom = freezed,
    Object? pausedUntil = freezed,
    Object? pauseReason = freezed,
    Object? changes = null,
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
      vendorId: null == vendorId
          ? _self.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      monthlyAmount: null == monthlyAmount
          ? _self.monthlyAmount
          : monthlyAmount // ignore: cast_nullable_to_non_nullable
              as double,
      subscribedMeals: null == subscribedMeals
          ? _self.subscribedMeals
          : subscribedMeals // ignore: cast_nullable_to_non_nullable
              as List<MealType>,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as SubscriptionStatus,
      paymentStatus: null == paymentStatus
          ? _self.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
      mealSelections: null == mealSelections
          ? _self.mealSelections
          : mealSelections // ignore: cast_nullable_to_non_nullable
              as List<MealSelection>,
      deliveryAddress: freezed == deliveryAddress
          ? _self.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as DeliveryAddress?,
      cancelReason: freezed == cancelReason
          ? _self.cancelReason
          : cancelReason // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelledAt: freezed == cancelledAt
          ? _self.cancelledAt
          : cancelledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      pausedFrom: freezed == pausedFrom
          ? _self.pausedFrom
          : pausedFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      pausedUntil: freezed == pausedUntil
          ? _self.pausedUntil
          : pausedUntil // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      pauseReason: freezed == pauseReason
          ? _self.pauseReason
          : pauseReason // ignore: cast_nullable_to_non_nullable
              as String?,
      changes: null == changes
          ? _self.changes
          : changes // ignore: cast_nullable_to_non_nullable
              as List<SubscriptionChange>,
    ));
  }

  /// Create a copy of SubscriptionOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeliveryAddressCopyWith<$Res>? get deliveryAddress {
    if (_self.deliveryAddress == null) {
      return null;
    }

    return $DeliveryAddressCopyWith<$Res>(_self.deliveryAddress!, (value) {
      return _then(_self.copyWith(deliveryAddress: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _SubscriptionOrder implements SubscriptionOrder {
  const _SubscriptionOrder(
      {required this.id,
      required this.userId,
      required this.vendorId,
      required this.startDate,
      required this.endDate,
      required this.monthlyAmount,
      required final List<MealType> subscribedMeals,
      required this.status,
      required this.paymentStatus,
      required final List<MealSelection> mealSelections,
      this.deliveryAddress,
      this.cancelReason,
      this.cancelledAt,
      this.pausedFrom,
      this.pausedUntil,
      this.pauseReason,
      final List<SubscriptionChange> changes = const []})
      : _subscribedMeals = subscribedMeals,
        _mealSelections = mealSelections,
        _changes = changes;
  factory _SubscriptionOrder.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionOrderFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String vendorId;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final double monthlyAmount;
  final List<MealType> _subscribedMeals;
  @override
  List<MealType> get subscribedMeals {
    if (_subscribedMeals is EqualUnmodifiableListView) return _subscribedMeals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subscribedMeals);
  }

  @override
  final SubscriptionStatus status;
  @override
  final PaymentStatus paymentStatus;
  final List<MealSelection> _mealSelections;
  @override
  List<MealSelection> get mealSelections {
    if (_mealSelections is EqualUnmodifiableListView) return _mealSelections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mealSelections);
  }

  @override
  final DeliveryAddress? deliveryAddress;
  @override
  final String? cancelReason;
  @override
  final DateTime? cancelledAt;
  @override
  final DateTime? pausedFrom;
  @override
  final DateTime? pausedUntil;
  @override
  final String? pauseReason;
  final List<SubscriptionChange> _changes;
  @override
  @JsonKey()
  List<SubscriptionChange> get changes {
    if (_changes is EqualUnmodifiableListView) return _changes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_changes);
  }

  /// Create a copy of SubscriptionOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SubscriptionOrderCopyWith<_SubscriptionOrder> get copyWith =>
      __$SubscriptionOrderCopyWithImpl<_SubscriptionOrder>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SubscriptionOrderToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SubscriptionOrder &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.vendorId, vendorId) ||
                other.vendorId == vendorId) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.monthlyAmount, monthlyAmount) ||
                other.monthlyAmount == monthlyAmount) &&
            const DeepCollectionEquality()
                .equals(other._subscribedMeals, _subscribedMeals) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            const DeepCollectionEquality()
                .equals(other._mealSelections, _mealSelections) &&
            (identical(other.deliveryAddress, deliveryAddress) ||
                other.deliveryAddress == deliveryAddress) &&
            (identical(other.cancelReason, cancelReason) ||
                other.cancelReason == cancelReason) &&
            (identical(other.cancelledAt, cancelledAt) ||
                other.cancelledAt == cancelledAt) &&
            (identical(other.pausedFrom, pausedFrom) ||
                other.pausedFrom == pausedFrom) &&
            (identical(other.pausedUntil, pausedUntil) ||
                other.pausedUntil == pausedUntil) &&
            (identical(other.pauseReason, pauseReason) ||
                other.pauseReason == pauseReason) &&
            const DeepCollectionEquality().equals(other._changes, _changes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      vendorId,
      startDate,
      endDate,
      monthlyAmount,
      const DeepCollectionEquality().hash(_subscribedMeals),
      status,
      paymentStatus,
      const DeepCollectionEquality().hash(_mealSelections),
      deliveryAddress,
      cancelReason,
      cancelledAt,
      pausedFrom,
      pausedUntil,
      pauseReason,
      const DeepCollectionEquality().hash(_changes));

  @override
  String toString() {
    return 'SubscriptionOrder(id: $id, userId: $userId, vendorId: $vendorId, startDate: $startDate, endDate: $endDate, monthlyAmount: $monthlyAmount, subscribedMeals: $subscribedMeals, status: $status, paymentStatus: $paymentStatus, mealSelections: $mealSelections, deliveryAddress: $deliveryAddress, cancelReason: $cancelReason, cancelledAt: $cancelledAt, pausedFrom: $pausedFrom, pausedUntil: $pausedUntil, pauseReason: $pauseReason, changes: $changes)';
  }
}

/// @nodoc
abstract mixin class _$SubscriptionOrderCopyWith<$Res>
    implements $SubscriptionOrderCopyWith<$Res> {
  factory _$SubscriptionOrderCopyWith(
          _SubscriptionOrder value, $Res Function(_SubscriptionOrder) _then) =
      __$SubscriptionOrderCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String vendorId,
      DateTime startDate,
      DateTime endDate,
      double monthlyAmount,
      List<MealType> subscribedMeals,
      SubscriptionStatus status,
      PaymentStatus paymentStatus,
      List<MealSelection> mealSelections,
      DeliveryAddress? deliveryAddress,
      String? cancelReason,
      DateTime? cancelledAt,
      DateTime? pausedFrom,
      DateTime? pausedUntil,
      String? pauseReason,
      List<SubscriptionChange> changes});

  @override
  $DeliveryAddressCopyWith<$Res>? get deliveryAddress;
}

/// @nodoc
class __$SubscriptionOrderCopyWithImpl<$Res>
    implements _$SubscriptionOrderCopyWith<$Res> {
  __$SubscriptionOrderCopyWithImpl(this._self, this._then);

  final _SubscriptionOrder _self;
  final $Res Function(_SubscriptionOrder) _then;

  /// Create a copy of SubscriptionOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? vendorId = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? monthlyAmount = null,
    Object? subscribedMeals = null,
    Object? status = null,
    Object? paymentStatus = null,
    Object? mealSelections = null,
    Object? deliveryAddress = freezed,
    Object? cancelReason = freezed,
    Object? cancelledAt = freezed,
    Object? pausedFrom = freezed,
    Object? pausedUntil = freezed,
    Object? pauseReason = freezed,
    Object? changes = null,
  }) {
    return _then(_SubscriptionOrder(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      vendorId: null == vendorId
          ? _self.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      monthlyAmount: null == monthlyAmount
          ? _self.monthlyAmount
          : monthlyAmount // ignore: cast_nullable_to_non_nullable
              as double,
      subscribedMeals: null == subscribedMeals
          ? _self._subscribedMeals
          : subscribedMeals // ignore: cast_nullable_to_non_nullable
              as List<MealType>,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as SubscriptionStatus,
      paymentStatus: null == paymentStatus
          ? _self.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
      mealSelections: null == mealSelections
          ? _self._mealSelections
          : mealSelections // ignore: cast_nullable_to_non_nullable
              as List<MealSelection>,
      deliveryAddress: freezed == deliveryAddress
          ? _self.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as DeliveryAddress?,
      cancelReason: freezed == cancelReason
          ? _self.cancelReason
          : cancelReason // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelledAt: freezed == cancelledAt
          ? _self.cancelledAt
          : cancelledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      pausedFrom: freezed == pausedFrom
          ? _self.pausedFrom
          : pausedFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      pausedUntil: freezed == pausedUntil
          ? _self.pausedUntil
          : pausedUntil // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      pauseReason: freezed == pauseReason
          ? _self.pauseReason
          : pauseReason // ignore: cast_nullable_to_non_nullable
              as String?,
      changes: null == changes
          ? _self._changes
          : changes // ignore: cast_nullable_to_non_nullable
              as List<SubscriptionChange>,
    ));
  }

  /// Create a copy of SubscriptionOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeliveryAddressCopyWith<$Res>? get deliveryAddress {
    if (_self.deliveryAddress == null) {
      return null;
    }

    return $DeliveryAddressCopyWith<$Res>(_self.deliveryAddress!, (value) {
      return _then(_self.copyWith(deliveryAddress: value));
    });
  }
}

// dart format on
