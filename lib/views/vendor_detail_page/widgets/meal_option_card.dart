import 'package:flutter/material.dart';

import '../../../models/menu_item.dart';

class MealOptionCard extends StatelessWidget {
  final MenuItem menuItem;
  final bool isSelected;
  final VoidCallback? onTap;

  const MealOptionCard({
    Key? key,
    required this.menuItem,
    this.isSelected = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final card = Card(
      elevation: 0,
      color: Theme.of(context).colorScheme.surfaceContainerHighest,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            // Meal Icon/Image placeholder
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Theme.of(context).colorScheme.outline.withOpacity(0.2),
                ),
              ),
              child: menuItem.imageUrl != null && menuItem.imageUrl!.isNotEmpty
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        menuItem.imageUrl!,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) => Icon(
                          Icons.restaurant,
                          color: Theme.of(context).colorScheme.primary,
                          size: 24,
                        ),
                      ),
                    )
                  : Icon(
                      Icons.restaurant,
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                      size: 24,
                    ),
            ),
            const SizedBox(width: 12),

            // Meal Details
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          menuItem.name,
                          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      if (menuItem.isVegetarian) ...[
                        const SizedBox(width: 4),
                        Container(
                          width: 18,
                          height: 18,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.green, width: 1.5),
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: Center(
                            child: Container(
                              width: 8,
                              height: 8,
                              decoration: const BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ],
                  ),
                  if (menuItem.allergens.isNotEmpty) ...[
                    const SizedBox(height: 2),
                    Text(
                      menuItem.allergens.take(2).join(', '),
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Theme.of(context).colorScheme.onSurfaceVariant,
                          ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ],
              ),
            ),
            const SizedBox(width: 12),

            // Price
            Text(
              'AED ${menuItem.price.toStringAsFixed(0)}',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
      ),
    );

    // Only make it tappable if onTap is provided
    if (onTap != null) {
      return InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: card,
      );
    }

    return card;
  }
}
