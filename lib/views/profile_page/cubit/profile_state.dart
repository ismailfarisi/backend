part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    User? userProfile,
    @Default(AppStatus.init) AppStatus status,
    String? errorMessage,
    @Default(AppStatus.init) AppStatus updateStatus,
    String? updateErrorMessage,
  }) = _ProfileState;
}
