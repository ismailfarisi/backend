// lib/data_repositories/home_repo.dart
import 'package:meal_app/models/subscription_meal_selection.dart';

import '../models/menu_item.dart';
import '../models/subscription.dart';
import '../models/vendor.dart';
import '../models/vendor_menu.dart';
import '../utils/result.dart';

abstract class VendorRepo {
  Future<Result<Subscription?>> getCurrentSubscription();
  Future<Result<List<Vendor>>> getRecommendedVendors(
      {required double lat, required double long});
  Future<Result<VendorMenu>> getWeeklyMenu(String vendorId);
  Future<Result<List<Vendor>>> getVendorsByMealType({
    required double lat,
    required double long,
    required String mealType,
    double radius = 10,
  });

  Future<Result<Subscription>> createSubscription(
      SubscriptionOrderDto orderDto);

  Future<Result<Subscription>> confirmSubscription(
    String subscriptionId,
    Map<String, dynamic> paymentDetails,
  );
}
