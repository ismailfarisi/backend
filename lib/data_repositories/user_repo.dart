import '../models/user.dart';
import '../utils/paginator.dart';
import '../utils/result.dart';

abstract class UserRepo {
  Future<Result<User>> createUser(Map<String, dynamic> userData);
  Future<Result<PaginatedData<User>>> getAllUsers(
      {int page = 1, int limit = 10});
  Future<Result<User>> getUserById(String userId);
  Future<Result<User>> updateUser(String userId, Map<String, dynamic> userData);
  Future<Result<void>> deleteUser(String userId);
}
