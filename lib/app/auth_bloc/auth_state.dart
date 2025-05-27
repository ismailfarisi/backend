part of 'auth_bloc.dart';

enum AuthStatus { initial, authenticated, unAuthenticated, maintenance, update }

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    @Default(AuthStatus.initial) AuthStatus authStatus,
    User? user,
  }) = _AuthState;
}
