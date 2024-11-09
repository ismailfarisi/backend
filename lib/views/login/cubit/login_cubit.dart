import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../utils/enums.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginState());

  Future<void> login({
    required String email,
    required String password,
  }) async {
    try {
      emit(state.copyWith(loginStatus: AppStatus.loading));

      // Simulate API call
      await Future.delayed(const Duration(seconds: 2));

      // Add your authentication logic here
      if (email == 'test@example.com' && password == 'password') {
        emit(state.copyWith(loginStatus: AppStatus.success));
      } else {
        emit(state.copyWith(
          loginStatus: AppStatus.failure,
          loginError: 'Invalid credentials',
        ));
      }
    } catch (e) {
      emit(state.copyWith(
        loginStatus: AppStatus.failure,
        loginError: e.toString(),
      ));
    }
  }
}
