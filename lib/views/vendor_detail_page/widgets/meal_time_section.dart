import 'package:flutter/material.dart';

import '../../../models/menu_item.dart';
import 'meal_option_card.dart';

class MealTimeSection extends StatelessWidget {
  final String title;
  final List<MenuItem> options;
  final MenuItem? selectedItem;
  final Function(MenuItem) onItemSelected;

  const MealTimeSection({
    Key? key,
    required this.title,
    required this.options,
    this.selectedItem,
    required this.onItemSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        SizedBox(
          height: 180,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            itemCount: options.length,
            itemBuilder: (context, index) {
              final item = options[index];
              return SizedBox(
                width: 260,
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: MealOptionCard(
                    menuItem: item,
                    isSelected: item == selectedItem,
                    onTap: () => onItemSelected(item),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
