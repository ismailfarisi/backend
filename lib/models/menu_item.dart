import 'package:freezed_annotation/freezed_annotation.dart';

import '../utils/enums.dart';
import 'subscription.dart';
import 'vendor.dart';

part 'menu_item.freezed.dart';
part 'menu_item.g.dart';

@freezed
class MenuItem with _$MenuItem {
  const factory MenuItem({
    required String id,
    required String name,
    required double price,
    String? imageUrl,
    Vendor? vendor,
    MealType? type,
    @Default(false) bool isVegetarian,
    @Default([]) List<String> allergens,
  }) = _MenuItem;

  factory MenuItem.fromJson(Map<String, dynamic> json) =>
      _$MenuItemFromJson(json);
}

@freezed
class DailyMenu with _$DailyMenu {
  const factory DailyMenu({
    required DateTime date,
    @Default([]) List<MenuItem> breakfastOptions,
    @Default([]) List<MenuItem> lunchOptions,
    @Default([]) List<MenuItem> dinnerOptions,
  }) = _DailyMenu;

  factory DailyMenu.fromJson(Map<String, dynamic> json) =>
      _$DailyMenuFromJson(json);
}

@freezed
class WeeklyMenu with _$WeeklyMenu {
  const factory WeeklyMenu({
    required String id,
    required DateTime startDate,
    required DateTime endDate,
    @Default([]) List<DailyMenu> dailyMenus,
  }) = _WeeklyMenu;

  factory WeeklyMenu.fromJson(Map<String, dynamic> json) =>
      _$WeeklyMenuFromJson(json);
}

// lib/features/vendor_detail/cubit/vendor_detail_state.freezed.dart
@freezed
class VendorDetailState with _$VendorDetailState {
  const factory VendorDetailState({
    required Vendor vendor,
    WeeklyMenu? weeklyMenu,
    @Default(AppStatus.init) AppStatus status,
    @Default(AppStatus.init) AppStatus menuStatus,
    String? errorMessage,
    @Default(0) int selectedDayIndex,
    MenuItem? selectedMenuItem,
  }) = _VendorDetailState;
}
