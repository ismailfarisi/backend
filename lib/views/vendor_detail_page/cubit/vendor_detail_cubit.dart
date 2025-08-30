import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../models/menu_item.dart';
import '../../../models/vendor.dart';
import '../../../models/subscription_meal_selection.dart';
import '../../../models/subscription_creation_request.dart';
import '../../../models/weekly_vendor_assignment.dart';
import '../../../models/address.dart';
import '../../../utils/enums.dart';
import '../../../services/subscription_validation_service.dart';
import '../../../services/subscription_business_rules.dart';

part 'vendor_detail_state.dart';
part 'vendor_detail_cubit.freezed.dart';

@injectable
class VendorDetailCubit extends Cubit<VendorDetailState> {
  VendorDetailCubit({@factoryParam required Vendor vendor})
      : super(VendorDetailState(vendor: vendor)) {
    loadWeeklyMenu();
  }

  Future<void> loadWeeklyMenu() async {
    try {
      emit(state.copyWith(menuStatus: AppStatus.loading));

      // Simulate API call
      await Future.delayed(const Duration(seconds: 1));

      // Mock weekly menu data
      final weeklyMenu = WeeklyMenu(
        id: '1',
        startDate: DateTime.now(),
        endDate: DateTime.now().add(const Duration(days: 7)),
        dailyMenus: List.generate(7, (index) {
          return DailyMenu(
            date: DateTime.now().add(Duration(days: index)),
            breakfastOptions: [
              const MenuItem(
                id: '1',
                name: 'Idli Sambar',
                price: 60,
                isVegetarian: true,
              ),
              const MenuItem(
                id: '2',
                name: 'Masala Dosa',
                price: 80,
                isVegetarian: true,
              ),
            ],
            lunchOptions: [
              const MenuItem(
                id: '3',
                name: 'Chicken Biryani',
                price: 160,
              ),
              const MenuItem(
                id: '4',
                name: 'Rice and Curry',
                price: 120,
                isVegetarian: true,
              ),
              const MenuItem(
                id: '5',
                name: 'Ghee Rice and Beef Curry',
                price: 180,
              ),
            ],
            dinnerOptions: [
              const MenuItem(
                id: '6',
                name: 'Chapathi and Curry',
                price: 100,
                isVegetarian: true,
              ),
              const MenuItem(
                id: '7',
                name: 'Porotta and Beef Fry',
                price: 140,
              ),
            ],
          );
        }),
      );

      emit(state.copyWith(
        weeklyMenu: weeklyMenu,
        menuStatus: AppStatus.success,
      ));
    } catch (e) {
      emit(state.copyWith(
        menuStatus: AppStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }

  void selectDay(int index) {
    emit(state.copyWith(selectedDayIndex: index));
  }

  void selectMenuItem(MenuItem item) {
    emit(state.copyWith(selectedMenuItem: item));
  }

  // Helper methods for calculations
  void _updateWeeklyAssignments() {
    if (state.selectedSubscriptionStartDate == null) return;

    final assignments = <WeeklyVendorAssignment>[];

    state.selectedVendorsByWeek.forEach((weekNumber, vendor) {
      final weekStartDate = state.selectedSubscriptionStartDate!.add(
        Duration(days: (weekNumber - 1) * 7),
      );
      final weekEndDate = weekStartDate.add(const Duration(days: 6));

      assignments.add(WeeklyVendorAssignment(
        weekNumber: weekNumber,
        vendorId: vendor.id,
        weekStartDate: weekStartDate,
        weekEndDate: weekEndDate,
      ));
    });

    emit(state.copyWith(weeklyAssignments: assignments));
  }

  void _calculateMultiVendorCost() {
    double totalCost = 0.0;
    final weeklyVendorCosts = <int, double>{};

    // Mock pricing per vendor per week - replace with actual calculation
    state.selectedVendorsByWeek.forEach((weekNumber, vendor) {
      // Base cost varies by vendor (mock data)
      double weeklyCost = 200.0; // Base weekly cost

      // Adjust cost based on vendor rating and other factors
      switch (vendor.id) {
        case 'vendor1':
          weeklyCost = 180.0;
          break;
        case 'vendor2':
          weeklyCost = 220.0;
          break;
        case 'vendor3':
          weeklyCost = 160.0;
          break;
        case 'vendor4':
          weeklyCost = 190.0;
          break;
        default:
          weeklyCost = 200.0;
      }

      weeklyVendorCosts[weekNumber] = weeklyCost;
      totalCost += weeklyCost;
    });

    emit(state.copyWith(
      multiVendorCost: totalCost,
      weeklyVendorCosts: weeklyVendorCosts,
    ));
  }

  // Subscription functionality
  void selectSubscriptionStartDate(DateTime startDate) {
    emit(state.copyWith(
      selectedSubscriptionStartDate: startDate,
      subscriptionError: null,
    ));
    _calculateSubscriptionCost();
    if (state.currentSubscriptionType ==
        MonthlySubscriptionType.multiVendorWeeklySplit) {
      _updateWeeklyAssignments();
    }
  }

  void toggleMealSelection(SubscriptionMealSelection meal) {
    final updatedMeals =
        List<SubscriptionMealSelection>.from(state.selectedMeals);

    final existingIndex = updatedMeals.indexWhere(
      (m) => m.menuItemId == meal.menuItemId && m.dayOfWeek == meal.dayOfWeek,
    );

    if (existingIndex != -1) {
      updatedMeals.removeAt(existingIndex);
    } else {
      updatedMeals.add(meal);
    }

    emit(state.copyWith(
      selectedMeals: updatedMeals,
      subscriptionError: null,
    ));
    _calculateSubscriptionCost();
  }

  void clearMealSelections() {
    emit(state.copyWith(
      selectedMeals: [],
      subscriptionCost: 0.0,
      subscriptionError: null,
    ));
  }

  void _calculateSubscriptionCost() {
    if (state.selectedSubscriptionStartDate == null) {
      emit(state.copyWith(subscriptionCost: 0.0, multiVendorCost: 0.0));
      return;
    }

    try {
      // Use business rules for comprehensive pricing calculation
      final pricingResult =
          SubscriptionBusinessRules.calculateSubscriptionPricing(
        subscriptionType: state.currentSubscriptionType,
        mealSelections: state.selectedMeals,
        selectedVendorsByWeek: state.selectedVendorsByWeek,
        startDate: state.selectedSubscriptionStartDate!,
        isLoyalCustomer: false, // TODO: Get from user profile
      );

      if (state.currentSubscriptionType ==
          MonthlySubscriptionType.multiVendorWeeklySplit) {
        emit(state.copyWith(
          multiVendorCost: pricingResult.totalAmount,
          weeklyVendorCosts: pricingResult.costBreakdown.weeklyBreakdown,
          pricingDetails: pricingResult,
        ));
      } else {
        emit(state.copyWith(
          subscriptionCost: pricingResult.totalAmount,
          pricingDetails: pricingResult,
        ));
      }
    } catch (e) {
      // Fallback to simple calculation if business rules fail
      _calculateSimpleSubscriptionCost();
    }
  }

  /// Fallback simple cost calculation
  void _calculateSimpleSubscriptionCost() {
    if (state.currentSubscriptionType ==
        MonthlySubscriptionType.multiVendorWeeklySplit) {
      _calculateMultiVendorCost();
      return;
    }

    double totalCost = 0.0;

    // Group meals by day to calculate weekly cost
    final mealsByDay = <String, List<SubscriptionMealSelection>>{};
    for (final meal in state.selectedMeals) {
      mealsByDay.putIfAbsent(meal.dayOfWeek, () => []).add(meal);
    }

    // Calculate daily costs
    for (final dayMeals in mealsByDay.values) {
      for (final meal in dayMeals) {
        // Find the menu item in vendor's menu (assuming it's available in weeklyMenu)
        if (state.weeklyMenu != null) {
          for (final dailyMenu in state.weeklyMenu!.dailyMenus) {
            final allItems = [
              ...dailyMenu.breakfastOptions,
              ...dailyMenu.lunchOptions,
              ...dailyMenu.dinnerOptions,
            ];
            final menuItem = allItems.firstWhere(
              (item) => item.id == meal.menuItemId,
              orElse: () => const MenuItem(id: '', name: '', price: 0),
            );
            if (menuItem.id.isNotEmpty) {
              totalCost += menuItem.price * meal.quantity;
              break;
            }
          }
        }
      }
    }

    // Multiply by 4 weeks to get monthly cost
    final monthlyCost = totalCost * 4;

    emit(state.copyWith(subscriptionCost: monthlyCost));
  }

  double calculateSubscriptionCost() {
    return state.subscriptionCost;
  }

  bool _validateSubscriptionData() {
    // Create subscription request for validation
    final request = _createSubscriptionRequest();
    if (request == null) {
      _setSubscriptionError('Unable to create subscription request');
      return false;
    }

    // Use comprehensive validation service
    final validationResult =
        SubscriptionValidationService.validateSubscriptionCreation(
      request,
      availableVendors: state.availableVendors,
      mealSelections: state.selectedMeals,
    );

    // Set validation errors
    if (!validationResult.isValid) {
      _setSubscriptionError(validationResult.formattedErrors);
      return false;
    }

    // Show warnings but don't block creation
    if (validationResult.warnings.isNotEmpty) {
      // Could emit warnings separately or add to state
      emit(state.copyWith(validationWarnings: validationResult.warnings));
    }

    // Validate business constraints
    final businessConstraints =
        SubscriptionBusinessRules.validateBusinessConstraints(
      subscriptionType: state.currentSubscriptionType,
      startDate: state.selectedSubscriptionStartDate!,
      endDate:
          state.selectedSubscriptionStartDate!.add(const Duration(days: 28)),
      totalAmount: getCurrentSubscriptionCost(),
      selectedVendorsByWeek: state.selectedVendorsByWeek,
      mealSelections: state.selectedMeals,
    );

    if (businessConstraints.isNotEmpty) {
      _setSubscriptionError(businessConstraints.join('\n'));
      return false;
    }

    return true;
  }

  /// Create subscription request from current state
  SubscriptionCreationRequest? _createSubscriptionRequest() {
    if (state.selectedSubscriptionStartDate == null) return null;

    if (state.currentSubscriptionType == MonthlySubscriptionType.singleVendor) {
      return SubscriptionCreationRequest(
        subscriptionType: MonthlySubscriptionType.singleVendor,
        vendorIds: [state.vendor.id],
        startDate: state.selectedSubscriptionStartDate!,
        mealSelections: {
          'selectedMeals': state.selectedMeals.map((m) => m.toJson()).toList(),
        },
        deliveryAddress: const DeliveryAddress(
          id: 'temp-address',
          fullAddress: 'Temporary address - to be filled from user profile',
          street: 'Temporary Street',
          apartment: '',
          emirate: 'Dubai',
          coordinates: LatLng(latitude: 25.0, longitude: 55.0),
        ),
      );
    } else {
      return SubscriptionCreationRequest(
        subscriptionType: MonthlySubscriptionType.multiVendorWeeklySplit,
        vendorIds: state.selectedVendorsByWeek.values.map((v) => v.id).toList(),
        weeklyAssignments: state.weeklyAssignments,
        startDate: state.selectedSubscriptionStartDate!,
        mealSelections: {
          'multiVendorAssignments': state.selectedVendorsByWeek.map(
            (week, vendor) => MapEntry(week.toString(), vendor.id),
          ),
          'totalCost': state.multiVendorCost,
          'weeklyBreakdown': state.weeklyVendorCosts,
        },
        deliveryAddress: const DeliveryAddress(
          id: 'temp-address',
          fullAddress: 'Temporary address - to be filled from user profile',
          street: 'Temporary Street',
          apartment: '',
          emirate: 'Dubai',
          coordinates: LatLng(latitude: 25.0, longitude: 55.0),
        ),
      );
    }
  }

  void _setSubscriptionError(String error) {
    emit(state.copyWith(subscriptionError: error));
  }

  // Multi-vendor subscription functionality
  Future<void> loadAvailableVendors() async {
    try {
      emit(state.copyWith(vendorLoadingStatus: AppStatus.loading));

      // Mock available vendors data - replace with actual API call
      await Future.delayed(const Duration(seconds: 1));

      final availableVendors = [
        const Vendor(
          id: 'vendor1',
          name: 'Mediterranean Delights',
          businessName: 'Mediterranean Delights LLC',
          profilePhotoUrl: 'https://example.com/vendor1.jpg',
          coverPhotoUrl: 'https://example.com/vendor1_cover.jpg',
          cuisineTypes: ['Mediterranean', 'Greek'],
          rating: 4.5,
          distance: 2.3,
        ),
        const Vendor(
          id: 'vendor2',
          name: 'Asian Fusion Kitchen',
          businessName: 'Asian Fusion Kitchen LLC',
          profilePhotoUrl: 'https://example.com/vendor2.jpg',
          coverPhotoUrl: 'https://example.com/vendor2_cover.jpg',
          cuisineTypes: ['Asian', 'Fusion'],
          rating: 4.8,
          distance: 1.5,
        ),
        const Vendor(
          id: 'vendor3',
          name: 'Local Spice House',
          businessName: 'Local Spice House LLC',
          profilePhotoUrl: 'https://example.com/vendor3.jpg',
          coverPhotoUrl: 'https://example.com/vendor3_cover.jpg',
          cuisineTypes: ['Indian', 'Pakistani'],
          rating: 4.3,
          distance: 3.1,
        ),
        const Vendor(
          id: 'vendor4',
          name: 'Italian Corner',
          businessName: 'Italian Corner LLC',
          profilePhotoUrl: 'https://example.com/vendor4.jpg',
          coverPhotoUrl: 'https://example.com/vendor4_cover.jpg',
          cuisineTypes: ['Italian', 'Pizza'],
          rating: 4.6,
          distance: 2.8,
        ),
      ];

      emit(state.copyWith(
        availableVendors: availableVendors,
        vendorLoadingStatus: AppStatus.success,
      ));
    } catch (e) {
      emit(state.copyWith(
        vendorLoadingStatus: AppStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }

  void setSubscriptionType(MonthlySubscriptionType type) {
    emit(state.copyWith(
      currentSubscriptionType: type,
      subscriptionError: null,
    ));

    if (type == MonthlySubscriptionType.multiVendorWeeklySplit &&
        state.availableVendors.isEmpty) {
      loadAvailableVendors();
    }

    // Clear multi-vendor selections when switching to single vendor
    if (type == MonthlySubscriptionType.singleVendor) {
      emit(state.copyWith(
        selectedVendorsByWeek: {},
        weeklyAssignments: [],
        multiVendorCost: 0.0,
        weeklyVendorCosts: {},
      ));
    }

    _calculateSubscriptionCost();
  }

  void selectVendorForWeek(int weekNumber, Vendor vendor) {
    if (weekNumber < 1 || weekNumber > 4) return;

    final updatedSelections =
        Map<int, Vendor>.from(state.selectedVendorsByWeek);
    updatedSelections[weekNumber] = vendor;

    emit(state.copyWith(
      selectedVendorsByWeek: updatedSelections,
      subscriptionError: null,
    ));

    _updateWeeklyAssignments();
    _calculateMultiVendorCost();
  }

  void removeVendorFromWeek(int weekNumber) {
    if (weekNumber < 1 || weekNumber > 4) return;

    final updatedSelections =
        Map<int, Vendor>.from(state.selectedVendorsByWeek);
    updatedSelections.remove(weekNumber);

    emit(state.copyWith(
      selectedVendorsByWeek: updatedSelections,
      subscriptionError: null,
    ));

    _updateWeeklyAssignments();
    _calculateMultiVendorCost();
  }

  bool validateWeeklyAssignments() {
    if (state.currentSubscriptionType !=
        MonthlySubscriptionType.multiVendorWeeklySplit) {
      return true;
    }

    // Check if we have at least 1 vendor selected
    if (state.selectedVendorsByWeek.isEmpty) {
      _setSubscriptionError(
          'Please select at least one vendor for the subscription');
      return false;
    }

    // Check if all 4 weeks are covered
    final missingWeeks = <int>[];
    for (int week = 1; week <= 4; week++) {
      if (!state.selectedVendorsByWeek.containsKey(week)) {
        missingWeeks.add(week);
      }
    }

    if (missingWeeks.isNotEmpty) {
      _setSubscriptionError(
          'Please assign vendors to all weeks. Missing: Week ${missingWeeks.join(', ')}');
      return false;
    }

    // Minimum 2 vendors requirement for multi-vendor subscription
    final uniqueVendors =
        state.selectedVendorsByWeek.values.map((v) => v.id).toSet();
    if (uniqueVendors.length < 2) {
      _setSubscriptionError(
          'Multi-vendor subscription requires at least 2 different vendors');
      return false;
    }

    return true;
  }

  Future<void> createSingleVendorSubscription() async {
    if (!_validateSubscriptionData()) return;

    emit(state.copyWith(
      isCreatingSubscription: true,
      subscriptionError: null,
    ));

    try {
      // Create the subscription request
      final subscriptionRequest = SubscriptionCreationRequest(
        subscriptionType: MonthlySubscriptionType.singleVendor,
        vendorIds: [state.vendor.id],
        startDate: state.selectedSubscriptionStartDate!,
        mealSelections: {
          'selectedMeals': state.selectedMeals.map((m) => m.toJson()).toList(),
        },
        deliveryAddress: const DeliveryAddress(
          id: 'temp-address',
          fullAddress: 'Temporary address - to be filled from user profile',
          street: 'Temporary Street',
          apartment: '',
          emirate: 'Dubai',
          coordinates: LatLng(latitude: 25.0, longitude: 55.0),
        ), // This would come from user profile or input
      );

      // TODO: Replace with actual API call when backend is ready
      await Future.delayed(const Duration(seconds: 2)); // Simulate API call

      // For now, we'll just show success
      // In the future, this would call: await _subscriptionRepo.createSubscription(subscriptionRequest);

      emit(state.copyWith(
        isCreatingSubscription: false,
        subscriptionCreatedSuccessfully: true,
        // Reset subscription data after successful creation
        selectedSubscriptionStartDate: null,
        selectedMeals: [],
        subscriptionCost: 0.0,
      ));

      // Reset the success flag after a short delay so it doesn't persist
      Future.delayed(const Duration(seconds: 1), () {
        if (state.subscriptionCreatedSuccessfully) {
          emit(state.copyWith(subscriptionCreatedSuccessfully: false));
        }
      });
    } catch (error) {
      emit(state.copyWith(
        isCreatingSubscription: false,
        subscriptionError: 'Failed to create subscription: ${error.toString()}',
      ));
    }
  }

  Future<void> createMultiVendorSubscription() async {
    if (!validateWeeklyAssignments()) return;
    if (!_validateSubscriptionData()) return;

    emit(state.copyWith(
      isCreatingSubscription: true,
      subscriptionError: null,
    ));

    try {
      final vendorIds =
          state.selectedVendorsByWeek.values.map((v) => v.id).toList();

      final subscriptionRequest = SubscriptionCreationRequest(
        subscriptionType: MonthlySubscriptionType.multiVendorWeeklySplit,
        vendorIds: vendorIds,
        weeklyAssignments: state.weeklyAssignments,
        startDate: state.selectedSubscriptionStartDate!,
        mealSelections: {
          'multiVendorAssignments': state.selectedVendorsByWeek.map(
            (week, vendor) => MapEntry(week.toString(), vendor.id),
          ),
          'totalCost': state.multiVendorCost,
          'weeklyBreakdown': state.weeklyVendorCosts,
        },
        deliveryAddress: const DeliveryAddress(
          id: 'temp-address',
          fullAddress: 'Temporary address - to be filled from user profile',
          street: 'Temporary Street',
          apartment: '',
          emirate: 'Dubai',
          coordinates: LatLng(latitude: 25.0, longitude: 55.0),
        ),
      );

      // TODO: Replace with actual API call
      await Future.delayed(const Duration(seconds: 2));

      emit(state.copyWith(
        isCreatingSubscription: false,
        subscriptionCreatedSuccessfully: true,
        // Reset subscription data after successful creation
        selectedSubscriptionStartDate: null,
        selectedMeals: [],
        subscriptionCost: 0.0,
        selectedVendorsByWeek: {},
        weeklyAssignments: [],
        multiVendorCost: 0.0,
        weeklyVendorCosts: {},
      ));

      // Reset the success flag after a short delay
      Future.delayed(const Duration(seconds: 1), () {
        if (state.subscriptionCreatedSuccessfully) {
          emit(state.copyWith(subscriptionCreatedSuccessfully: false));
        }
      });
    } catch (error) {
      emit(state.copyWith(
        isCreatingSubscription: false,
        subscriptionError: 'Failed to create subscription: ${error.toString()}',
      ));
    }
  }

  bool canCreateSubscription() {
    if (state.currentSubscriptionType ==
        MonthlySubscriptionType.multiVendorWeeklySplit) {
      return canCreateMultiVendorSubscription();
    }
    return state.selectedSubscriptionStartDate != null &&
        state.selectedMeals.isNotEmpty &&
        !state.isCreatingSubscription;
  }

  bool canCreateMultiVendorSubscription() {
    return state.selectedSubscriptionStartDate != null &&
        state.selectedVendorsByWeek.isNotEmpty &&
        !state.isCreatingSubscription &&
        validateWeeklyAssignments();
  }

  int get selectedMealsCount {
    return state.selectedMeals.length;
  }

  List<String> get selectedDays {
    return state.selectedMeals.map((m) => m.dayOfWeek).toSet().toList();
  }

  void clearSubscriptionError() {
    if (state.subscriptionError != null) {
      emit(state.copyWith(subscriptionError: null));
    }
  }

  // Helper method to get formatted meal summary
  String getMealsSummary() {
    if (state.selectedMeals.isNotEmpty) {
      final mealsByDay = <String, int>{};
      for (final meal in state.selectedMeals) {
        mealsByDay[meal.dayOfWeek] =
            (mealsByDay[meal.dayOfWeek] ?? 0) + meal.quantity;
      }

      return mealsByDay.entries
          .map((entry) =>
              '${entry.key}: ${entry.value} meal${entry.value > 1 ? 's' : ''}')
          .join(', ');
    }
    return 'No meals selected';
  }

  String getMultiVendorSummary() {
    if (state.selectedVendorsByWeek.isEmpty) {
      return 'No vendors selected';
    }

    return state.selectedVendorsByWeek.entries
        .map((entry) => 'Week ${entry.key}: ${entry.value.name}')
        .join('\n');
  }

  double getCurrentSubscriptionCost() {
    return state.currentSubscriptionType ==
            MonthlySubscriptionType.multiVendorWeeklySplit
        ? state.multiVendorCost
        : state.subscriptionCost;
  }
}
