part of 'vendor_detail_cubit.dart';

@freezed
abstract class VendorDetailState with _$VendorDetailState {
  const factory VendorDetailState({
    required Vendor vendor,
    WeeklyMenu? weeklyMenu,
    @Default(AppStatus.init) AppStatus status,
    @Default(AppStatus.init) AppStatus menuStatus,
    String? errorMessage,
    @Default(0) int selectedDayIndex,
    MenuItem? selectedMenuItem,
    // Subscription-related fields
    DateTime? selectedSubscriptionStartDate,
    @Default([]) List<SubscriptionMealSelection> selectedMeals,
    @Default(0.0) double subscriptionCost,
    @Default(false) bool isCreatingSubscription,
    String? subscriptionError,
    @Default(false) bool subscriptionCreatedSuccessfully,
    // Enhanced validation and pricing fields
    @Default([]) List<String> validationWarnings,
    SubscriptionPricingResult? pricingDetails,
    // Multi-vendor subscription fields
    @Default([]) List<Vendor> availableVendors,
    @Default({}) Map<int, Vendor> selectedVendorsByWeek,
    @Default([]) List<WeeklyVendorAssignment> weeklyAssignments,
    @Default(0.0) double multiVendorCost,
    @Default({}) Map<int, double> weeklyVendorCosts,
    @Default(MonthlySubscriptionType.singleVendor)
    MonthlySubscriptionType currentSubscriptionType,
    @Default(AppStatus.init) AppStatus vendorLoadingStatus,
    // Enhanced state management fields
    @Default(AppStatus.init) AppStatus validationStatus,
    @Default(AppStatus.init) AppStatus pricingStatus,
  }) = _VendorDetailState;
}
