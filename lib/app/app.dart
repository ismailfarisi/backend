import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_app/app/theme.dart';

import '../router/app_router.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: MediaQuery.sizeOf(context),
        builder: (context, _) {
          return MaterialApp.router(
            routerConfig: AppRouter.router,
            theme: AppTheme.lightTheme,
          );
        });
  }
}
