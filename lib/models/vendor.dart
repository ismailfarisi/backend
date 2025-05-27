import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meal_app/models/vendor_menu.dart';

part 'vendor.freezed.dart';
part 'vendor.g.dart';

@freezed
abstract class Vendor with _$Vendor {
  const factory Vendor({
    required String id,
    required String name,
    required String businessName,
    String? address,
    required String phone,
    required double rating,
    required int totalRatings,
    required String profilePhotoUrl,
    required String coverPhotoUrl,
    @Default([]) List<String> cuisineTypes,
    @Default([]) List<String> foodTypes,
    @Default([]) List<VendorMenu> menus,
    @Default(true) bool isOpen,
    String? closureMessage,
    double? distance,
    @Default([]) List<String> acceptedPaymentMethods,
    // required GeoPoint location,
  }) = _Vendor;

  factory Vendor.fromJson(Map<String, dynamic> json) => _$VendorFromJson(json);
}

@freezed
abstract class GeoPoint with _$GeoPoint {
  const factory GeoPoint({
    required String type,
    required List<double> coordinates,
  }) = _GeoPoint;

  factory GeoPoint.fromJson(Map<String, dynamic> json) =>
      _$GeoPointFromJson(json);
}
