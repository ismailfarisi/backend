import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:meal_app/data_repositories/vendor_repo.dart';

import '../models/menu_item.dart';
import '../models/subscription.dart';
import '../models/vendor.dart';
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
      final response = await _dio.get('/v1/subscriptions/current');
      if (response.statusCode == 404) {
        // No active subscription
        return Success(null);
      }

      final subscription = Subscription.fromJson(response.data);
      return Success(subscription);
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<List<Vendor>>> getRecommendedVendors() async {
    try {
      final response = await _dio.get('/v1/vendors/recommended');
      final List<dynamic> data = response.data['vendors'];
      final vendors = data.map((json) => Vendor.fromJson(json)).toList();
      return Success(vendors);
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<WeeklyMenu>> getWeeklyMenu(String vendorId) async {
    try {
      final response = await _dio.get('/v1/vendors/$vendorId/weekly-menu');
      final menu = WeeklyMenu.fromJson(response.data);
      return Success(menu);
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }
}
