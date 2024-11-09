// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderState {
  List<SubscriptionOrder> get orders => throw _privateConstructorUsedError;
  SubscriptionOrder? get activeSubscription =>
      throw _privateConstructorUsedError;
  SubscriptionSummary? get summary => throw _privateConstructorUsedError;
  AppStatus get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  AppStatus get actionStatus => throw _privateConstructorUsedError;
  String? get actionError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderStateCopyWith<OrderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStateCopyWith<$Res> {
  factory $OrderStateCopyWith(
          OrderState value, $Res Function(OrderState) then) =
      _$OrderStateCopyWithImpl<$Res, OrderState>;
  @useResult
  $Res call(
      {List<SubscriptionOrder> orders,
      SubscriptionOrder? activeSubscription,
      SubscriptionSummary? summary,
      AppStatus status,
      String? errorMessage,
      AppStatus actionStatus,
      String? actionError});

  $SubscriptionOrderCopyWith<$Res>? get activeSubscription;
  $SubscriptionSummaryCopyWith<$Res>? get summary;
}

/// @nodoc
class _$OrderStateCopyWithImpl<$Res, $Val extends OrderState>
    implements $OrderStateCopyWith<$Res> {
  _$OrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
    Object? activeSubscription = freezed,
    Object? summary = freezed,
    Object? status = null,
    Object? errorMessage = freezed,
    Object? actionStatus = null,
    Object? actionError = freezed,
  }) {
    return _then(_value.copyWith(
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<SubscriptionOrder>,
      activeSubscription: freezed == activeSubscription
          ? _value.activeSubscription
          : activeSubscription // ignore: cast_nullable_to_non_nullable
              as SubscriptionOrder?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as SubscriptionSummary?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      actionStatus: null == actionStatus
          ? _value.actionStatus
          : actionStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      actionError: freezed == actionError
          ? _value.actionError
          : actionError // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SubscriptionOrderCopyWith<$Res>? get activeSubscription {
    if (_value.activeSubscription == null) {
      return null;
    }

    return $SubscriptionOrderCopyWith<$Res>(_value.activeSubscription!,
        (value) {
      return _then(_value.copyWith(activeSubscription: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SubscriptionSummaryCopyWith<$Res>? get summary {
    if (_value.summary == null) {
      return null;
    }

    return $SubscriptionSummaryCopyWith<$Res>(_value.summary!, (value) {
      return _then(_value.copyWith(summary: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderStateImplCopyWith<$Res>
    implements $OrderStateCopyWith<$Res> {
  factory _$$OrderStateImplCopyWith(
          _$OrderStateImpl value, $Res Function(_$OrderStateImpl) then) =
      __$$OrderStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<SubscriptionOrder> orders,
      SubscriptionOrder? activeSubscription,
      SubscriptionSummary? summary,
      AppStatus status,
      String? errorMessage,
      AppStatus actionStatus,
      String? actionError});

  @override
  $SubscriptionOrderCopyWith<$Res>? get activeSubscription;
  @override
  $SubscriptionSummaryCopyWith<$Res>? get summary;
}

/// @nodoc
class __$$OrderStateImplCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$OrderStateImpl>
    implements _$$OrderStateImplCopyWith<$Res> {
  __$$OrderStateImplCopyWithImpl(
      _$OrderStateImpl _value, $Res Function(_$OrderStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
    Object? activeSubscription = freezed,
    Object? summary = freezed,
    Object? status = null,
    Object? errorMessage = freezed,
    Object? actionStatus = null,
    Object? actionError = freezed,
  }) {
    return _then(_$OrderStateImpl(
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<SubscriptionOrder>,
      activeSubscription: freezed == activeSubscription
          ? _value.activeSubscription
          : activeSubscription // ignore: cast_nullable_to_non_nullable
              as SubscriptionOrder?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as SubscriptionSummary?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      actionStatus: null == actionStatus
          ? _value.actionStatus
          : actionStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      actionError: freezed == actionError
          ? _value.actionError
          : actionError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$OrderStateImpl implements _OrderState {
  const _$OrderStateImpl(
      {final List<SubscriptionOrder> orders = const [],
      this.activeSubscription,
      this.summary,
      this.status = AppStatus.init,
      this.errorMessage,
      this.actionStatus = AppStatus.init,
      this.actionError})
      : _orders = orders;

  final List<SubscriptionOrder> _orders;
  @override
  @JsonKey()
  List<SubscriptionOrder> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  final SubscriptionOrder? activeSubscription;
  @override
  final SubscriptionSummary? summary;
  @override
  @JsonKey()
  final AppStatus status;
  @override
  final String? errorMessage;
  @override
  @JsonKey()
  final AppStatus actionStatus;
  @override
  final String? actionError;

  @override
  String toString() {
    return 'OrderState(orders: $orders, activeSubscription: $activeSubscription, summary: $summary, status: $status, errorMessage: $errorMessage, actionStatus: $actionStatus, actionError: $actionError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderStateImpl &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            (identical(other.activeSubscription, activeSubscription) ||
                other.activeSubscription == activeSubscription) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.actionStatus, actionStatus) ||
                other.actionStatus == actionStatus) &&
            (identical(other.actionError, actionError) ||
                other.actionError == actionError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_orders),
      activeSubscription,
      summary,
      status,
      errorMessage,
      actionStatus,
      actionError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderStateImplCopyWith<_$OrderStateImpl> get copyWith =>
      __$$OrderStateImplCopyWithImpl<_$OrderStateImpl>(this, _$identity);
}

abstract class _OrderState implements OrderState {
  const factory _OrderState(
      {final List<SubscriptionOrder> orders,
      final SubscriptionOrder? activeSubscription,
      final SubscriptionSummary? summary,
      final AppStatus status,
      final String? errorMessage,
      final AppStatus actionStatus,
      final String? actionError}) = _$OrderStateImpl;

  @override
  List<SubscriptionOrder> get orders;
  @override
  SubscriptionOrder? get activeSubscription;
  @override
  SubscriptionSummary? get summary;
  @override
  AppStatus get status;
  @override
  String? get errorMessage;
  @override
  AppStatus get actionStatus;
  @override
  String? get actionError;
  @override
  @JsonKey(ignore: true)
  _$$OrderStateImplCopyWith<_$OrderStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
