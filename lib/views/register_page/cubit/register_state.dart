part of 'register_cubit.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    @Default(AppStatus.init) AppStatus status,
    String? error,
  }) = _RegisterState;
}
