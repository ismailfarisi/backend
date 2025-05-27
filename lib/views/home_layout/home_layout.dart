import 'package:flutter/material.dart';
import 'package:meal_app/views/home_layout/widgets/bottom_nav_bar.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: SafeArea(child: widget.child),
        bottomNavigationBar: const BottomNavBar(),
      ),
    );
  }
}
