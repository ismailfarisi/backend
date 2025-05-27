import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meal_app/models/subscription.dart';

part 'vendor_menu.freezed.dart';
part 'vendor_menu.g.dart';

@freezed
abstract class VendorMenu with _$VendorMenu {
  const factory VendorMenu({
    required String id,
    required String vendorId,
    required MealType mealType,
    required MenuStatus status,
    required String description,
    required double price,
    required Map<String, DailyMenu> weeklyMenu,
  }) = _VendorMenu;

  factory VendorMenu.fromJson(Map<String, dynamic> json) =>
      _$VendorMenuFromJson(json);
}

@freezed
abstract class DailyMenu with _$DailyMenu {
  const factory DailyMenu({
    required List<String> items,
    List<String>? sideDishes,
    List<String>? extras,
  }) = _DailyMenu;

  factory DailyMenu.fromJson(Map<String, dynamic> json) =>
      _$DailyMenuFromJson(json);
}

// Add corresponding enums
enum MenuStatus {
  @JsonValue('active')
  active,
  @JsonValue('inactive')
  inactive,
  @JsonValue('deleted')
  deleted,
}

// Example JSON response from backend:
/*
{
  "id": "menu-id",
  "vendorId": "vendor-id",
  "mealType": "breakfast",
  "status": "active",
  "description": "Traditional breakfast menu",
  "price": 25.00,
  "weeklyMenu": {
    "monday": {
      "items": ["Dal Rice", "Roti Sabji"],
      "sideDishes": ["Salad", "Raita"],
      "extras": ["Papad", "Pickle"]
    },
    "tuesday": {
      "items": ["Idli", "Dosa"],
      "sideDishes": ["Sambar", "Chutney"],
      "extras": ["Extra Chutney"]
    },
    // ... other days
  },
  "isActive": true,
  "createdAt": "2024-12-09T00:00:00.000Z",
  "updatedAt": "2024-12-09T00:00:00.000Z"
}
*/
