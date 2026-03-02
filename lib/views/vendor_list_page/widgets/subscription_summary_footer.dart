import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../app/multi_vendor_subscription_bloc/multi_vendor_subscription_bloc.dart';

class SubscriptionSummaryFooter extends StatelessWidget {
  const SubscriptionSummaryFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MultiVendorSubscriptionBloc, MultiVendorSubscriptionState>(
      builder: (context, state) {
        if (state.selectedVendorsByWeek.isEmpty) {
          return const SizedBox.shrink();
        }

        final selectedCount = state.selectedVendorsByWeek.length;
        final isComplete = selectedCount == 4;

        return Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.1),
                blurRadius: 8,
                offset: const Offset(0, -2),
              ),
            ],
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Progress indicator
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.check_circle,
                                  size: 20,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  'Multi-Vendor Subscription',
                                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 4),
                            Text(
                              '$selectedCount of 4 weeks selected',
                              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                color: Theme.of(context).colorScheme.onSurfaceVariant,
                              ),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.expand_less),
                        onPressed: () {
                          _showDetailsBottomSheet(context, state);
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),

                  // Progress bar
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: LinearProgressIndicator(
                      value: selectedCount / 4,
                      minHeight: 8,
                      backgroundColor: Theme.of(context).colorScheme.surfaceContainerHighest,
                      valueColor: AlwaysStoppedAnimation<Color>(
                        Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),

                  // Action button
                  SizedBox(
                    width: double.infinity,
                    child: FilledButton(
                      onPressed: isComplete
                          ? () {
                              // TODO: Navigate to complete subscription page
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Complete subscription flow - Coming soon!'),
                                ),
                              );
                            }
                          : null,
                      child: Text(
                        isComplete
                            ? 'Complete Subscription'
                            : 'Select ${4 - selectedCount} more week${4 - selectedCount > 1 ? 's' : ''}',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _showDetailsBottomSheet(BuildContext context, MultiVendorSubscriptionState state) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) => Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Your Subscription',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Selected vendors
            ...List.generate(4, (index) {
              final weekNumber = index + 1;
              final vendor = state.selectedVendorsByWeek[weekNumber];

              return Card(
                margin: const EdgeInsets.only(bottom: 8),
                child: ListTile(
                  leading: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: vendor != null
                          ? Theme.of(context).colorScheme.primaryContainer
                          : Theme.of(context).colorScheme.surfaceContainerHighest,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        'W$weekNumber',
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: vendor != null
                              ? Theme.of(context).colorScheme.onPrimaryContainer
                              : Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ),
                  ),
                  title: Text(
                    vendor?.name ?? 'Not selected',
                    style: TextStyle(
                      color: vendor == null
                          ? Theme.of(context).colorScheme.onSurfaceVariant
                          : null,
                    ),
                  ),
                  subtitle: vendor != null
                      ? Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 14,
                              color: Theme.of(context).colorScheme.tertiary,
                            ),
                            const SizedBox(width: 4),
                            Text(vendor.rating.toStringAsFixed(1)),
                          ],
                        )
                      : null,
                  trailing: vendor != null
                      ? IconButton(
                          icon: const Icon(Icons.close),
                          onPressed: () {
                            context.read<MultiVendorSubscriptionBloc>().add(
                                  MultiVendorSubscriptionEvent.removeVendorFromWeek(
                                    weekNumber: weekNumber,
                                  ),
                                );
                          },
                        )
                      : null,
                ),
              );
            }),

            const SizedBox(height: 16),

            // Clear all button
            if (state.selectedVendorsByWeek.isNotEmpty)
              TextButton(
                onPressed: () {
                  context.read<MultiVendorSubscriptionBloc>().add(
                        const MultiVendorSubscriptionEvent.clearAllSelections(),
                      );
                  Navigator.pop(context);
                },
                child: const Text('Clear all selections'),
              ),
          ],
        ),
      ),
    );
  }
}
