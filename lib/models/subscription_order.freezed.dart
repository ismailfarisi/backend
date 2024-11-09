// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubscriptionOrder _$SubscriptionOrderFromJson(Map<String, dynamic> json) {
  return _SubscriptionOrder.fromJson(json);
}

/// @nodoc
mixin _$SubscriptionOrder {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get vendorId => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  double get monthlyAmount => throw _privateConstructorUsedError;
  List<MealType> get subscribedMeals => throw _privateConstructorUsedError;
  SubscriptionStatus get status => throw _privateConstructorUsedError;
  PaymentStatus get paymentStatus => throw _privateConstructorUsedError;
  List<MealSelection> get mealSelections => throw _privateConstructorUsedError;
  DeliveryAddress? get deliveryAddress => throw _privateConstructorUsedError;
  String? get cancelReason => throw _privateConstructorUsedError;
  DateTime? get cancelledAt => throw _privateConstructorUsedError;
  DateTime? get pausedFrom => throw _privateConstructorUsedError;
  DateTime? get pausedUntil => throw _privateConstructorUsedError;
  String? get pauseReason => throw _privateConstructorUsedError;
  List<SubscriptionChange> get changes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscriptionOrderCopyWith<SubscriptionOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionOrderCopyWith<$Res> {
  factory $SubscriptionOrderCopyWith(
          SubscriptionOrder value, $Res Function(SubscriptionOrder) then) =
      _$SubscriptionOrderCopyWithImpl<$Res, SubscriptionOrder>;
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
class _$SubscriptionOrderCopyWithImpl<$Res, $Val extends SubscriptionOrder>
    implements $SubscriptionOrderCopyWith<$Res> {
  _$SubscriptionOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      monthlyAmount: null == monthlyAmount
          ? _value.monthlyAmount
          : monthlyAmount // ignore: cast_nullable_to_non_nullable
              as double,
      subscribedMeals: null == subscribedMeals
          ? _value.subscribedMeals
          : subscribedMeals // ignore: cast_nullable_to_non_nullable
              as List<MealType>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SubscriptionStatus,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
      mealSelections: null == mealSelections
          ? _value.mealSelections
          : mealSelections // ignore: cast_nullable_to_non_nullable
              as List<MealSelection>,
      deliveryAddress: freezed == deliveryAddress
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as DeliveryAddress?,
      cancelReason: freezed == cancelReason
          ? _value.cancelReason
          : cancelReason // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelledAt: freezed == cancelledAt
          ? _value.cancelledAt
          : cancelledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      pausedFrom: freezed == pausedFrom
          ? _value.pausedFrom
          : pausedFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      pausedUntil: freezed == pausedUntil
          ? _value.pausedUntil
          : pausedUntil // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      pauseReason: freezed == pauseReason
          ? _value.pauseReason
          : pauseReason // ignore: cast_nullable_to_non_nullable
              as String?,
      changes: null == changes
          ? _value.changes
          : changes // ignore: cast_nullable_to_non_nullable
              as List<SubscriptionChange>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DeliveryAddressCopyWith<$Res>? get deliveryAddress {
    if (_value.deliveryAddress == null) {
      return null;
    }

    return $DeliveryAddressCopyWith<$Res>(_value.deliveryAddress!, (value) {
      return _then(_value.copyWith(deliveryAddress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubscriptionOrderImplCopyWith<$Res>
    implements $SubscriptionOrderCopyWith<$Res> {
  factory _$$SubscriptionOrderImplCopyWith(_$SubscriptionOrderImpl value,
          $Res Function(_$SubscriptionOrderImpl) then) =
      __$$SubscriptionOrderImplCopyWithImpl<$Res>;
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
class __$$SubscriptionOrderImplCopyWithImpl<$Res>
    extends _$SubscriptionOrderCopyWithImpl<$Res, _$SubscriptionOrderImpl>
    implements _$$SubscriptionOrderImplCopyWith<$Res> {
  __$$SubscriptionOrderImplCopyWithImpl(_$SubscriptionOrderImpl _value,
      $Res Function(_$SubscriptionOrderImpl) _then)
      : super(_value, _then);

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
    return _then(_$SubscriptionOrderImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      monthlyAmount: null == monthlyAmount
          ? _value.monthlyAmount
          : monthlyAmount // ignore: cast_nullable_to_non_nullable
              as double,
      subscribedMeals: null == subscribedMeals
          ? _value._subscribedMeals
          : subscribedMeals // ignore: cast_nullable_to_non_nullable
              as List<MealType>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SubscriptionStatus,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
      mealSelections: null == mealSelections
          ? _value._mealSelections
          : mealSelections // ignore: cast_nullable_to_non_nullable
              as List<MealSelection>,
      deliveryAddress: freezed == deliveryAddress
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as DeliveryAddress?,
      cancelReason: freezed == cancelReason
          ? _value.cancelReason
          : cancelReason // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelledAt: freezed == cancelledAt
          ? _value.cancelledAt
          : cancelledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      pausedFrom: freezed == pausedFrom
          ? _value.pausedFrom
          : pausedFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      pausedUntil: freezed == pausedUntil
          ? _value.pausedUntil
          : pausedUntil // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      pauseReason: freezed == pauseReason
          ? _value.pauseReason
          : pauseReason // ignore: cast_nullable_to_non_nullable
              as String?,
      changes: null == changes
          ? _value._changes
          : changes // ignore: cast_nullable_to_non_nullable
              as List<SubscriptionChange>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscriptionOrderImpl implements _SubscriptionOrder {
  const _$SubscriptionOrderImpl(
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

  factory _$SubscriptionOrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubscriptionOrderImplFromJson(json);

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

  @override
  String toString() {
    return 'SubscriptionOrder(id: $id, userId: $userId, vendorId: $vendorId, startDate: $startDate, endDate: $endDate, monthlyAmount: $monthlyAmount, subscribedMeals: $subscribedMeals, status: $status, paymentStatus: $paymentStatus, mealSelections: $mealSelections, deliveryAddress: $deliveryAddress, cancelReason: $cancelReason, cancelledAt: $cancelledAt, pausedFrom: $pausedFrom, pausedUntil: $pausedUntil, pauseReason: $pauseReason, changes: $changes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionOrderImpl &&
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

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionOrderImplCopyWith<_$SubscriptionOrderImpl> get copyWith =>
      __$$SubscriptionOrderImplCopyWithImpl<_$SubscriptionOrderImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionOrderImplToJson(
      this,
    );
  }
}

abstract class _SubscriptionOrder implements SubscriptionOrder {
  const factory _SubscriptionOrder(
      {required final String id,
      required final String userId,
      required final String vendorId,
      required final DateTime startDate,
      required final DateTime endDate,
      required final double monthlyAmount,
      required final List<MealType> subscribedMeals,
      required final SubscriptionStatus status,
      required final PaymentStatus paymentStatus,
      required final List<MealSelection> mealSelections,
      final DeliveryAddress? deliveryAddress,
      final String? cancelReason,
      final DateTime? cancelledAt,
      final DateTime? pausedFrom,
      final DateTime? pausedUntil,
      final String? pauseReason,
      final List<SubscriptionChange> changes}) = _$SubscriptionOrderImpl;

  factory _SubscriptionOrder.fromJson(Map<String, dynamic> json) =
      _$SubscriptionOrderImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get vendorId;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  double get monthlyAmount;
  @override
  List<MealType> get subscribedMeals;
  @override
  SubscriptionStatus get status;
  @override
  PaymentStatus get paymentStatus;
  @override
  List<MealSelection> get mealSelections;
  @override
  DeliveryAddress? get deliveryAddress;
  @override
  String? get cancelReason;
  @override
  DateTime? get cancelledAt;
  @override
  DateTime? get pausedFrom;
  @override
  DateTime? get pausedUntil;
  @override
  String? get pauseReason;
  @override
  List<SubscriptionChange> get changes;
  @override
  @JsonKey(ignore: true)
  _$$SubscriptionOrderImplCopyWith<_$SubscriptionOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
