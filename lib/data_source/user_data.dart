import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:meal_app/data_repositories/user_repo.dart';
import 'package:meal_app/models/user.dart';
import 'package:meal_app/utils/api_error.dart';
import 'package:meal_app/utils/paginator.dart';
import 'package:meal_app/utils/result.dart';

@Injectable(as: UserRepo)
class UserData implements UserRepo {
  final Dio _dio;
  get log => Logger();

  UserData({required Dio dio}) : _dio = dio;

  @override
  Future<Result<User>> createUser(Map<String, dynamic> userData) async {
    try {
      final response = await _dio.post('/users', data: userData);
      final user = User.fromJson(response.data['data']);
      return Success(user);
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<PaginatedData<User>>> getAllUsers(
      {int page = 1, int limit = 10}) async {
    try {
      final response = await _dio.get('/users', queryParameters: {
        'page': page,
        'limit': limit,
      });
      final PaginatedData<User> paginator = PaginatedData<User>.fromJson(
        response.data,
        (json) => User.fromJson(json as Map<String, dynamic>),
      );
      return Success(paginator);
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<User>> getUserById(String userId) async {
    try {
      final response = await _dio.get('/users/$userId');
      final user = User.fromJson(response.data['data']);
      return Success(user);
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<User>> updateUser(
      String userId, Map<String, dynamic> userData) async {
    try {
      final response = await _dio.patch('/users/$userId', data: userData);
      final user = User.fromJson(response.data['data']);
      return Success(user);
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }

  @override
  Future<Result<void>> deleteUser(String userId) async {
    try {
      await _dio.delete('/users/$userId');
      return Success(null);
    } catch (e, stack) {
      return onError(e, stack, log);
    }
  }
}
