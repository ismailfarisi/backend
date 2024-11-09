import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../models/meal_selection.dart';
import '../../../models/subscription_feedback.dart';
import '../../../utils/enums.dart';
import '../cubit/order_cubit.dart';

class FeedbackSheet extends StatefulWidget {
  final MealSelection mealSelection;

  const FeedbackSheet({
    Key? key,
    required this.mealSelection,
  }) : super(key: key);

  @override
  State<FeedbackSheet> createState() => _FeedbackSheetState();
}

class _FeedbackSheetState extends State<FeedbackSheet> {
  final _commentController = TextEditingController();
  int _rating = 0;
  final _selectedTags = <String>{};

  final _feedbackTags = [
    'Delicious',
    'Good Portion',
    'On Time',
    'Hot & Fresh',
    'Value for Money',
    'Packaging',
    'Taste',
    'Quality',
  ];

  @override
  void dispose() {
    _commentController.dispose();
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
              content: Text('Feedback submitted successfully'),
            ),
          );
        } else if (state.actionStatus == AppStatus.failure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.actionError ?? 'Failed to submit feedback'),
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
            Text(
              'Rate your meal',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            Text(
              DateFormat('EEEE, MMM d').format(widget.mealSelection.date),
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.grey,
                  ),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(5, (index) {
                return IconButton(
                  icon: Icon(
                    index < _rating ? Icons.star : Icons.star_border,
                    color: Colors.amber,
                    size: 32,
                  ),
                  onPressed: () {
                    setState(() => _rating = index + 1);
                  },
                );
              }),
            ),
            const SizedBox(height: 24),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: _feedbackTags.map((tag) {
                final isSelected = _selectedTags.contains(tag);
                return FilterChip(
                  label: Text(tag),
                  selected: isSelected,
                  onSelected: (selected) {
                    setState(() {
                      if (selected) {
                        _selectedTags.add(tag);
                      } else {
                        _selectedTags.remove(tag);
                      }
                    });
                  },
                );
              }).toList(),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _commentController,
              decoration: const InputDecoration(
                labelText: 'Additional Comments',
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
            ),
            const SizedBox(height: 24),
            BlocBuilder<OrderCubit, OrderState>(
              builder: (context, state) {
                return SizedBox(
                  width: double.infinity,
                  child: FilledButton(
                    onPressed: state.actionStatus == AppStatus.loading ||
                            _rating == 0
                        ? null
                        : () {
                            final feedback = SubscriptionFeedback(
                              id: DateTime.now()
                                  .millisecondsSinceEpoch
                                  .toString(),
                              orderId: state.activeSubscription!.id,
                              date: widget.mealSelection.date,
                              rating: _rating,
                              comment: _commentController.text,
                              tags: _selectedTags.toList(),
                              type: FeedbackType.meal,
                            );
                            context.read<OrderCubit>().submitFeedback(feedback);
                          },
                    child: state.actionStatus == AppStatus.loading
                        ? const SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(),
                          )
                        : const Text('Submit Feedback'),
                  ),
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
