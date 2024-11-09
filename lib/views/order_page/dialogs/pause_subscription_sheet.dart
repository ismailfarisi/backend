import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../utils/enums.dart';
import '../cubit/order_cubit.dart';

class PauseSubscriptionSheet extends StatefulWidget {
  const PauseSubscriptionSheet({Key? key}) : super(key: key);

  @override
  State<PauseSubscriptionSheet> createState() => _PauseSubscriptionSheetState();
}

class _PauseSubscriptionSheetState extends State<PauseSubscriptionSheet> {
  final _reasonController = TextEditingController();
  DateTime? _pauseFrom;
  DateTime? _pauseUntil;

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
              content: Text('Subscription paused successfully'),
            ),
          );
        } else if (state.actionStatus == AppStatus.failure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content:
                  Text(state.actionError ?? 'Failed to pause subscription'),
              backgroundColor: Colors.red,
            ),
          );
        }
      },
      child: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
          left: 16,
          right: 16,
          top: 16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.pause_circle_outline),
                const SizedBox(width: 8),
                Text(
                  'Pause Subscription',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            const SizedBox(height: 16),
            ListTile(
              title: const Text('Pause From'),
              subtitle: _pauseFrom == null
                  ? const Text('Select date')
                  : Text(DateFormat('MMM d, yyyy').format(_pauseFrom!)),
              trailing: const Icon(Icons.calendar_today),
              onTap: () async {
                final date = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime.now().add(const Duration(days: 30)),
                );
                if (date != null) {
                  setState(() => _pauseFrom = date);
                }
              },
            ),
            ListTile(
              title: const Text('Pause Until'),
              subtitle: _pauseUntil == null
                  ? const Text('Select date')
                  : Text(DateFormat('MMM d, yyyy').format(_pauseUntil!)),
              trailing: const Icon(Icons.calendar_today),
              onTap: () async {
                if (_pauseFrom == null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Please select pause from date first'),
                    ),
                  );
                  return;
                }
                final date = await showDatePicker(
                  context: context,
                  initialDate: _pauseFrom!.add(const Duration(days: 1)),
                  firstDate: _pauseFrom!.add(const Duration(days: 1)),
                  lastDate: _pauseFrom!.add(const Duration(days: 30)),
                );
                if (date != null) {
                  setState(() => _pauseUntil = date);
                }
              },
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _reasonController,
              decoration: const InputDecoration(
                labelText: 'Reason (Optional)',
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
            ),
            const SizedBox(height: 24),
            BlocBuilder<OrderCubit, OrderState>(
              builder: (context, state) {
                return Row(
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
                      child: ElevatedButton(
                        onPressed: state.actionStatus == AppStatus.loading ||
                                _pauseFrom == null ||
                                _pauseUntil == null
                            ? null
                            : () {
                                context.read<OrderCubit>().pauseSubscription(
                                      state.activeSubscription!.id,
                                      pauseFrom: _pauseFrom!,
                                      pauseUntil: _pauseUntil!,
                                      reason: _reasonController.text,
                                    );
                              },
                        child: state.actionStatus == AppStatus.loading
                            ? const SizedBox(
                                height: 20,
                                width: 20,
                                child: CircularProgressIndicator(),
                              )
                            : const Text('Confirm'),
                      ),
                    ),
                  ],
                );
              },
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
