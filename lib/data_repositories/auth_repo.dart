import '../models/user.dart';
import '../utils/result.dart';

abstract class AuthRepo {
  Future<Result<User>> register(Map<String, dynamic> userData);
  Future<Result<User>> login(Map<String, dynamic> credentials);
  Future<Result<User>> getMe();
  Future<Result<User>>
      getProfile(); // Assuming this is different from getMe or specific use case
  Future<Result<void>> logout();
  Future<Result<bool>> validateToken();
}
