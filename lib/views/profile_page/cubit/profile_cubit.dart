import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meal_app/models/user.dart';

import '../../../models/address.dart';
import '../../../models/notification_settings.dart';
import '../../../utils/enums.dart';

part 'profile_state.dart';
part 'profile_cubit.freezed.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(const ProfileState()) {
    loadProfile();
  }

  Future<void> loadProfile() async {
    try {
      emit(state.copyWith(status: AppStatus.loading));

      // Simulate API call
      await Future.delayed(const Duration(seconds: 1));

      const defaultAddress = DeliveryAddress(
        id: '1',
        fullAddress: 'Apartment 4B, Building 7, Tech Park, Whitefield',
        street: 'Tech Park Road',
        apartment: '4B',
        coordinates: LatLng(
          latitude: 12.9716,
          longitude: 77.5946,
        ),
        emirate: "Dubai",
        isDefault: true,
        type: AddressType.home,
      );

      const profile = User(
        id: '123',
        fullName: 'John Doe',
        email: 'john.doe@example.com',
        phone: '+91 9876543210',
        defaultAddress: defaultAddress,
        notificationSettings: const NotificationSettings(
          orderUpdates: true,
          specialOffers: true,
          menuUpdates: false,
          deliveryReminders: true,
        ),
      );

      emit(state.copyWith(
        status: AppStatus.success,
        userProfile: profile,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: AppStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }

  Future<void> updateNotificationSettings(NotificationSettings settings) async {
    try {
      emit(state.copyWith(updateStatus: AppStatus.loading));

      // Simulate API call
      await Future.delayed(const Duration(seconds: 1));

      final updatedProfile = state.userProfile?.copyWith(
        notificationSettings: settings,
      );

      emit(state.copyWith(
        updateStatus: AppStatus.success,
        userProfile: updatedProfile,
      ));
    } catch (e) {
      emit(state.copyWith(
        updateStatus: AppStatus.failure,
        updateErrorMessage: e.toString(),
      ));
    }
  }

  Future<void> updateDietaryPreferences({
    required bool isVegetarian,
    required List<String> preferences,
    required List<String> allergies,
  }) async {
    try {
      emit(state.copyWith(updateStatus: AppStatus.loading));

      // Simulate API call
      await Future.delayed(const Duration(seconds: 1));

      final updatedProfile = state.userProfile?.copyWith();

      emit(state.copyWith(
        updateStatus: AppStatus.success,
        userProfile: updatedProfile,
      ));
    } catch (e) {
      emit(state.copyWith(
        updateStatus: AppStatus.failure,
        updateErrorMessage: e.toString(),
      ));
    }
  }
}
