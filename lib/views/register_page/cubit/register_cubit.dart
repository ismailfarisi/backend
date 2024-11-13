import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../app/auth_bloc/auth_bloc.dart';
import '../../../data_repositories/auth_repo.dart';
import '../../../injection/injection.dart';
import '../../../utils/enums.dart';
import '../../../utils/result.dart';

part 'register_state.dart';
part 'register_cubit.freezed.dart';

@injectable
class RegisterCubit extends Cubit<RegisterState> {
  final AuthRepo _authRepo;

  RegisterCubit(this._authRepo) : super(const RegisterState());

  Future<void> register({
    required String email,
    required String password,
    required String fullName,
    required String phone,
  }) async {
    try {
      emit(state.copyWith(status: AppStatus.loading));

      final result = await _authRepo.register(
        email: email,
        password: password,
        fullName: fullName,
        phone: phone,
      );

      switch (result) {
        case (Success s):
          emit(state.copyWith(status: AppStatus.success));
          getIt<AuthBloc>().add(AuthEvent.userLoggedIn(user: s.value));
          break;
        case (Error e):
          emit(state.copyWith(
            status: AppStatus.failure,
            error: e.exception,
          ));
      }
    } catch (e) {
      emit(state.copyWith(
        status: AppStatus.failure,
        error: e.toString(),
      ));
    }
  }
}
