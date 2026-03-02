# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Flutter-based meal subscription application that connects users with food vendors for breakfast, lunch, and dinner subscriptions. The app uses a clean architecture pattern with BLoC/Cubit state management, repository pattern, and dependency injection.

## Development Commands

### Environment Setup
```bash
# Install dependencies
flutter pub get

# Generate code (Freezed, Injectable, JSON serialization)
dart run build_runner build --delete-conflicting-outputs

# Watch for changes and regenerate (useful during development)
dart run build_runner watch --delete-conflicting-outputs
```

### Running the App
```bash
# Run in debug mode (defaults to Stage environment)
flutter run

# Run with specific environment
flutter run --dart-define=ENV=Prod

# Run on specific device
flutter devices  # List available devices
flutter run -d <device-id>
```

### Code Quality
```bash
# Run linter
flutter analyze

# Run tests
flutter test

# Run specific test file
flutter test test/widget_test.dart
```

### Building
```bash
# Build APK (Android)
flutter build apk

# Build App Bundle (Android)
flutter build appbundle

# Build iOS (requires macOS)
flutter build ios

# Clean build artifacts
flutter clean
```

## Architecture Overview

### Project Structure

```
lib/
├── app/                        # App-level configuration
│   ├── auth_bloc/             # Global authentication state (BLoC)
│   ├── app.dart               # Root widget with providers
│   └── theme.dart             # Global theme and colors
├── views/                      # UI layer (pages and widgets)
│   ├── [feature]/
│   │   ├── [feature]_page.dart
│   │   ├── cubit/             # Page-level state management
│   │   └── widgets/           # Feature-specific widgets
├── data_repositories/         # Repository interfaces (contracts)
├── data_source/               # Repository implementations (API calls)
├── models/                    # Data models (Freezed + JSON)
├── injection/                 # Dependency injection (GetIt + Injectable)
├── router/                    # Navigation (GoRouter)
├── utils/                     # Utilities and helpers
└── global_widgets/            # Reusable UI components
```

### Architecture Pattern: Clean Architecture with Layers

```
UI (Views) → Cubit → Repository Interface → Data Source → API
```

**State Management Strategy:**
- **Global State:** `AuthBloc` ([app/auth_bloc/auth_bloc.dart](lib/app/auth_bloc/auth_bloc.dart)) manages authentication status and current user across the app
- **Page State:** Each feature has its own Cubit (e.g., `HomeCubit`, `LoginCubit`) for local state management
- **Status Pattern:** Uses `AppStatus` enum (init, loading, success, failure) for UI state tracking

### Key Architectural Patterns

#### 1. Result Type Pattern
All async operations return `Result<T>` ([utils/result.dart](lib/utils/result.dart)) instead of throwing exceptions:

```dart
sealed class Result<T> {}
class Success<T> extends Result<T> { final T value; }
class Error<T> extends Result<T> { final String exception; final int? code; }
```

**Usage in Cubits:**
```dart
final result = await repository.someMethod();
switch (result) {
  case Success(value: final data):
    emit(state.copyWith(status: AppStatus.success, data: data));
  case Error(exception: final message):
    emit(state.copyWith(status: AppStatus.failure, errorMessage: message));
}
```

#### 2. Repository Pattern
- **Interfaces:** Abstract classes in [data_repositories/](lib/data_repositories/) define contracts
- **Implementations:** Data source classes in [data_source/](lib/data_source/) implement interfaces and make API calls
- **DI Registration:** `@Injectable(as: AuthRepo)` pattern in [injection/](lib/injection/)

Example:
```dart
// Interface
abstract class AuthRepo {
  Future<Result<User>> login(Map<String, dynamic> credentials);
}

// Implementation
@Injectable(as: AuthRepo)
class AuthData implements AuthRepo { ... }
```

#### 3. Dependency Injection (GetIt + Injectable)
- Configuration: [injection/injection.dart](lib/injection/injection.dart)
- Module definitions: [injection/injectable_module.dart](lib/injection/injectable_module.dart)
- Generated config: `injection/injection.config.dart` (auto-generated)

**Key Registrations:**
- `@singleton` - AuthBloc (one instance across app)
- `@lazySingleton` - Dio HTTP client
- `@Injectable` - Repositories, data sources
- `@injectable` - Cubits (new instance per page)

**Environments:** Stage (default) and Prod with different base URLs

#### 4. Authentication Architecture

**Token Management:**
- Tokens stored securely via `flutter_secure_storage`
- `TokenInterceptor` ([utils/token_interceptor.dart](lib/utils/token_interceptor.dart)) adds Bearer tokens to all requests
- Automatic token refresh on 403 responses (max 1 retry to prevent loops)

**Auth Flow:**
1. User logs in via `LoginCubit`
2. Token stored in secure storage
3. `AuthBloc` receives `UserLoggedIn` event
4. Global auth state updates to `authenticated`
5. Router redirects based on auth status

**Initial Auth Check:**
- On app start, `AuthBloc` automatically checks auth via `authRepo.getMe()`
- Router uses `GoRouterRefreshStream` to listen to auth state changes

#### 5. Routing (GoRouter)
- Configuration: [router/app_router.dart](lib/router/app_router.dart)
- Uses `ShellRoute` for bottom navigation (home, profile, orders)
- Auth-aware routing via `refreshListenable: GoRouterRefreshStream(authBloc.stream)`
- Named routes stored as static properties (e.g., `HomePage.routeName`)

#### 6. Models (Freezed + JSON)
- All models use `@freezed` annotation for immutability
- Generate with: `dart run build_runner build`
- Includes `fromJson()` factory and `toJson()` method
- Generated files: `*.freezed.dart` and `*.g.dart`

**Example:**
```dart
@freezed
abstract class User with _$User {
  const factory User({
    required String id,
    String? email,
    @Default('') String phone,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
```

### API Integration

**Base URLs:**
- Stage: `https://stage.mealsubscription.com/v1/`
- Prod: `https://api.mealsubscription.com/v1/`

**HTTP Client:** Dio with interceptors
- `TokenInterceptor` - Auth token management
- `LogInterceptor` - Request/response logging (debug mode)
- Timeouts: 10s connect, 10s send, 30s receive

**API Routes:** See [API_ROUTES.md](API_ROUTES.md) for complete endpoint documentation

### Firebase Integration

The app uses Firebase for:
- Firebase Messaging (push notifications)
- Firebase Core (app initialization)

Firebase is initialized in `main()` before running the app.

## Development Guidelines

### Adding a New Feature

1. **Create Model** (if needed):
   ```bash
   # Create model in lib/models/
   # Add @freezed and fromJson/toJson
   dart run build_runner build
   ```

2. **Create Repository Interface**:
   - Add abstract class in `lib/data_repositories/`
   - Define methods returning `Result<T>`

3. **Create Data Source**:
   - Implement repository in `lib/data_source/`
   - Add `@Injectable(as: RepositoryInterface)`
   - Make API calls with Dio
   - Wrap responses in `Success` or `Error`

4. **Create Cubit**:
   - Create `cubit/` folder in feature directory
   - Define state with `@freezed` and `AppStatus` fields
   - Add `@injectable` annotation
   - Inject repository via constructor

5. **Create UI**:
   - Create page in `lib/views/[feature]/`
   - Add static `routeName` property
   - Wrap with `BlocProvider<FeatureCubit>`
   - Use `BlocBuilder` or `BlocListener` for state updates

6. **Register Route**:
   - Add `GoRoute` in [router/app_router.dart](lib/router/app_router.dart)

### Code Generation

**When to regenerate:**
- After adding/modifying Freezed models
- After changing Injectable annotations
- After updating JSON serialization

**Commands:**
```bash
# One-time generation
dart run build_runner build --delete-conflicting-outputs

# Continuous watch (recommended during development)
dart run build_runner watch --delete-conflicting-outputs
```

### State Management Best Practices

1. **Use AppStatus for UI states:** Track loading, success, failure states separately for different operations
2. **Multiple status fields:** For pages with multiple async operations, use separate status fields (e.g., `getVendorsStatus`, `getSubscriptionStatus`)
3. **Emit often:** Use `emit(state.copyWith(...))` for every state change
4. **Pattern matching:** Use switch statements with Result types for exhaustive error handling

### Styling and Theming

- **Colors:** Defined in `AppColors` class ([app/theme.dart](lib/app/theme.dart))
- **Typography:** Semantic text styles in `AppTypography`
- **Responsive sizing:** Use `.sp` (scaled pixels) for text, `.w` (width), `.h` (height) via `flutter_screenutil`
- **Material 3:** App uses Material 3 design system

### Error Handling

- **Never throw exceptions** in repository/data source methods
- **Always return Result<T>:** Wrap success in `Success(value)`, errors in `Error(message, code)`
- **Use onError helper:** Import from [utils/api_error.dart](lib/utils/api_error.dart) to convert DioException to Error result
- **Show user-friendly messages:** Extract error messages from API response or use default messages

### Testing

- Tests located in `test/` directory
- Run with `flutter test`
- Use mocks for repository interfaces (easy to mock due to DI)

## Important Notes

- **Token Refresh:** Max 1 retry attempt per 403 error to prevent infinite loops
- **Secure Storage:** Never log or expose tokens from `flutter_secure_storage`
- **Code Generation:** Run build_runner after pulling changes that modify models
- **Environment:** Default environment is Stage, use `--dart-define=ENV=Prod` for production
- **Deprecated Methods:** Some subscription-related methods in VendorRepo are marked deprecated and need implementation
- **Auth State:** Always check `AuthBloc` state before accessing user data
- **Freezed Models:** Never manually edit `.freezed.dart` or `.g.dart` files

## Common Issues and Solutions

### Issue: "Missing generated files"
**Solution:** Run `dart run build_runner build --delete-conflicting-outputs`

### Issue: "Dependency not found" (DI error)
**Solution:**
1. Ensure class has `@injectable` or `@Injectable(as: Interface)` annotation
2. Run `dart run build_runner build`
3. Restart app

### Issue: Token expired / 403 errors
**Solution:** TokenInterceptor should automatically refresh. Check secure storage has valid refresh token.

### Issue: Routes not working
**Solution:** Verify route name matches static `routeName` property on page class

### Issue: State not updating in UI
**Solution:**
1. Ensure page is wrapped with `BlocProvider`
2. Use `BlocBuilder` or `BlocListener` to listen to state changes
3. Verify cubit emits new state with `emit()`
