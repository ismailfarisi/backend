import 'package:flutter/material.dart';

import '../models/subscription.dart';
import '../models/subscription_order.dart';

class SubscriptionCard extends StatelessWidget {
  final Subscription subscription;

  const SubscriptionCard({
    Key? key,
    required this.subscription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Current Plan',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Chip(
                  label: Text(
                    subscription.status.name.toUpperCase(),
                    style: const TextStyle(color: Colors.white),
                  ),
                  backgroundColor:
                      _getStatusColor(context, subscription.status),
                ),
              ],
            ),
            const SizedBox(height: 16),
            _buildMealSelections(context),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Valid till:',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Text(
                      subscription.endDate.toString().split(' ')[0],
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Monthly Price:',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Text(
                      'AED${subscription.price.toStringAsFixed(0)}',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                    ),
                  ],
                ),
              ],
            ),
            if (subscription.isAutoRenewal) ...[
              const SizedBox(height: 8),
              Row(
                children: [
                  Icon(
                    Icons.autorenew,
                    size: 16,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    'Auto-renewal enabled',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                  ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildMealSelections(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: subscription.mealSelections.map((selection) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    _getMealIcon(selection.mealType),
                    size: 20,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    selection.mealType.displayName,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Padding(
                padding: const EdgeInsets.only(left: 28),
                child: Wrap(
                  spacing: 8,
                  children: selection.vendorIds.map((vendorId) {
                    return Chip(
                      label: Text(
                        'Vendor $vendorId',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      backgroundColor:
                          Theme.of(context).colorScheme.surfaceContainerHighest,
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }

  IconData _getMealIcon(MealType type) {
    return switch (type) {
      MealType.breakfast => Icons.breakfast_dining,
      MealType.lunch => Icons.lunch_dining,
      MealType.dinner => Icons.dinner_dining,
    };
  }

  Color _getStatusColor(BuildContext context, SubscriptionStatus status) {
    return switch (status) {
      SubscriptionStatus.active => Colors.green,
      SubscriptionStatus.paused => Colors.orange,
      SubscriptionStatus.cancelled => Colors.red,
      SubscriptionStatus.expired => Colors.grey,
      SubscriptionStatus.pending => Colors.blue,
      SubscriptionStatus.completed => Colors.teal,
    };
  }
}
