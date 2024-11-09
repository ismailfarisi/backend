// lib/features/orders/widgets/current_subscription_card.dart
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../models/subscription_order.dart';

class CurrentSubscriptionCard extends StatelessWidget {
  final SubscriptionOrder subscription;
  final VoidCallback onPause;
  final VoidCallback onResume;
  final VoidCallback onCancel;
  final VoidCallback onRenew;

  const CurrentSubscriptionCard({
    Key? key,
    required this.subscription,
    required this.onPause,
    required this.onResume,
    required this.onCancel,
    required this.onRenew,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isActive = subscription.status == SubscriptionStatus.active;
    final isPaused = subscription.status == SubscriptionStatus.paused;
    final daysLeft = subscription.endDate.difference(DateTime.now()).inDays;

    return Card(
      margin: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor.withOpacity(0.1),
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(12)),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.restaurant,
                  color: Theme.of(context).primaryColor,
                ),
                const SizedBox(width: 8),
                Text(
                  'Current Subscription',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const Spacer(),
                _StatusChip(status: subscription.status),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _SubscriptionDetail(
                  icon: Icons.calendar_today,
                  title: 'Duration',
                  value:
                      '${DateFormat('MMM d').format(subscription.startDate)} - ${DateFormat('MMM d').format(subscription.endDate)}',
                ),
                const SizedBox(height: 8),
                _SubscriptionDetail(
                  icon: Icons.access_time,
                  title: 'Subscribed Meals',
                  value: subscription.subscribedMeals
                      .map((meal) => meal.name)
                      .join(', '),
                ),
                const SizedBox(height: 8),
                _SubscriptionDetail(
                  icon: Icons.currency_rupee,
                  title: 'Monthly Amount',
                  value: '₹${subscription.monthlyAmount}',
                ),
                if (isPaused && subscription.pausedUntil != null) ...[
                  const SizedBox(height: 8),
                  _SubscriptionDetail(
                    icon: Icons.pause_circle_outline,
                    title: 'Paused Until',
                    value:
                        DateFormat('MMM d').format(subscription.pausedUntil!),
                  ),
                ],
                const SizedBox(height: 16),
                Row(
                  children: [
                    if (isActive) ...[
                      Expanded(
                        child: OutlinedButton.icon(
                          onPressed: onPause,
                          icon: const Icon(Icons.pause),
                          label: const Text('Pause'),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: OutlinedButton.icon(
                          onPressed: onCancel,
                          icon: const Icon(Icons.cancel_outlined),
                          label: const Text('Cancel'),
                        ),
                      ),
                    ] else if (isPaused) ...[
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: onResume,
                          icon: const Icon(Icons.play_arrow),
                          label: const Text('Resume'),
                        ),
                      ),
                    ],
                  ],
                ),
                if (daysLeft <= 7 && isActive) ...[
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: onRenew,
                      icon: const Icon(Icons.refresh),
                      label: const Text('Renew Subscription'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).primaryColor,
                        foregroundColor: Colors.white,
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _StatusChip extends StatelessWidget {
  final SubscriptionStatus status;

  const _StatusChip({
    Key? key,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: status.color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            status == SubscriptionStatus.active
                ? Icons.check_circle
                : status == SubscriptionStatus.paused
                    ? Icons.pause_circle
                    : Icons.cancel,
            size: 16,
            color: status.color,
          ),
          const SizedBox(width: 4),
          Text(
            status.displayName,
            style: TextStyle(
              color: status.color,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class _SubscriptionDetail extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;

  const _SubscriptionDetail({
    Key? key,
    required this.icon,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 20,
          color: Colors.grey,
        ),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: Colors.grey),
            ),
            Text(
              value,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
      ],
    );
  }
}
