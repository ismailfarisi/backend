import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../models/meal_selection.dart';
import '../../../models/subscription.dart';

class MealScheduleCard extends StatelessWidget {
  final MealSelection mealSelection;
  final VoidCallback onFeedback;

  const MealScheduleCard({
    Key? key,
    required this.mealSelection,
    required this.onFeedback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isToday = mealSelection.date.day == DateTime.now().day;
    final isPast = mealSelection.date.isBefore(DateTime.now());

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: isToday
                  ? Theme.of(context).primaryColor.withOpacity(0.1)
                  : null,
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(12)),
            ),
            child: Row(
              children: [
                Text(
                  DateFormat('EEEE, MMM d').format(mealSelection.date),
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: isToday ? Theme.of(context).primaryColor : null,
                      ),
                ),
                if (isToday) ...[
                  const SizedBox(width: 8),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      'TODAY',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
                const Spacer(),
                _DeliveryStatusChip(status: mealSelection.deliveryStatus),
              ],
            ),
          ),
          const Divider(height: 1),
          ...mealSelection.selectedMeals.entries.map(
            (entry) => Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(
                      entry.key == MealType.breakfast
                          ? Icons.breakfast_dining
                          : entry.key == MealType.lunch
                              ? Icons.lunch_dining
                              : Icons.dinner_dining,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          entry.key.name.toUpperCase(),
                          style:
                              Theme.of(context).textTheme.bodySmall?.copyWith(
                                    color: Colors.grey,
                                  ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          entry.value.name,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Text(
                          entry.value.description,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (isPast &&
              mealSelection.deliveryStatus == DeliveryStatus.delivered &&
              mealSelection.feedbackId == null) ...[
            const Divider(height: 1),
            TextButton.icon(
              onPressed: onFeedback,
              icon: const Icon(Icons.star_border),
              label: const Text('Rate your meals'),
            ),
          ],
        ],
      ),
    );
  }
}

class _DeliveryStatusChip extends StatelessWidget {
  final DeliveryStatus status;

  const _DeliveryStatusChip({
    Key? key,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color getStatusColor() {
      switch (status) {
        case DeliveryStatus.delivered:
          return Colors.green;
        case DeliveryStatus.preparing:
        case DeliveryStatus.outForDelivery:
          return Colors.orange;
        case DeliveryStatus.missed:
        case DeliveryStatus.cancelled:
          return Colors.red;
        default:
          return Colors.grey;
      }
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: getStatusColor().withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        status.displayName,
        style: TextStyle(
          color: getStatusColor(),
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
