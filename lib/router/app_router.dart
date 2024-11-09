import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meal_app/views/home_page/home_page.dart';
import 'package:meal_app/views/login/login_page.dart';

import '../app/auth_bloc/auth_bloc.dart';
import '../injection/injection.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
      refreshListenable: GoRouterRefreshStream(getIt<AuthBloc>().stream),
      // observers: [routerObserver],
      redirect: (context, state) {
        final authState = getIt<AuthBloc>().state;
        if (authState.authStatus == AuthStatus.Authenticated) {
          return "/${HomePage.routeName}";
        } else {
          return "/${LoginPage.routeName}";
        }
      },
      routes: [
        GoRoute(
          path: "/${HomePage.routeName}",
          name: HomePage.routeName,
          pageBuilder: (context, state) =>
              const CupertinoPage(child: HomePage()),
        ),
        GoRoute(
          path: "/${LoginPage.routeName}",
          name: LoginPage.routeName,
          pageBuilder: (context, state) =>
              const CupertinoPage(child: LoginPage()),
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
