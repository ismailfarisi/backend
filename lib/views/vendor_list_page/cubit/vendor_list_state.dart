part of 'vendor_list_cubit.dart';

@freezed
abstract class VendorListState with _$VendorListState {
  const factory VendorListState({
    @Default([]) List<Vendor> vendors,
    @Default([]) List<Vendor> filteredVendors,
    @Default(AppStatus.init) AppStatus status,
    String? errorMessage,
    @Default('') String searchQuery,
    String? selectedCuisineFilter,
    @Default(VendorSortOption.rating) VendorSortOption sortOption,
  }) = _VendorListState;
}

enum VendorSortOption {
  rating,
  distance,
  name,
}
