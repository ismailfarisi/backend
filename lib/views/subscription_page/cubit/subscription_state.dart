part of 'subscription_cubit.dart';

@freezed
class SubscriptionState with _$SubscriptionState {
  const factory SubscriptionState({
    @Default([]) List<MealType> selectedMealTypes,
    Map<MealType, List<String>>? selectedVendors,
    Map<MealType, List<VendorMenu>>? availableVendors,
    Subscription? subscriptionPlan,
    @Default(AppStatus.init) AppStatus status,
    String? errorMessage,
    @Default(AppStatus.init) AppStatus submitStatus,
    String? submitErrorMessage,
  }) = _SubscriptionState;
}
