import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:meal_app/data_repositories/auth_repo.dart';
import 'package:meal_app/models/user.dart';
import 'package:meal_app/utils/api_error.dart';
import 'package:meal_app/utils/result.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

@Injectable(as: AuthRepo)
class AuthData implements AuthRepo {
  final Dio _dio;
  get log => Logger();
  final _notification = FirebaseMessaging.instance;

  AuthData({required Dio dio}) : _dio = dio;

  @override
  Future<Result<User>> login(Map<String, dynamic> credentials) async {
    try {
      // Assuming credentials map contains 'email' and 'password'
      // Add notification_token if needed
      // final String? notificationToken = await _notification.getToken();
      // if (notificationToken != null) {
      //   credentials['notification_token'] = notificationToken;
      // }
      final response = await _dio.post('auth/login', data: credentials);
      User user = User.fromJson(response.data['user']);
      return Success(user);
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<User>> register(Map<String, dynamic> userData) async {
    try {
      // Add notification_token if needed
      // final String? notificationToken = await _notification.getToken();
      // if (notificationToken != null) {
      //   userData['notification_token'] = notificationToken;
      // }
      final response = await _dio.post('auth/register', data: userData);
      User user = User.fromJson(response.data['user']);
      return Success(user);
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<User>> getMe() async {
    try {
      final response = await _dio.get('auth/me');
      User user = User.fromJson(
          response.data['data']); // Assuming data is nested under 'data'
      return Success(user);
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<User>> getProfile() async {
    try {
      final response = await _dio.get('auth/profile');
      User user = User.fromJson(
          response.data['data']); // Assuming data is nested under 'data'
      return Success(user);
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<void>> logout() async {
    try {
      await _dio.post('auth/logout');
      return Success(null);
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<bool>> validateToken() async {
    try {
      final response = await _dio.get('auth/validate');
      // Assuming the response for a successful validation is a 2xx status
      // and might contain a boolean or just rely on status code.
      // For this example, let's assume a 200 OK means valid.
      if (response.statusCode == 200 || response.statusCode == 204) {
        return Success(true);
      } else {
        // Or handle specific error codes that mean invalid token
        return Success(false);
      }
    } catch (e, stack) {
      // If any error (like 401 Unauthorized), token is likely invalid
      log.e('Token validation error', error: e, stackTrace: stack);
      return Success(false); // Or return an Error result
    }
  }
}
