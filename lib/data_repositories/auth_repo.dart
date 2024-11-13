import '../models/user.dart';
import '../utils/result.dart';

abstract class AuthRepo {
  Future<Result<User>> loginWithUsername(
      {required String userName, required String password});
  Future<Result<User>> register({
    required String email,
    required String password,
    required String fullName,
    required String phone,
  });
}
