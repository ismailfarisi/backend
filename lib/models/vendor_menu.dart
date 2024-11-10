import 'package:freezed_annotation/freezed_annotation.dart';

import 'subscription.dart';
part 'vendor_menu.freezed.dart';
part 'vendor_menu.g.dart';

@freezed
class VendorMenu with _$VendorMenu {
  const factory VendorMenu({
    required String vendorId,
    required MealType mealType,
    required String description,
    required double price,
    required List<String> sampleMenuItems,
  }) = _VendorMenu;

  factory VendorMenu.fromJson(Map<String, dynamic> json) =>
      _$VendorMenuFromJson(json);
}
