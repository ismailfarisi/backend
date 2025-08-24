import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meal_app/data_repositories/auth_repo.dart';
import 'package:meal_app/utils/result.dart';

import '../../../app/auth_bloc/auth_bloc.dart';
import '../../../injection/injection.dart';
import '../../../utils/enums.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._authRepo) : super(const LoginState());

  final AuthRepo _authRepo;

  Future<void> login({
    required String email,
    required String password,
  }) async {
    try {
      emit(state.copyWith(loginStatus: AppStatus.loading));
      final result =
          await _authRepo.login({'email': email, 'password': password});
      switch (result) {
        case (Success s):
          emit(state.copyWith(loginStatus: AppStatus.success));
          getIt<AuthBloc>().add(AuthEvent.userLoggedIn(user: s.value));
          break;
        case (Error e):
          emit(state.copyWith(
            loginStatus: AppStatus.failure,
            loginError: e.exception,
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
