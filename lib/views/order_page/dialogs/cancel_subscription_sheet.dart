import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../utils/enums.dart';
import '../cubit/order_cubit.dart';

class CancelSubscriptionDialog extends StatefulWidget {
  const CancelSubscriptionDialog({Key? key}) : super(key: key);

  @override
  State<CancelSubscriptionDialog> createState() =>
      _CancelSubscriptionDialogState();
}

class _CancelSubscriptionDialogState extends State<CancelSubscriptionDialog> {
  final _reasonController = TextEditingController();
  String? _selectedReason;

  final _cancellationReasons = [
    'Not satisfied with meal quality',
    'Delivery issues',
    'Changed location',
    'Price too high',
    'Dietary changes',
    'Other',
  ];

  @override
  void dispose() {
    _reasonController.dispose();
    super.dispose();
  }

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
              content: Text('Subscription cancelled successfully'),
            ),
          );
        } else if (state.actionStatus == AppStatus.failure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content:
                  Text(state.actionError ?? 'Failed to cancel subscription'),
              backgroundColor: Colors.red,
            ),
          );
        }
      },
      child: AlertDialog(
        title: const Text('Cancel Subscription'),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Please tell us why you want to cancel:'),
              const SizedBox(height: 16),
              ...ListTile.divideTiles(
                context: context,
                tiles: _cancellationReasons.map(
                  (reason) => RadioListTile<String>(
                    title: Text(reason),
                    value: reason,
                    groupValue: _selectedReason,
                    onChanged: (value) {
                      setState(() => _selectedReason = value);
                    },
                  ),
                ),
              ),
              if (_selectedReason == 'Other') ...[
                const SizedBox(height: 16),
                TextField(
                  controller: _reasonController,
                  decoration: const InputDecoration(
                    labelText: 'Please specify',
                    border: OutlineInputBorder(),
                  ),
                  maxLines: 3,
                ),
              ],
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Keep Subscription'),
          ),
          BlocBuilder<OrderCubit, OrderState>(
            builder: (context, state) {
              return FilledButton(
                onPressed: state.actionStatus == AppStatus.loading ||
                        _selectedReason == null
                    ? null
                    : () {
                        final reason = _selectedReason == 'Other'
                            ? _reasonController.text
                            : _selectedReason;
                        if (reason != null) {
                          context.read<OrderCubit>().cancelSubscription(
                                state.activeSubscription!.id,
                                reason: reason,
                              );
                        }
                      },
                child: state.actionStatus == AppStatus.loading
                    ? const SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(),
                      )
                    : const Text('Cancel Subscription'),
              );
            },
          ),
        ],
      ),
    );
  }
}
