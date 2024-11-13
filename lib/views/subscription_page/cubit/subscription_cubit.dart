import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meal_app/models/vendor_menu.dart';
import 'package:meal_app/models/vendor.dart';

import '../../../models/subscription.dart';
import '../../../models/subscription_order.dart';
import '../../../utils/enums.dart';
import 'mockdata.dart';

part 'subscription_state.dart';
part 'subscription_cubit.freezed.dart';

class SubscriptionCubit extends Cubit<SubscriptionState> {
  SubscriptionCubit() : super(const SubscriptionState());

  Future<void> initializeSubscription() async {
    emit(state.copyWith(
      status: AppStatus.init,
      errorMessage: null,
      selectedMealTypes: [],
      selectedVendors: {},
      availableVendors: {},
    ));
  }

  Future<void> updateMealTypes(List<MealType> selectedMealTypes) async {
    emit(state.copyWith(
      status: AppStatus.loading,
      errorMessage: null,
    ));

    try {
      if (selectedMealTypes.isEmpty) {
        emit(state.copyWith(
          selectedMealTypes: [],
          status: AppStatus.success,
        ));
        return;
      }

      final vendorsMap = {
        for (var type in selectedMealTypes)
          type: MockSubscriptionData.vendorsByMealType[type] ?? [],
      };

      emit(state.copyWith(
        selectedMealTypes: selectedMealTypes,
        selectedVendors: {
          for (var type in selectedMealTypes) type: <String>[],
        },
        availableVendors: vendorsMap,
        status: AppStatus.success,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: AppStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }

  Future<void> toggleVendorSelection(MealType mealType, String vendorId) async {
    final currentVendors =
        List<String>.from(state.selectedVendors?[mealType] ?? []);

    if (currentVendors.contains(vendorId)) {
      currentVendors.remove(vendorId);
    } else if (currentVendors.length < 4) {
      currentVendors.add(vendorId);
    }

    final updatedVendors =
        Map<MealType, List<String>>.from(state.selectedVendors ?? {})
          ..[mealType] = currentVendors;

    emit(state.copyWith(
      selectedVendors: updatedVendors,
      status: AppStatus.success,
    ));
  }

  Future<void> createSubscriptionPlan() async {
    emit(state.copyWith(
      submitStatus: AppStatus.loading,
      submitErrorMessage: null,
    ));

    try {
      await Future.delayed(const Duration(seconds: 1)); // Simulate API call

      final mealSelections = state.selectedMealTypes.map((type) {
        return MealVendorSelection(
          mealType: type,
          vendorIds: state.selectedVendors?[type] ?? [],
        );
      }).toList();

      // Calculate total amount based on selected vendors
      double totalAmount = 0;
      for (var type in state.selectedMealTypes) {
        final selectedVendorIds = state.selectedVendors?[type] ?? [];
        final vendors = state.availableVendors?[type] ?? [];
        for (var vendorId in selectedVendorIds) {
          final vendor = vendors.firstWhere((v) => v.vendorId == vendorId);
          totalAmount += vendor.price * 30; // 30 days
        }
      }

      final plan = Subscription(
        id: 'sub_${DateTime.now().millisecondsSinceEpoch}',
        userId: 'mock_user_id',
        mealSelections: mealSelections,
        price: 3000,
        startDate: DateTime.now(),
        endDate: DateTime.now().add(const Duration(days: 30)),
        status: SubscriptionStatus.paused,
      );

      emit(state.copyWith(
        subscriptionPlan: plan,
        submitStatus: AppStatus.success,
      ));
    } catch (e) {
      emit(state.copyWith(
        submitStatus: AppStatus.failure,
        submitErrorMessage: e.toString(),
      ));
    }
  }

  Future<void> confirmSubscription() async {
    if (state.subscriptionPlan == null) return;

    emit(state.copyWith(
      submitStatus: AppStatus.loading,
      submitErrorMessage: null,
    ));

    try {
      await Future.delayed(const Duration(seconds: 1)); // Simulate API call

      final confirmedPlan = state.subscriptionPlan!.copyWith(
        status: SubscriptionStatus.active,
      );

      emit(state.copyWith(
        subscriptionPlan: confirmedPlan,
        submitStatus: AppStatus.success,
      ));
    } catch (e) {
      emit(state.copyWith(
        submitStatus: AppStatus.failure,
        submitErrorMessage: e.toString(),
      ));
    }
  }
}
