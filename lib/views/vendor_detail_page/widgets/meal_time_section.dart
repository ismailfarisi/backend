import 'package:flutter/material.dart';

import '../../../models/menu_item.dart';
import 'meal_option_card.dart';

class MealTimeSection extends StatelessWidget {
  final String title;
  final IconData? icon;
  final List<MenuItem> options;

  const MealTimeSection({
    Key? key,
    required this.title,
    this.icon,
    required this.options,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            children: [
              if (icon != null) ...[
                Icon(
                  icon,
                  size: 20,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(width: 8),
              ],
              Text(
                title,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 8),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  '${options.length}',
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 12),
          itemCount: options.length,
          itemBuilder: (context, index) {
            final item = options[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
              child: MealOptionCard(
                menuItem: item,
              ),
            );
          },
        ),
      ],
    );
  }
}
