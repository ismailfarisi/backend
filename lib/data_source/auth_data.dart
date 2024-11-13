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
  Future<Result<User>> loginWithUsername(
      {required String userName, required String password}) async {
    try {
      var loginResponse = await _dio.post(
        '/login',
        data: {
          "username": userName,
          "password": password,
          "notification_token": await _notification.getToken()
        },
      );
      Map<String, dynamic> data = loginResponse.data;
      log.d(data);
      User user = User.fromJson(data);
      return Success(user);
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<User>> register({
    required String email,
    required String password,
    required String fullName,
    required String phone,
  }) async {
    try {
      final response = await _dio.post(
        '/register',
        data: {
          "email": email,
          "password": password,
          "fullName": fullName,
          "phone": phone,
          "notification_token": await _notification.getToken()
        },
      );

      Map<String, dynamic> data = response.data;
      log.d(data);
      User user = User.fromJson(data);
      return Success(user);
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<User>> getLoggedInUser() {
    // TODO: implement getLoggedInUser
    throw UnimplementedError();
  }
}
