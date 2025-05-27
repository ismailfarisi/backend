// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderState {
  List<SubscriptionOrder> get orders;
  SubscriptionOrder? get activeSubscription;
  SubscriptionSummary? get summary;
  AppStatus get status;
  String? get errorMessage;
  AppStatus get actionStatus;
  String? get actionError;

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OrderStateCopyWith<OrderState> get copyWith =>
      _$OrderStateCopyWithImpl<OrderState>(this as OrderState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrderState &&
            const DeepCollectionEquality().equals(other.orders, orders) &&
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
      const DeepCollectionEquality().hash(orders),
      activeSubscription,
      summary,
      status,
      errorMessage,
      actionStatus,
      actionError);

  @override
  String toString() {
    return 'OrderState(orders: $orders, activeSubscription: $activeSubscription, summary: $summary, status: $status, errorMessage: $errorMessage, actionStatus: $actionStatus, actionError: $actionError)';
  }
}

/// @nodoc
abstract mixin class $OrderStateCopyWith<$Res> {
  factory $OrderStateCopyWith(
          OrderState value, $Res Function(OrderState) _then) =
      _$OrderStateCopyWithImpl;
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
class _$OrderStateCopyWithImpl<$Res> implements $OrderStateCopyWith<$Res> {
  _$OrderStateCopyWithImpl(this._self, this._then);

  final OrderState _self;
  final $Res Function(OrderState) _then;

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      orders: null == orders
          ? _self.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<SubscriptionOrder>,
      activeSubscription: freezed == activeSubscription
          ? _self.activeSubscription
          : activeSubscription // ignore: cast_nullable_to_non_nullable
              as SubscriptionOrder?,
      summary: freezed == summary
          ? _self.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as SubscriptionSummary?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      actionStatus: null == actionStatus
          ? _self.actionStatus
          : actionStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      actionError: freezed == actionError
          ? _self.actionError
          : actionError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubscriptionOrderCopyWith<$Res>? get activeSubscription {
    if (_self.activeSubscription == null) {
      return null;
    }

    return $SubscriptionOrderCopyWith<$Res>(_self.activeSubscription!, (value) {
      return _then(_self.copyWith(activeSubscription: value));
    });
  }

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubscriptionSummaryCopyWith<$Res>? get summary {
    if (_self.summary == null) {
      return null;
    }

    return $SubscriptionSummaryCopyWith<$Res>(_self.summary!, (value) {
      return _then(_self.copyWith(summary: value));
    });
  }
}

/// @nodoc

class _OrderState implements OrderState {
  const _OrderState(
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

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OrderStateCopyWith<_OrderState> get copyWith =>
      __$OrderStateCopyWithImpl<_OrderState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderState &&
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

  @override
  String toString() {
    return 'OrderState(orders: $orders, activeSubscription: $activeSubscription, summary: $summary, status: $status, errorMessage: $errorMessage, actionStatus: $actionStatus, actionError: $actionError)';
  }
}

/// @nodoc
abstract mixin class _$OrderStateCopyWith<$Res>
    implements $OrderStateCopyWith<$Res> {
  factory _$OrderStateCopyWith(
          _OrderState value, $Res Function(_OrderState) _then) =
      __$OrderStateCopyWithImpl;
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
class __$OrderStateCopyWithImpl<$Res> implements _$OrderStateCopyWith<$Res> {
  __$OrderStateCopyWithImpl(this._self, this._then);

  final _OrderState _self;
  final $Res Function(_OrderState) _then;

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? orders = null,
    Object? activeSubscription = freezed,
    Object? summary = freezed,
    Object? status = null,
    Object? errorMessage = freezed,
    Object? actionStatus = null,
    Object? actionError = freezed,
  }) {
    return _then(_OrderState(
      orders: null == orders
          ? _self._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<SubscriptionOrder>,
      activeSubscription: freezed == activeSubscription
          ? _self.activeSubscription
          : activeSubscription // ignore: cast_nullable_to_non_nullable
              as SubscriptionOrder?,
      summary: freezed == summary
          ? _self.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as SubscriptionSummary?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      actionStatus: null == actionStatus
          ? _self.actionStatus
          : actionStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      actionError: freezed == actionError
          ? _self.actionError
          : actionError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubscriptionOrderCopyWith<$Res>? get activeSubscription {
    if (_self.activeSubscription == null) {
      return null;
    }

    return $SubscriptionOrderCopyWith<$Res>(_self.activeSubscription!, (value) {
      return _then(_self.copyWith(activeSubscription: value));
    });
  }

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubscriptionSummaryCopyWith<$Res>? get summary {
    if (_self.summary == null) {
      return null;
    }

    return $SubscriptionSummaryCopyWith<$Res>(_self.summary!, (value) {
      return _then(_self.copyWith(summary: value));
    });
  }
}

// dart format on
