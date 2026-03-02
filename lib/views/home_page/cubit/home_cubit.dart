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
import '../../../app/auth_bloc/auth_bloc.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._vendorRepo, this._authBloc) : super(const HomeState()) {
    loadInitialData();
  }
  final VendorRepo _vendorRepo;
  final AuthBloc _authBloc;
  Future<void> loadInitialData() async {
    try {
      emit(state.copyWith(
        status: AppStatus.loading,
        getSubscriptionStatus: AppStatus.loading,
        getVendorsStatus: AppStatus.loading,
        getTodayMenuStatus:
            AppStatus.loading, // Initialize status for today's menu
      ));

      // Check if user is authenticated
      final isAuthenticated =
          _authBloc.state.authStatus == AuthStatus.authenticated;

      // Load vendors always, but subscription only if authenticated
      final vendorsResult =
          await _vendorRepo.getRecommendedVendors(lat: 25.28, long: 55.25);

      Subscription? subscription;
      Result<Subscription?>? subscriptionResult;

      // Only fetch subscription if user is authenticated
      if (isAuthenticated) {
        subscriptionResult = await _vendorRepo.getCurrentSubscription();
      }

      List<Vendor> vendors = [];
      List<MenuItem> todayMenuItems = [];
      String? errorMessage;

      // Handle subscription result (only if authenticated)
      if (subscriptionResult != null) {
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
      } else {
        // User not authenticated, set subscription status to success with null subscription
        emit(state.copyWith(getSubscriptionStatus: AppStatus.success));
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
