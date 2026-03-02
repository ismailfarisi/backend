import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../models/vendor.dart';
import '../../../utils/enums.dart';
import '../../../data_repositories/vendor_repo.dart';
import '../../../utils/result.dart';

part 'vendor_list_state.dart';
part 'vendor_list_cubit.freezed.dart';

@injectable
class VendorListCubit extends Cubit<VendorListState> {
  final VendorRepo _vendorRepo;

  VendorListCubit(this._vendorRepo) : super(const VendorListState()) {
    loadVendors();
  }

  Future<void> loadVendors() async {
    try {
      emit(state.copyWith(status: AppStatus.loading));

      // TODO: Replace with actual user location from location service
      // For now using default coordinates (Dubai)
      const double lat = 25.2048;
      const double long = 55.2708;

      final result = await _vendorRepo.getVendors(lat: lat, long: long);

      switch (result) {
        case Success(value: final vendors):
          emit(state.copyWith(
            vendors: vendors,
            filteredVendors: vendors,
            status: AppStatus.success,
          ));
          _applyFiltersAndSort();
        case Error(exception: final message):
          emit(state.copyWith(
            status: AppStatus.failure,
            errorMessage: message,
          ));
      }
    } catch (e) {
      emit(state.copyWith(
        status: AppStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }

  void searchVendors(String query) {
    emit(state.copyWith(searchQuery: query));
    _applyFiltersAndSort();
  }

  void filterByCuisine(String? cuisine) {
    emit(state.copyWith(selectedCuisineFilter: cuisine));
    _applyFiltersAndSort();
  }

  void setSortOption(VendorSortOption option) {
    emit(state.copyWith(sortOption: option));
    _applyFiltersAndSort();
  }

  void clearFilters() {
    emit(state.copyWith(
      searchQuery: '',
      selectedCuisineFilter: null,
      sortOption: VendorSortOption.rating,
    ));
    _applyFiltersAndSort();
  }

  void _applyFiltersAndSort() {
    var filtered = List<Vendor>.from(state.vendors);

    // Apply search filter
    if (state.searchQuery.isNotEmpty) {
      filtered = filtered.where((vendor) {
        return vendor.name.toLowerCase().contains(state.searchQuery.toLowerCase()) ||
            vendor.cuisineTypes.any((cuisine) =>
                cuisine.toLowerCase().contains(state.searchQuery.toLowerCase()));
      }).toList();
    }

    // Apply cuisine filter
    if (state.selectedCuisineFilter != null && state.selectedCuisineFilter!.isNotEmpty) {
      filtered = filtered.where((vendor) {
        return vendor.cuisineTypes.contains(state.selectedCuisineFilter);
      }).toList();
    }

    // Apply sorting
    switch (state.sortOption) {
      case VendorSortOption.rating:
        filtered.sort((a, b) => b.rating.compareTo(a.rating));
        break;
      case VendorSortOption.distance:
        filtered.sort((a, b) {
          final distanceA = a.distance ?? double.infinity;
          final distanceB = b.distance ?? double.infinity;
          return distanceA.compareTo(distanceB);
        });
        break;
      case VendorSortOption.name:
        filtered.sort((a, b) => a.name.compareTo(b.name));
        break;
    }

    emit(state.copyWith(filteredVendors: filtered));
  }

  List<String> getAllCuisineTypes() {
    final cuisines = <String>{};
    for (final vendor in state.vendors) {
      cuisines.addAll(vendor.cuisineTypes);
    }
    return cuisines.toList()..sort();
  }
}
