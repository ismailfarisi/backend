import 'package:flutter/material.dart';

import '../../../models/subscription.dart';

class MealTypeCard extends StatelessWidget {
  final MealType type;
  final bool isSelected;
  final VoidCallback onTap;

  const MealTypeCard({
    super.key,
    required this.type,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      elevation: isSelected ? 2 : 0,
      color: isSelected ? theme.colorScheme.primaryContainer : null,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Icon(
                _getMealIcon(type),
                size: 32,
                color: isSelected
                    ? theme.colorScheme.primary
                    : theme.colorScheme.onSurfaceVariant,
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      type.displayName,
                      style: theme.textTheme.titleLarge?.copyWith(
                        color: isSelected
                            ? theme.colorScheme.primary
                            : theme.colorScheme.onSurface,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      _getMealDescription(type),
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
              if (isSelected)
                Icon(
                  Icons.check_circle,
                  color: theme.colorScheme.primary,
                ),
            ],
          ),
        ),
      ),
    );
  }

  IconData _getMealIcon(MealType type) {
    return switch (type) {
      MealType.breakfast => Icons.breakfast_dining,
      MealType.lunch => Icons.lunch_dining,
      MealType.dinner => Icons.dinner_dining,
    };
  }

  String _getMealDescription(MealType type) {
    return switch (type) {
      MealType.breakfast => 'Start your day with a healthy breakfast',
      MealType.lunch => 'Energize your afternoon with a delicious lunch',
      MealType.dinner => 'End your day with a satisfying dinner',
    };
  }
}
