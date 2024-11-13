import 'package:flutter/material.dart';

import '../../../models/subscription.dart';
import '../../../models/vendor_menu.dart';

class MealSummaryCard extends StatelessWidget {
  final MealVendorSelection selection;
  final Map<String, VendorMenu>? vendorDetails;

  const MealSummaryCard({
    super.key,
    required this.selection,
    this.vendorDetails,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  _getMealIcon(selection.mealType),
                  size: 24,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(width: 8),
                Text(
                  selection.mealType.displayName,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            const SizedBox(height: 16),
            if (selection.vendorIds.isEmpty)
              Text(
                'No vendors selected',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Theme.of(context).colorScheme.error,
                    ),
              )
            else
              ...selection.vendorIds.map((vendorId) {
                final vendor = vendorDetails?[vendorId];
                return ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: CircleAvatar(
                    backgroundColor:
                        Theme.of(context).colorScheme.surfaceVariant,
                    child: Text(
                      'Vendor name',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ),
                  title: Text('Vendor $vendorId'),
                  subtitle: vendor != null
                      ? Text('AED${vendor.price.toStringAsFixed(0)}/meal')
                      : null,
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (vendor != null) ...[
                        Icon(
                          Icons.star,
                          size: 16,
                          color: Colors.amber,
                        ),
                        Text(' ${4.2}'),
                      ],
                    ],
                  ),
                );
              }),
          ],
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
}
