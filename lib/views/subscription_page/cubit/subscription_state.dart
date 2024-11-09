part of 'subscription_cubit.dart';

@freezed
class SubscriptionState with _$SubscriptionState {
  const factory SubscriptionState.initial() = _Initial;
  const factory SubscriptionState.loading() = _Loading;
  const factory SubscriptionState.error(String message) = _Error;
  const factory SubscriptionState.mealTypeSelection({
    @Default([]) List<MealType> selectedMealTypes,
  }) = _MealTypeSelection;
  const factory SubscriptionState.vendorSelection({
    required List<MealType> selectedMealTypes,
    required Map<MealType, List<String>> selectedVendors,
    required Map<MealType, List<Vendor>> availableVendors,
  }) = _VendorSelection;
  const factory SubscriptionState.review({
    required SubscriptionPlan plan,
  }) = _Review;
  const factory SubscriptionState.success({
    required SubscriptionPlan plan,
  }) = _Success;
