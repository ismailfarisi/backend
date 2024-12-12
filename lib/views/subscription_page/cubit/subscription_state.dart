// subscription_state.dart
part of 'subscription_cubit.dart';

@freezed
class SubscriptionState with _$SubscriptionState {
  const factory SubscriptionState({
    @Default(AppStatus.init) AppStatus status,
    @Default(AppStatus.init) AppStatus getVendorsStatus,
    @Default(AppStatus.init) AppStatus updateVendorStatus,
    @Default(AppStatus.init) AppStatus submitStatus,
    String? errorMessage,
    @Default([]) List<MealType> selectedMealTypes,
    Map<MealType, List<String>>? selectedVendors,
    Map<MealType, List<Vendor>>? availableVendors,
    Subscription? subscriptionPlan,
    DeliveryAddress? deliveryLocation,
  }) = _SubscriptionState;
}
