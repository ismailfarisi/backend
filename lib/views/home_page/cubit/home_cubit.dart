import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meal_app/data_repositories/vendor_repo.dart';
import 'package:meal_app/models/subscription_order.dart';
import 'package:meal_app/utils/enums.dart';

import '../../../models/subscription.dart';
import '../../../models/vendor.dart';
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
      ));

      // Load subscription and vendors in parallel
      final results = await Future.wait([
        _vendorRepo.getCurrentSubscription(),
        _vendorRepo.getRecommendedVendors(lat: 25.28, long: 55.25),
      ]);

      final subscriptionResult = results[0] as Result<Subscription?>;
      final vendorsResult = results[1] as Result<List<Vendor>>;

      Subscription? subscription;
      List<Vendor> vendors = [];
      String? errorMessage;

      // Handle subscription result
      switch (subscriptionResult) {
        case Success(value: final sub):
          subscription = sub;
          break;
        case Error(exception: final e):
          errorMessage = e;
          emit(state.copyWith(
            getSubscriptionStatus: AppStatus.failure,
            errorMessage: e,
          ));
      }

      // Handle vendors result
      switch (vendorsResult) {
        case Success(value: final v):
          vendors = v;
          break;
        case Error(exception: final e):
          errorMessage = e;
          emit(state.copyWith(
            getVendorsStatus: AppStatus.failure,
            errorMessage: e,
          ));
      }

      // Update state based on results
      emit(state.copyWith(
        status: errorMessage != null ? AppStatus.failure : AppStatus.success,
        subscription: subscription,
        vendors: vendors,
        getSubscriptionStatus: AppStatus.success,
        getVendorsStatus: AppStatus.success,
        errorMessage: errorMessage,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: AppStatus.failure,
        errorMessage: e.toString(),
        getSubscriptionStatus: AppStatus.failure,
        getVendorsStatus: AppStatus.failure,
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
