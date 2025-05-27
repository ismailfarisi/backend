import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:meal_app/data_repositories/auth_repo.dart';

import '../../models/user.dart';
import '../../utils/result.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@singleton
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._authRepo) : super(const AuthState()) {
    on<_UserLoggedIn>(_userLoggedIn);
    on<_UserLoggedOut>(_userLoggedOut);
    on<_Started>(_started);
    add(const _Started());
  }

  final AuthRepo _authRepo;

  FutureOr<void> _userLoggedIn(
      _UserLoggedIn event, Emitter<AuthState> emit) async {
    Logger().d(event.user);
    emit(
        state.copyWith(authStatus: AuthStatus.authenticated, user: event.user));
  }

  FutureOr<void> _userLoggedOut(_UserLoggedOut event, Emitter<AuthState> emit) {
    FlutterSecureStorage storage = const FlutterSecureStorage();
    storage.delete(key: 'accessToken');
    storage.delete(key: 'refreshToken');
    emit(state.copyWith(authStatus: AuthStatus.unAuthenticated, user: null));
  }

  FutureOr<void> _started(_Started event, Emitter<AuthState> emit) async {
    final result = await _authRepo.getLoggedInUser();
    switch (result) {
      case (Success s):
        emit(state.copyWith(
            authStatus: AuthStatus.authenticated, user: s.value));
        break;
      case (Error _):
        emit(state.copyWith(
          authStatus: AuthStatus.unAuthenticated,
        ));
        break;
    }
  }
}
