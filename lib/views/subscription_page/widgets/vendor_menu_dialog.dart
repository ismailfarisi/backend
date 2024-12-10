// vendor_menu_dialog.dart
import 'package:flutter/material.dart';
import 'package:meal_app/models/vendor_menu.dart';

import '../../../models/subscription.dart';
import '../../../models/vendor.dart';

class VendorMenuDialog extends StatefulWidget {
  final Vendor vendor;
  final MealType mealType;

  const VendorMenuDialog({
    Key? key,
    required this.vendor,
    required this.mealType,
  }) : super(key: key);

  @override
  State<VendorMenuDialog> createState() => _VendorMenuDialogState();
}

class _VendorMenuDialogState extends State<VendorMenuDialog>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<String> _weekDays = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday',
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _weekDays.length, vsync: this);
    // Set initial tab to current day
    _tabController.index = DateTime.now().weekday - 1;
  }

  @override
  Widget build(BuildContext context) {
    final menu = widget.vendor.menus.firstWhere(
      (m) => m.mealType == widget.mealType,
    );

    return Dialog(
      child: Container(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height * 0.8,
          maxWidth: MediaQuery.of(context).size.width * 0.9,
        ),
        child: Column(
          children: [
            // Header
            _buildHeader(context),

            // Days TabBar
            TabBar(
              controller: _tabController,
              isScrollable: true,
              tabs: _weekDays.map((day) => Tab(text: day)).toList(),
            ),

            // Menu Content
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: _weekDays.map((day) {
                  final dayMenu = menu.weeklyMenu[day.toLowerCase()];
                  return _buildDayMenu(context, dayMenu!);
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.vendor.businessName,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text(
                      '${widget.mealType.displayName} Menu',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
              IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
          const Divider(),
        ],
      ),
    );
  }

  Widget _buildDayMenu(BuildContext context, DailyMenu dayMenu) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        _buildMenuSection('Main Dishes', dayMenu.items),
        if (dayMenu.sideDishes?.isNotEmpty ?? false) ...[
          const SizedBox(height: 16),
          _buildMenuSection('Side Dishes', dayMenu.sideDishes!),
        ],
        if (dayMenu.extras?.isNotEmpty ?? false) ...[
          const SizedBox(height: 16),
          _buildMenuSection('Extras', dayMenu.extras!),
        ],
      ],
    );
  }

  Widget _buildMenuSection(String title, List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 8),
        ...items.map((item) => _buildMenuItem(item)).toList(),
      ],
    );
  }

  Widget _buildMenuItem(String item) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        leading: const Icon(Icons.restaurant_menu),
        title: Text(item),
      ),
    );
  }
}
