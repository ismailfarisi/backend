part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    Subscription? subscription,
    @Default(AppStatus.init) AppStatus status,
    String? errorMessage,
    @Default([]) List<Vendor> vendors,
    Vendor? selectedVendor,
    @Default(AppStatus.init) AppStatus getVendorsStatus,
    @Default(AppStatus.init) AppStatus getSubscriptionStatus,
    @Default(AppStatus.init) AppStatus updateVendorStatus,
  }) = _HomeState;
}
