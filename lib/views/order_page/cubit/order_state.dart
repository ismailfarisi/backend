part of 'order_cubit.dart';

@freezed
abstract class OrderState with _$OrderState {
  const factory OrderState({
    @Default([]) List<SubscriptionOrder> orders,
    SubscriptionOrder? activeSubscription,
    SubscriptionSummary? summary,
    @Default(AppStatus.init) AppStatus status,
    String? errorMessage,
    @Default(AppStatus.init) AppStatus actionStatus,
    String? actionError,
  }) = _OrderState;
}
