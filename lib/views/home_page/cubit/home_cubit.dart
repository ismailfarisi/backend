import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meal_app/data_repositories/vendor_repo.dart';

import 'package:meal_app/utils/enums.dart';

import '../../../models/subscription.dart';
import '../../../models/vendor.dart';
import '../../../models/menu_item.dart';
import '../../../models/vendor_menu.dart'
    hide DailyMenu; // Hide DailyMenu from vendor_menu
import '../../../utils/result.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._vendorRepo) : super(const HomeState()) {
    loadInitialData();
  }
  final VendorRepo _vendorRepo;
  Future<void> loadInitialData() async {
    try {
      emit(state.copyWith(
        status: AppStatus.loading,
        getSubscriptionStatus: AppStatus.loading,
        getVendorsStatus: AppStatus.loading,
        getTodayMenuStatus:
            AppStatus.loading, // Initialize status for today's menu
      ));

      // Load subscription, vendors, and today's menu in parallel
      // For now, let's assume we fetch a general menu or the menu of a default/first vendor
      // This part might need adjustment based on how "Today's Menu" is defined business-logic-wise
      final results = await Future.wait([
        _vendorRepo.getCurrentSubscription(),
        _vendorRepo.getRecommendedVendors(lat: 25.28, long: 55.25),
        // Placeholder: Fetching menu for the first recommended vendor if available,
        // or a general "today's menu" endpoint if that exists.
        // This needs clarification. For now, let's assume a general menu endpoint or mock.
        // If we need a vendor ID, we'd fetch vendors first, then fetch menu.
        // For simplicity, let's assume a method getTodaysSpecialMenuItems exists or adapt.
        // As getWeeklyMenu needs a vendorId, this approach needs refinement.
        // Let's fetch vendors first, then if vendors are available, fetch menu for the first one.
      ]);

      final subscriptionResult = results[0] as Result<Subscription?>;
      final vendorsResult = results[1] as Result<List<Vendor>>;
      // WeeklyMenu will be fetched after vendors

      Subscription? subscription;
      List<Vendor> vendors = [];
      List<MenuItem> todayMenuItems = [];
      String? errorMessage;

      // Handle subscription result
      switch (subscriptionResult) {
        case Success(value: final sub):
          subscription = sub;
          emit(state.copyWith(getSubscriptionStatus: AppStatus.success));
          break;
        case Error(exception: final e):
          errorMessage = (errorMessage ?? '') + 'Subscription: $e ';
          emit(state.copyWith(
            getSubscriptionStatus: AppStatus.failure,
            errorMessage: errorMessage,
          ));
      }

      // Handle vendors result
      switch (vendorsResult) {
        case Success(value: final v):
          vendors = v;
          emit(state.copyWith(getVendorsStatus: AppStatus.success));
          if (vendors.isNotEmpty) {
            List<MenuItem> aggregatedTodayMenuItems = [];
            // Fetch menu for up to the first 3 vendors
            final vendorsToFetchMenu = vendors.take(3).toList();
            int menusFetchedSuccessfully = 0;

            for (var vendor in vendorsToFetchMenu) {
              final menuResult = await _vendorRepo.getWeeklyMenu(vendor.id);
              switch (menuResult) {
                case Success(value: final vendorMenu):
                  // For now, skip menu items processing since VendorMenu structure
                  // doesn't match the MenuItem structure expected here
                  // TODO: Update this logic to work with VendorMenu structure
                  menusFetchedSuccessfully++;
                  break;
                case Error(exception: final e):
                  errorMessage =
                      (errorMessage ?? '') + 'Menu for ${vendor.name}: $e ';
                  break;
              }
            }
            todayMenuItems = aggregatedTodayMenuItems;
            if (menusFetchedSuccessfully > 0 || vendorsToFetchMenu.isEmpty) {
              emit(state.copyWith(getTodayMenuStatus: AppStatus.success));
            } else {
              emit(state.copyWith(
                  getTodayMenuStatus: AppStatus.failure,
                  errorMessage: errorMessage));
            }
          } else {
            // No vendors, so no specific menu to fetch for "Today's Menu"
            emit(state.copyWith(
                getTodayMenuStatus: AppStatus.success, todayMenuItems: []));
          }
          break;
        case Error(exception: final e):
          errorMessage = (errorMessage ?? '') + 'Vendors: $e ';
          emit(state.copyWith(
            getVendorsStatus: AppStatus.failure,
            errorMessage: errorMessage,
            getTodayMenuStatus:
                AppStatus.failure, // Also fail today's menu if vendors fail
          ));
      }

      // Update final state
      emit(state.copyWith(
        status: errorMessage != null && errorMessage.isNotEmpty
            ? AppStatus.failure
            : AppStatus.success,
        subscription: subscription,
        vendors: vendors,
        todayMenuItems: todayMenuItems,
        errorMessage: errorMessage?.trim(),
      ));
    } catch (e) {
      emit(state.copyWith(
        status: AppStatus.failure,
        errorMessage: e.toString(),
        getSubscriptionStatus: AppStatus.failure,
        getVendorsStatus: AppStatus.failure,
        getTodayMenuStatus: AppStatus.failure,
      ));
    }
  }

  Future<void> selectVendor(Vendor vendor) async {
    try {
      emit(state.copyWith(updateVendorStatus: AppStatus.loading));

      final menuResult = await _vendorRepo.getWeeklyMenu(vendor.id);

      switch (menuResult) {
        case Success():
          emit(state.copyWith(
            selectedVendor: vendor,
            updateVendorStatus: AppStatus.success,
          ));
          break;
        case Error(exception: final e):
          emit(state.copyWith(
            updateVendorStatus: AppStatus.failure,
            errorMessage: e,
          ));
      }
    } catch (e) {
      emit(state.copyWith(
        errorMessage: e.toString(),
        updateVendorStatus: AppStatus.failure,
      ));
    }
  }

  Future<void> refreshData() async {
    await loadInitialData();
  }
}
