// subscription_cubit.dart
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meal_app/data_repositories/vendor_repo.dart';
import 'package:meal_app/models/address.dart';
import 'package:meal_app/models/subscription.dart';
import 'package:meal_app/models/subscription_meal_selection.dart';
import 'package:meal_app/models/subscription_order.dart';
import 'package:meal_app/models/vendor.dart';

import 'package:meal_app/utils/enums.dart';
import 'package:meal_app/utils/result.dart';

part 'subscription_state.dart';
part 'subscription_cubit.freezed.dart';

@injectable
class SubscriptionCubit extends Cubit<SubscriptionState> {
  SubscriptionCubit(this._vendorRepo) : super(const SubscriptionState());

  final VendorRepo _vendorRepo;

  Future<void> updateMealTypes(List<MealType> selectedMealTypes) async {
    try {
      emit(state.copyWith(
        status: AppStatus.loading,
        getVendorsStatus: AppStatus.loading,
        errorMessage: null,
      ));

      if (selectedMealTypes.isEmpty) {
        emit(state.copyWith(
          selectedMealTypes: [],
          status: AppStatus.success,
          getVendorsStatus: AppStatus.success,
        ));
        return;
      }

      final vendorsMap = <MealType, List<Vendor>>{};
      List<String>? errorMessage;

      // Fetch vendors for each meal type in parallel
      final results = await Future.wait(
        selectedMealTypes.map((type) => _vendorRepo.getVendorsByMealType(
              lat: 25.28, // Replace with actual user location
              long: 55.25,
              mealType: type.toString().split('.').last.toLowerCase(),
            )),
      );

      // Process results
      for (var i = 0; i < selectedMealTypes.length; i++) {
        final mealType = selectedMealTypes[i];
        final result = results[i];

        switch (result) {
          case Success(value: final vendors):
            vendorsMap[mealType] = vendors;
            break;
          case Error(exception: final e):
            errorMessage = [e];
            emit(state.copyWith(
              getVendorsStatus: AppStatus.failure,
              errorMessage: e,
            ));
        }
      }

      emit(state.copyWith(
        status: errorMessage != null ? AppStatus.failure : AppStatus.success,
        getVendorsStatus: AppStatus.success,
        selectedMealTypes: selectedMealTypes,
        selectedVendors: {
          for (var type in selectedMealTypes) type: <String>[],
        },
        availableVendors: vendorsMap,
        errorMessage: errorMessage?[0],
      ));
    } catch (e) {
      emit(state.copyWith(
        status: AppStatus.failure,
        getVendorsStatus: AppStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }

  Future<void> toggleVendorSelection(MealType mealType, String vendorId) async {
    try {
      emit(state.copyWith(
        updateVendorStatus: AppStatus.loading,
        errorMessage: null,
      ));

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
        updateVendorStatus: AppStatus.success,
      ));
    } catch (e) {
      emit(state.copyWith(
        updateVendorStatus: AppStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }

  Future<void> createSubscriptionPlan() async {
    try {
      emit(state.copyWith(
        submitStatus: AppStatus.loading,
        errorMessage: null,
      ));

      // Map selections to the format expected by the backend
      final subscriptionMealSelections = state.selectedMealTypes.map((type) {
        final selectedVendorIds = state.selectedVendors?[type] ?? [];
        return SubscriptionMealSelection(
          dayOfWeek: 'Monday', // Default to Monday
          menuItemId: 'default_item', // Default menu item
        );
      }).toList();

      // Convert to MealVendorSelection for the Subscription model
      final mealVendorSelections = subscriptionMealSelections.map((selection) {
        return MealVendorSelection(
          mealType:
              state.selectedMealTypes.first, // Use first meal type as default
          vendorIds: const ['default_vendor'], // Default vendor list
        );
      }).toList();

      // TODO: Uncomment when backend is ready
      // final orderDto = SubscriptionOrderDto(
      //   mealSelections: subscriptionMealSelections,
      //   startDate: DateTime.now(),
      //   endDate: DateTime.now().add(const Duration(days: 30)),
      // );

      // final result = await _vendorRepo.createSubscription(orderDto);

      // switch (result) {
      //   case Success(value: final subscription):

      // For now, create a mock subscription with default values
      final startDate = DateTime.now();
      final endDate = DateTime.now().add(const Duration(days: 30));

      emit(state.copyWith(
        subscriptionPlan: Subscription(
            userId: 'user_123', // TODO: Get from auth state
            price: 299.99, // TODO: Calculate based on selections
            mealSelections: mealVendorSelections,
            startDate: startDate,
            endDate: endDate,
            status: SubscriptionStatus.active),
        submitStatus: AppStatus.success,
      ));
      //   break;
      // case Error(exception: final e):
      //   emit(state.copyWith(
      //     submitStatus: AppStatus.failure,
      //     errorMessage: e,
      //   ));
      // }
    } catch (e) {
      emit(state.copyWith(
        submitStatus: AppStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }

  void updateStartDate(DateTime startDate) {
    emit(state.copyWith(startDate: startDate));
  }

  Future<void> confirmSubscription() async {
    if (state.subscriptionPlan == null) return;

    try {
      emit(state.copyWith(
        submitStatus: AppStatus.loading,
        errorMessage: null,
      ));

      final result = await _vendorRepo.confirmSubscription(
        state.subscriptionPlan!.id!,
        {
          'paymentMethod': 'card',
          'paymentDetails': {
            'token': 'payment_token', // Add actual payment token
          },
        },
      );

      switch (result) {
        case Success(value: final subscription):
          emit(state.copyWith(
            subscriptionPlan: subscription,
            submitStatus: AppStatus.success,
          ));
          break;
        case Error(exception: final e):
          emit(state.copyWith(
            submitStatus: AppStatus.failure,
            errorMessage: e,
          ));
      }
    } catch (e) {
      emit(state.copyWith(
        submitStatus: AppStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }
}
