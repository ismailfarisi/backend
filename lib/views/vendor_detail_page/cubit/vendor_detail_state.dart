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
  }) = _VendorDetailState;
}
