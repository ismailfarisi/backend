import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:meal_app/views/home_page/home_page.dart';
import 'package:meal_app/views/order_page/order_page.dart';
import 'package:meal_app/views/profile_page/profile_page.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      final location = GoRouterState.of(context).uri.path;

      return Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: NavigationBar(
          selectedIndex: _calculateSelectedIndex(location),
          onDestinationSelected: (index) => _onItemTapped(index, context),
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.search_outlined),
              selectedIcon: Icon(Icons.search),
              label: 'Search',
            ),
            NavigationDestination(
              icon: Icon(Icons.receipt_long_outlined),
              selectedIcon: Icon(Icons.receipt_long),
              label: 'Orders',
            ),
            NavigationDestination(
              icon: Icon(Icons.person_outline),
              selectedIcon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      );
    });
  }

  int _calculateSelectedIndex(String location) {
    Logger().d(location);
    if (location.contains(HomePage.routeName)) return 0;
    if (location.startsWith("ghtr")) return 1;
    if (location.contains(OrdersPage.routeName)) return 2;
    if (location.contains(ProfilePage.routeName)) return 3;
    return 0;
  }

  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        context.goNamed(HomePage.routeName);
        break;
      case 1:
        context.goNamed(HomePage.routeName);
        break;
      case 2:
        context.goNamed(OrdersPage.routeName);
        break;
      case 3:
        context.goNamed(ProfilePage.routeName);
        break;
    }
  }
}
