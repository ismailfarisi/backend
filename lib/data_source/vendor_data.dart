import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:meal_app/data_repositories/vendor_repo.dart';
import 'package:meal_app/models/subscription_meal_selection.dart';

import '../models/menu_item.dart';
import '../models/subscription.dart';
import '../models/vendor.dart';
import '../models/vendor_menu.dart';
import '../utils/api_error.dart';
import '../utils/result.dart';

@Injectable(as: VendorRepo)
class VendorData implements VendorRepo {
  final Dio _dio;
  get log => Logger();

  VendorData({required Dio dio}) : _dio = dio;

  @override
  Future<Result<Subscription?>> getCurrentSubscription() async {
    try {
      final response = await _dio.get('/subscriptions/current');
      if (response.statusCode == 404) {
        // No active subscription
        return Success(null);
      }
      if ((response.data['data'] as List?)?.isNotEmpty ?? false) {
        final subscription = Subscription.fromJson(response.data['data']);
        return Success(subscription);
      }
      return Success(null);
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<List<Vendor>>> getRecommendedVendors(
      {required double lat, required double long}) async {
    try {
      final response = await _dio.get('/vendors/recommended',
          queryParameters: {"latitude": lat, "longitude": long});
      final List<dynamic> data = response.data['data'];
      final vendors = data.map((json) => Vendor.fromJson(json)).toList();
      return Success(vendors);
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<VendorMenu>> getWeeklyMenu(String vendorId) async {
    try {
      final response = await _dio.get('/vendor-menu/by-vendor/$vendorId');
      Logger().d("Raw API Response: ${response.data}");
      Logger().d("Response type: ${response.data.runtimeType}");

      // Check if response is an array and extract the first item
      dynamic menuData;
      if (response.data is List) {
        Logger().d(
            "Response is a List with ${(response.data as List).length} items");
        if ((response.data as List).isNotEmpty) {
          menuData = (response.data as List).first;
          Logger().d("Extracted menu data: $menuData");
        } else {
          throw Exception("Empty array returned from API");
        }
      } else {
        menuData = response.data;
      }

      final menu = VendorMenu.fromJson(menuData);
      return Success(menu);
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<List<Vendor>>> getVendorsByMealType({
    required double lat,
    required double long,
    required String mealType,
    double radius = 10,
  }) async {
    try {
      final response = await _dio.get(
        '/vendors/search',
        queryParameters: {
          "latitude": lat,
          "longitude": long,
          "mealType": mealType,
          "radius": radius,
        },
      );

      final List<dynamic> data = response.data['data'];
      final vendors = data.map((json) => Vendor.fromJson(json)).toList();
      return Success(vendors);
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<Subscription>> createSubscription(
    SubscriptionOrderDto orderDto,
  ) async {
    try {
      final response = await _dio.post(
        '/subscriptions',
        data: orderDto.toJson(),
      );

      final subscription = Subscription.fromJson(response.data);
      return Success(subscription);
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<Subscription>> confirmSubscription(
    String subscriptionId,
    Map<String, dynamic> paymentDetails,
  ) async {
    try {
      final response = await _dio.post(
        '/subscriptions/$subscriptionId/confirm',
        data: paymentDetails,
      );

      final subscription = Subscription.fromJson(response.data);
      return Success(subscription);
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }
}
