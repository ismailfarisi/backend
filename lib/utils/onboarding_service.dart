import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class OnboardingService {
  final FlutterSecureStorage _secureStorage;
  static const String _onboardingKey = 'has_seen_onboarding';

  OnboardingService(this._secureStorage);

  /// Check if the user has completed onboarding
  Future<bool> hasSeenOnboarding() async {
    final value = await _secureStorage.read(key: _onboardingKey);
    return value == 'true';
  }

  /// Mark onboarding as completed
  Future<void> setOnboardingCompleted() async {
    await _secureStorage.write(key: _onboardingKey, value: 'true');
  }

  /// Reset onboarding status (useful for testing)
  Future<void> resetOnboarding() async {
    await _secureStorage.delete(key: _onboardingKey);
  }
}
