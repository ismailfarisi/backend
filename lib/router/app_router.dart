import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:meal_app/models/vendor.dart';
import 'package:meal_app/utils/onboarding_service.dart';
import 'package:meal_app/views/home_layout/home_layout.dart';
import 'package:meal_app/views/home_page/home_page.dart';
import 'package:meal_app/views/login/login_page.dart';
import 'package:meal_app/views/order_page/order_page.dart';
import 'package:meal_app/views/profile_page/profile_page.dart';
import 'package:meal_app/views/register_page/register_page.dart';
import 'package:meal_app/views/vendor_detail_page/vendor_detail_page.dart';
import 'package:meal_app/views/vendor_list_page/vendor_list_page.dart';

import '../app/auth_bloc/auth_bloc.dart';
import '../injection/injection.dart';
import '../views/onborading_page/onboarding_page.dart';
import '../views/subscription_page/subscription_page.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
      refreshListenable: GoRouterRefreshStream(getIt<AuthBloc>().stream),
      // observers: [routerObserver],
      initialLocation: "/${OnboardingScreen.routeName}",
      redirect: (context, state) async {
        final onboardingService = getIt<OnboardingService>();
        final hasSeenOnboarding = await onboardingService.hasSeenOnboarding();

        // If user hasn't seen onboarding and is not already on onboarding page
        if (!hasSeenOnboarding && state.matchedLocation != "/${OnboardingScreen.routeName}") {
          return "/${OnboardingScreen.routeName}";
        }

        // If user has seen onboarding and is on onboarding page, redirect to home
        if (hasSeenOnboarding && state.matchedLocation == "/${OnboardingScreen.routeName}") {
          return "/${HomePage.routeName}";
        }

        // No redirect needed
        return null;
      },
      routes: [
        ShellRoute(
            builder: (context, state, child) => HomeLayout(child: child),
            routes: [
              GoRoute(
                path: "/${HomePage.routeName}",
                name: HomePage.routeName,
                pageBuilder: (context, state) =>
                    const CupertinoPage(child: HomePage()),
              ),
              GoRoute(
                path: "/${ProfilePage.routeName}",
                name: ProfilePage.routeName,
                pageBuilder: (context, state) =>
                    const CupertinoPage(child: ProfilePage()),
              ),
              GoRoute(
                path: "/${OrdersPage.routeName}",
                name: OrdersPage.routeName,
                pageBuilder: (context, state) =>
                    const CupertinoPage(child: OrdersPage()),
              ),
            ]),
        GoRoute(
          path: "/${LoginPage.routeName}",
          name: LoginPage.routeName,
          pageBuilder: (context, state) =>
              const CupertinoPage(child: LoginPage()),
        ),
        GoRoute(
          path: "/${RegisterPage.routeName}",
          name: RegisterPage.routeName,
          pageBuilder: (context, state) =>
              const CupertinoPage(child: RegisterPage()),
        ),
        GoRoute(
          path: '/subscription',
          name: 'subscription',
          builder: (context, state) => const SubscriptionFlowScreen(),
        ),
        GoRoute(
          path: "/${OnboardingScreen.routeName}",
          name: OnboardingScreen.routeName,
          builder: (context, state) => const OnboardingScreen(),
        ),
        GoRoute(
            path: "/${VendorDetailPage.routeName}",
            name: VendorDetailPage.routeName,
            pageBuilder: (context, state) {
              final vendor = state.extra as Vendor;
              return CupertinoPage(
                  child: VendorDetailPage(
                vendor: vendor,
              ));
            }),
        GoRoute(
          path: "/${VendorListPage.routeName}",
          name: VendorListPage.routeName,
          pageBuilder: (context, state) =>
              const CupertinoPage(child: VendorListPage()),
        ),
      ]);
}

class GoRouterRefreshStream extends ChangeNotifier {
  static AuthState? lastElement;
  GoRouterRefreshStream(Stream<AuthState> stream) {
    notifyListeners();
    final s = stream;
    _subscription = s.listen(
      (AuthState element) {
        if (element.authStatus != lastElement?.authStatus) {
          notifyListeners();
        }
        lastElement = element;
      },
    );
  }

  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
