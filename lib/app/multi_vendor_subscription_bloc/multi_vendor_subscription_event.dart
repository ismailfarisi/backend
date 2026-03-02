part of 'multi_vendor_subscription_bloc.dart';

@freezed
class MultiVendorSubscriptionEvent with _$MultiVendorSubscriptionEvent {
  const factory MultiVendorSubscriptionEvent.addVendorToWeek({
    required int weekNumber,
    required Vendor vendor,
  }) = AddVendorToWeek;

  const factory MultiVendorSubscriptionEvent.removeVendorFromWeek({
    required int weekNumber,
  }) = RemoveVendorFromWeek;

  const factory MultiVendorSubscriptionEvent.clearAllSelections() = ClearAllSelections;

  const factory MultiVendorSubscriptionEvent.setStartDate({
    required DateTime startDate,
  }) = SetStartDate;
}
