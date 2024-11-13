import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../models/subscription_order.dart';

class SubscriptionHistoryCard extends StatelessWidget {
  final SubscriptionOrder subscription;
  final VoidCallback onViewDetails;

  const SubscriptionHistoryCard({
    Key? key,
    required this.subscription,
    required this.onViewDetails,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: InkWell(
        onTap: onViewDetails,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.history,
                    color: Theme.of(context).primaryColor,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'Previous Subscription',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  _StatusChip(status: subscription.status),
                ],
              ),
              const SizedBox(height: 12),
              _DetailRow(
                icon: Icons.calendar_today,
                label: 'Period',
                value:
                    '${DateFormat('MMM d').format(subscription.startDate)} - ${DateFormat('MMM d').format(subscription.endDate)}',
              ),
              const SizedBox(height: 8),
              _DetailRow(
                icon: Icons.restaurant_menu,
                label: 'Meals',
                value:
                    subscription.subscribedMeals.map((m) => m.name).join(', '),
              ),
              const SizedBox(height: 8),
              _DetailRow(
                icon: Icons.payments,
                label: 'Amount Paid',
                value: 'AED${subscription.monthlyAmount}',
              ),
              if (subscription.cancelReason != null) ...[
                const SizedBox(height: 8),
                _DetailRow(
                  icon: Icons.info_outline,
                  label: 'Cancellation Reason',
                  value: subscription.cancelReason!,
                ),
              ],
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: onViewDetails,
                    child: const Text('View Details'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _DetailRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _DetailRow({
    Key? key,
    required this.icon,
    required this.label,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 16, color: Colors.grey),
        const SizedBox(width: 8),
        Text(
          '$label: ',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Colors.grey,
              ),
        ),
        Expanded(
          child: Text(
            value,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      ],
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
