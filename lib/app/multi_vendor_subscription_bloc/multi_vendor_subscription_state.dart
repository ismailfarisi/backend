part of 'multi_vendor_subscription_bloc.dart';

@freezed
abstract class MultiVendorSubscriptionState
    with _$MultiVendorSubscriptionState {
  const factory MultiVendorSubscriptionState({
    @Default(<int, Vendor>{}) Map<int, Vendor> selectedVendorsByWeek,
    DateTime? startDate,
  }) = _MultiVendorSubscriptionState;
}
