// lib/data_repositories/home_repo.dart
import '../models/menu_item.dart';
import '../models/subscription.dart';
import '../models/vendor.dart';
import '../utils/result.dart';

abstract class VendorRepo {
  Future<Result<Subscription?>> getCurrentSubscription();
  Future<Result<List<Vendor>>> getRecommendedVendors(
      {required double lat, required double long});
  Future<Result<WeeklyMenu>> getWeeklyMenu(String vendorId);
}
