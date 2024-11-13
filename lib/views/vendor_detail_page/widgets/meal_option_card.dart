import 'package:flutter/material.dart';

import '../../../models/menu_item.dart';

class MealOptionCard extends StatelessWidget {
  final MenuItem menuItem;
  final bool isSelected;
  final VoidCallback onTap;

  const MealOptionCard({
    Key? key,
    required this.menuItem,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: isSelected ? 4 : 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: isSelected
            ? BorderSide(color: Theme.of(context).primaryColor, width: 2)
            : BorderSide.none,
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    menuItem.name,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(width: 8),
                  if (menuItem.isVegetarian)
                    Icon(
                      Icons.eco,
                      size: 16,
                      color: Colors.green,
                    ),
                ],
              ),
              const SizedBox(height: 4),
              const SizedBox(height: 8),
              Text(
                'AED${menuItem.price}',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
