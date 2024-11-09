import 'package:freezed_annotation/freezed_annotation.dart';

import 'subscription.dart';

part 'vendor.freezed.dart';
part 'vendor.g.dart';

@freezed
class Vendor with _$Vendor {
  const factory Vendor({
    required String id,
    required String name,
    required String description,
    required double rating,
    required String imageUrl,
    @Default([]) List<String> specialities,
    required Map<MealType, double> mealPrices,
  }) = _Vendor;

  factory Vendor.fromJson(Map<String, dynamic> json) => _$VendorFromJson(json);
}
