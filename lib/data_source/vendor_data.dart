import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:meal_app/data_repositories/vendor_repo.dart';
import 'package:meal_app/models/subscription_meal_selection.dart';
import 'package:meal_app/models/monthly_subscription.dart';
import 'package:meal_app/models/subscription_creation_request.dart';
import 'package:meal_app/services/subscription_validation_service.dart';
import 'package:meal_app/services/subscription_business_rules.dart';

import '../models/menu_item.dart';
import '../models/subscription.dart';
import '../models/vendor.dart';
import '../models/vendor_menu.dart';
import '../models/address.dart';
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
        data: {
          'vendorId': orderDto.vendorId,
          'mealSelections':
              orderDto.mealSelections.map((m) => m.toJson()).toList(),
          'startDate': orderDto.startDate.toIso8601String(),
          'deliveryAddress': orderDto.deliveryAddress.toJson(),
        },
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

  // TODO: Implement remaining methods - adding stubs for now to fix compilation
  @override
  Future<Result<MonthlySubscription>> createMonthlySubscription(
    SubscriptionCreationRequest request,
  ) async {
    // TODO: Implement when backend is ready
    throw UnimplementedError('Will be implemented with backend integration');
  }

  @override
  Future<Result<SubscriptionValidationResult>> validateSubscriptionRequest(
    SubscriptionCreationRequest request,
  ) async {
    // TODO: Implement validation
    throw UnimplementedError('Will be implemented with backend integration');
  }

  @override
  Future<Result<SubscriptionPricingResult>> calculateSubscriptionPricing(
    SubscriptionCreationRequest request,
  ) async {
    // TODO: Implement pricing
    throw UnimplementedError('Will be implemented with backend integration');
  }

  @override
  Future<Result<List<Vendor>>> getAvailableVendorsForSubscription({
    required DeliveryAddress deliveryAddress,
    required DateTime startDate,
    List<String>? cuisinePreferences,
    double? maxDistance,
  }) async {
    // TODO: Implement vendor availability
    throw UnimplementedError('Will be implemented with backend integration');
  }

  @override
  Future<Result<Map<String, bool>>> checkVendorAvailability(
    List<String> vendorIds,
    DateTime startDate,
    DateTime endDate,
  ) async {
    // TODO: Implement availability check
    throw UnimplementedError('Will be implemented with backend integration');
  }

  @override
  Future<Result<CostEstimation>> getSubscriptionCostEstimation({
    required String subscriptionType,
    int? mealCount,
    int? vendorCount,
    String? deliveryAreaId,
  }) async {
    // TODO: Implement cost estimation
    throw UnimplementedError('Will be implemented with backend integration');
  }

  @override
  Future<Result<MonthlySubscription>> modifySubscription(
    String subscriptionId,
    SubscriptionCreationRequest modificationRequest,
  ) async {
    // TODO: Implement subscription modification
    throw UnimplementedError('Will be implemented with backend integration');
  }

  @override
  Future<Result<bool>> cancelSubscription(
    String subscriptionId,
    String cancellationReason,
  ) async {
    // TODO: Implement cancellation
    throw UnimplementedError('Will be implemented with backend integration');
  }

  @override
  Future<Result<bool>> pauseSubscription(
    String subscriptionId,
    DateTime pauseStart,
    DateTime pauseEnd,
    String pauseReason,
  ) async {
    // TODO: Implement pause
    throw UnimplementedError('Will be implemented with backend integration');
  }

  @override
  Future<Result<bool>> resumeSubscription(String subscriptionId) async {
    // TODO: Implement resume
    throw UnimplementedError('Will be implemented with backend integration');
  }

  @override
  Future<Result<List<MonthlySubscription>>> getSubscriptionHistory(
    String userId, {
    int limit = 10,
    int offset = 0,
  }) async {
    // TODO: Implement history
    throw UnimplementedError('Will be implemented with backend integration');
  }

  @override
  Future<Result<List<MonthlySubscription>>> getActiveSubscriptions(
      String userId) async {
    // TODO: Implement active subscriptions
    throw UnimplementedError('Will be implemented with backend integration');
  }

  @override
  Future<Result<bool>> validateDeliveryAddress(DeliveryAddress address) async {
    // TODO: Implement address validation
    throw UnimplementedError('Will be implemented with backend integration');
  }

  @override
  Future<Result<SubscriptionAnalytics>> getSubscriptionAnalytics(
      String userId) async {
    // TODO: Implement analytics
    throw UnimplementedError('Will be implemented with backend integration');
  }

  @override
  Future<Result<bool>> checkLoyaltyStatus(String userId) async {
    // TODO: Implement loyalty check
    throw UnimplementedError('Will be implemented with backend integration');
  }

  @override
  Future<Result<MonthlySubscription>> renewSubscription(
    String subscriptionId,
    DateTime newStartDate,
  ) async {
    // TODO: Implement renewal
    throw UnimplementedError('Will be implemented with backend integration');
  }

  @override
  Future<Result<SubscriptionPreview>> getSubscriptionPreview(
    SubscriptionCreationRequest request,
  ) async {
    // TODO: Implement preview
    throw UnimplementedError('Will be implemented with backend integration');
  }
}
