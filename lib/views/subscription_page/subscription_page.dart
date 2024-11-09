import 'package:flutter/material.dart';

class MealTypeSelectionScreen extends StatelessWidget {
  const MealTypeSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SubscriptionCubit, SubscriptionState>(
      builder: (context, state) {
        return state.maybeWhen(
          mealTypeSelection: (selectedMealTypes) => Scaffold(
            appBar: AppBar(
              title: const Text('Select Meals'),
            ),
            body: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                const Text(
                  'Choose your meal types',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                ...MealType.values.map((type) => _MealTypeCard(
                      type: type,
                      isSelected: selectedMealTypes.contains(type),
                      onTap: () {
                        final updatedSelection =
                            List<MealType>.from(selectedMealTypes);
                        if (updatedSelection.contains(type)) {
                          updatedSelection.remove(type);
                        } else {
                          updatedSelection.add(type);
                        }
                        context
                            .read<SubscriptionCubit>()
                            .updateMealTypes(updatedSelection);
                      },
                    )),
                const SizedBox(height: 24),
                FilledButton(
                  onPressed: selectedMealTypes.isEmpty
                      ? null
                      : () {
                          context.go('/subscription/vendors');
                        },
                  child: const Text('Continue'),
                ),
              ],
            ),
          ),
          orElse: () => const Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}

// lib/features/subscription/screens/vendor_selection_screen.dart
class VendorSelectionScreen extends StatelessWidget {
  const VendorSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SubscriptionCubit, SubscriptionState>(
      builder: (context, state) {
        return state.maybeWhen(
          vendorSelection:
              (selectedMealTypes, selectedVendors, availableVendors) {
            return DefaultTabController(
              length: selectedMealTypes.length,
              child: Scaffold(
                appBar: AppBar(
                  title: const Text('Select Vendors'),
                  bottom: TabBar(
                    tabs: selectedMealTypes
                        .map((type) => Tab(text: type.displayName))
                        .toList(),
                  ),
                ),
                body: TabBarView(
                  children: selectedMealTypes.map((type) {
                    return _VendorSelectionTab(
                      mealType: type,
                      selectedVendors: selectedVendors[type] ?? [],
                      availableVendors: availableVendors[type] ?? [],
                    );
                  }).toList(),
                ),
                bottomNavigationBar: Padding(
                  padding: const EdgeInsets.all(16),
                  child: FilledButton(
                    onPressed: () {
                      context.read<SubscriptionCubit>().proceedToReview();
                    },
                    child: const Text('Review Subscription'),
                  ),
                ),
              ),
            );
          },
          orElse: () => const Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}

// lib/features/subscription/screens/subscription_review_screen.dart
class SubscriptionReviewScreen extends StatelessWidget {
  const SubscriptionReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SubscriptionCubit, SubscriptionState>(
      builder: (context, state) {
        return state.maybeWhen(
          review: (plan) => Scaffold(
            appBar: AppBar(
              title: const Text('Review Subscription'),
            ),
            body: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                const Text(
                  'Subscription Summary',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                ...plan.mealSelections.map((selection) => _MealSummaryCard(
                      selection: selection,
                    )),
                const SizedBox(height: 24),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Subscription Details',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        _DetailRow(
                          label: 'Start Date',
                          value: DateFormat.yMMMd().format(plan.startDate),
                        ),
                        _DetailRow(
                          label: 'End Date',
                          value: DateFormat.yMMMd().format(plan.endDate),
                        ),
                        _DetailRow(
                          label: 'Total Amount',
                          value: NumberFormat.currency(
                            symbol: '₹',
                          ).format(plan.totalAmount),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                FilledButton(
                  onPressed: () {
                    context.read<SubscriptionCubit>().confirmSubscription();
                  },
                  child: const Text('Confirm Subscription'),
                ),
              ],
            ),
          ),
          orElse: () => const Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
