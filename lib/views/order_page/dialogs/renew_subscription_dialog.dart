// lib/features/orders/widgets/dialogs/renew_subscription_dialog.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../utils/enums.dart';
import '../cubit/order_cubit.dart';

class RenewSubscriptionDialog extends StatefulWidget {
  const RenewSubscriptionDialog({Key? key}) : super(key: key);

  @override
  State<RenewSubscriptionDialog> createState() =>
      _RenewSubscriptionDialogState();
}

class _RenewSubscriptionDialogState extends State<RenewSubscriptionDialog> {
  bool _keepSameVendor = true;
  bool _keepSameMeals = true;
  int _selectedDuration = 1;

  final List<Map<String, dynamic>> _durationOptions = [
    {'months': 1, 'discount': 0},
    {'months': 3, 'discount': 5},
    {'months': 6, 'discount': 10},
    {'months': 12, 'discount': 15},
  ];

  @override
  Widget build(BuildContext context) {
    return BlocListener<OrderCubit, OrderState>(
      listenWhen: (previous, current) =>
          previous.actionStatus != current.actionStatus,
      listener: (context, state) {
        if (state.actionStatus == AppStatus.success) {
          Navigator.pop(context);
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Subscription renewed successfully'),
            ),
          );
        } else if (state.actionStatus == AppStatus.failure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content:
                  Text(state.actionError ?? 'Failed to renew subscription'),
              backgroundColor: Colors.red,
            ),
          );
        }
      },
      child: Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: BlocBuilder<OrderCubit, OrderState>(
          builder: (context, state) {
            final subscription = state.activeSubscription;
            if (subscription == null) return const SizedBox();

            final baseAmount = subscription.monthlyAmount;
            final selectedOption = _durationOptions[_selectedDuration];
            final months = selectedOption['months'] as int;
            final discount = selectedOption['discount'] as int;
            final totalAmount = baseAmount * months;
            final discountedAmount =
                totalAmount - (totalAmount * discount / 100);

            return SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.autorenew,
                        color: Theme.of(context).primaryColor,
                      ),
                      const SizedBox(width: 12),
                      Text(
                        'Renew Subscription',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'Current Plan Details',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 12),
                  _PlanDetailTile(
                    title: 'Vendor',
                    value: subscription.vendorId,
                    icon: Icons.store,
                  ),
                  _PlanDetailTile(
                    title: 'Meals',
                    value: subscription.subscribedMeals
                        .map((meal) => meal.name)
                        .join(', '),
                    icon: Icons.restaurant,
                  ),
                  _PlanDetailTile(
                    title: 'Monthly Amount',
                    value: 'AED${subscription.monthlyAmount}',
                    icon: Icons.currency_rupee,
                  ),
                  const Divider(height: 32),
                  Text(
                    'Renewal Options',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 12),
                  SwitchListTile(
                    value: _keepSameVendor,
                    onChanged: (value) {
                      setState(() => _keepSameVendor = value);
                    },
                    title: const Text('Keep Same Vendor'),
                    subtitle: Text(
                      _keepSameVendor
                          ? 'Continue with current vendor'
                          : 'Choose a new vendor',
                    ),
                  ),
                  SwitchListTile(
                    value: _keepSameMeals,
                    onChanged: (value) {
                      setState(() => _keepSameMeals = value);
                    },
                    title: const Text('Keep Same Meal Plan'),
                    subtitle: Text(
                      _keepSameMeals
                          ? 'Continue with current meals'
                          : 'Modify meal selection',
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Select Duration',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 12),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: List.generate(
                        _durationOptions.length,
                        (index) {
                          final option = _durationOptions[index];
                          final months = option['months'] as int;
                          final discount = option['discount'] as int;
                          return RadioListTile(
                            value: index,
                            groupValue: _selectedDuration,
                            onChanged: (value) {
                              setState(() => _selectedDuration = value as int);
                            },
                            title: Row(
                              children: [
                                Text(
                                    '$months ${months == 1 ? 'Month' : 'Months'}'),
                                if (discount > 0) ...[
                                  const SizedBox(width: 8),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 2,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.green.shade100,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Text(
                                      '$discount% OFF',
                                      style: TextStyle(
                                        color: Colors.green.shade700,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ],
                            ),
                            subtitle: Text(
                              'AED${baseAmount * months} for $months months',
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Price Summary',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(height: 12),
                        _PriceSummaryRow(
                          label: 'Base Amount',
                          value: 'AED$totalAmount',
                        ),
                        if (discount > 0) ...[
                          _PriceSummaryRow(
                            label: 'Discount ($discount%)',
                            value:
                                '-AED${(totalAmount * discount / 100).round()}',
                            isDiscount: true,
                          ),
                        ],
                        const Divider(),
                        _PriceSummaryRow(
                          label: 'Total Amount',
                          value: 'AED$discountedAmount',
                          isTotal: true,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: state.actionStatus == AppStatus.loading
                              ? null
                              : () => Navigator.pop(context),
                          child: const Text('Cancel'),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: FilledButton(
                          onPressed: state.actionStatus == AppStatus.loading
                              ? null
                              : () {
                                  if (!_keepSameVendor || !_keepSameMeals) {
                                    // Navigate to modification page
                                    context.push(
                                      '/subscription/modify',
                                      extra: {
                                        'duration': selectedOption,
                                        'currentPlan': subscription,
                                      },
                                    );
                                    return;
                                  }

                                  // Renew with same plan
                                  // Implement renewal logic
                                },
                          child: state.actionStatus == AppStatus.loading
                              ? const SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: CircularProgressIndicator(),
                                )
                              : Text(!_keepSameVendor || !_keepSameMeals
                                  ? 'Modify & Renew'
                                  : 'Renew Now'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class _PlanDetailTile extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;

  const _PlanDetailTile({
    Key? key,
    required this.title,
    required this.value,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(icon, size: 20, color: Colors.grey),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Colors.grey,
                    ),
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
      ),
    );
  }
}

class _PriceSummaryRow extends StatelessWidget {
  final String label;
  final String value;
  final bool isDiscount;
  final bool isTotal;

  const _PriceSummaryRow({
    Key? key,
    required this.label,
    required this.value,
    this.isDiscount = false,
    this.isTotal = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: isTotal
                ? Theme.of(context).textTheme.titleMedium
                : Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: isDiscount ? Colors.green : null,
                    ),
          ),
          Text(
            value,
            style: isTotal
                ? Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Theme.of(context).primaryColor,
                    )
                : Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: isDiscount ? Colors.green : null,
                      fontWeight: isTotal ? FontWeight.bold : null,
                    ),
          ),
        ],
      ),
    );
  }
}
