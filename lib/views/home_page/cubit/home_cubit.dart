import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meal_app/utils/enums.dart';

import '../../../models/subscription.dart';
import '../../../models/vendor.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState()) {
    loadInitialData();
  }
  Future<void> loadInitialData() async {
    try {
      emit(state.copyWith(
        status: AppStatus.loading,
        getSubscriptionStatus: AppStatus.loading,
        getVendorsStatus: AppStatus.loading,
      ));

      // Simulate API calls
      await Future.delayed(const Duration(seconds: 1));

      // Mock subscription data
      final subscription = Subscription(
        id: '123',
        type: SubscriptionType.premium,
        startDate: DateTime.now(),
        endDate: DateTime.now().add(const Duration(days: 30)),
        meals: [MealType.breakfast, MealType.dinner],
        price: 2999,
        currentVendor: 'Vendor A',
      );

      // Mock vendors data
      final vendors = [
        const Vendor(
          id: '1',
          name: 'Healthy Bites',
          description: 'Specializing in nutritious and balanced meals',
          rating: 4.5,
          imageUrl: 'assets/vendor1.jpg',
          specialities: ['Keto', 'Low-carb', 'Vegan options'],
          mealPrices: {
            MealType.breakfast: 149,
            MealType.lunch: 199,
            MealType.dinner: 179,
          },
        ),
        // Add more vendors
      ];

      emit(state.copyWith(
        status: AppStatus.success,
        subscription: subscription,
        vendors: vendors,
        getSubscriptionStatus: AppStatus.success,
        getVendorsStatus: AppStatus.success,
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
      emit(state.copyWith(
        updateVendorStatus: AppStatus.loading,
      ));

      // Simulate API call to update vendor
      await Future.delayed(const Duration(seconds: 1));

      emit(state.copyWith(
        selectedVendor: vendor,
        updateVendorStatus: AppStatus.success,
      ));
    } catch (e) {
      emit(state.copyWith(
        errorMessage: e.toString(),
        updateVendorStatus: AppStatus.failure,
      ));
    }
  }
}
