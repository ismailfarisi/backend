import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../global_widgets/subscription_card.dart';
import '../../models/subscription.dart';
import '../../utils/enums.dart';
import 'cubit/subscription_cubit.dart';
import 'widgets/meal_type_card.dart';
import 'widgets/vendor_selection_tab.dart';

class SubscriptionFlowScreen extends StatefulWidget {
  const SubscriptionFlowScreen({super.key});

  @override
  State<SubscriptionFlowScreen> createState() => _SubscriptionFlowScreenState();
}

class _SubscriptionFlowScreenState extends State<SubscriptionFlowScreen> {
  late final PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _goToNextPage() {
    _pageController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void _goToPreviousPage() {
    _pageController.previousPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SubscriptionCubit()..initializeSubscription(),
      child: BlocBuilder<SubscriptionCubit, SubscriptionState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Create Subscription'),
              leading: _currentPage > 0
                  ? IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: _goToPreviousPage,
                    )
                  : null,
            ),
            body: Column(
              children: [
                LinearProgressIndicator(
                  value: (_currentPage + 1) / 3,
                  backgroundColor: Colors.grey[200],
                ),
                Expanded(
                  child: PageView(
                    controller: _pageController,
                    physics: const NeverScrollableScrollPhysics(),
                    onPageChanged: (page) {
                      setState(() => _currentPage = page);
                    },
                    children: const [
                      _MealTypeSelectionPage(),
                      _VendorSelectionPage(),
                      _SubscriptionReviewPage(),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _MealTypeSelectionPage extends StatelessWidget {
  const _MealTypeSelectionPage();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SubscriptionCubit, SubscriptionState>(
      builder: (context, state) {
        if (state.status == AppStatus.loading) {
          return const Center(child: CircularProgressIndicator());
        }

        return Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Select Your Meals',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 8),
              Text(
                'Choose the meals you want to subscribe to',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 24),
              Expanded(
                child: ListView.separated(
                  itemCount: MealType.values.length,
                  separatorBuilder: (_, __) => const SizedBox(height: 12),
                  itemBuilder: (context, index) {
                    final mealType = MealType.values[index];
                    return MealTypeCard(
                      type: mealType,
                      isSelected: state.selectedMealTypes.contains(mealType),
                      onTap: () {
                        final cubit = context.read<SubscriptionCubit>();
                        final updatedTypes = List<MealType>.from(
                          state.selectedMealTypes,
                        );
                        if (updatedTypes.contains(mealType)) {
                          updatedTypes.remove(mealType);
                        } else {
                          updatedTypes.add(mealType);
                        }
                        cubit.updateMealTypes(updatedTypes);
                      },
                    );
                  },
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed: state.selectedMealTypes.isEmpty
                      ? null
                      : () {
                          context
                              .findAncestorStateOfType<
                                  _SubscriptionFlowScreenState>()
                              ?._goToNextPage();
                        },
                  child: const Text('Continue to Vendor Selection'),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _VendorSelectionPage extends StatelessWidget {
  const _VendorSelectionPage();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SubscriptionCubit, SubscriptionState>(
      builder: (context, state) {
        if (state.status == AppStatus.loading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state.selectedMealTypes.isEmpty) {
          return const Center(
            child: Text('Please select at least one meal type'),
          );
        }

        return DefaultTabController(
          length: state.selectedMealTypes.length,
          child: Column(
            children: [
              TabBar(
                tabs: state.selectedMealTypes.map((type) {
                  return Tab(
                    text: type.displayName,
                    icon: Icon(_getMealIcon(type)),
                  );
                }).toList(),
              ),
              Expanded(
                child: TabBarView(
                  children: state.selectedMealTypes.map((type) {
                    return VendorSelectionTab(
                      mealType: type,
                      selectedVendors: state.selectedVendors?[type] ?? [],
                      availableVendors: state.availableVendors?[type] ?? [],
                      onVendorToggle: (vendorId) {
                        context
                            .read<SubscriptionCubit>()
                            .toggleVendorSelection(type, vendorId);
                      },
                    );
                  }).toList(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: FilledButton(
                        onPressed: _canProceed(state)
                            ? () {
                                context
                                    .read<SubscriptionCubit>()
                                    .createSubscriptionPlan();
                                context
                                    .findAncestorStateOfType<
                                        _SubscriptionFlowScreenState>()
                                    ?._goToNextPage();
                              }
                            : null,
                        child: const Text('Review Subscription'),
                      ),
                    ),
                    if (!_canProceed(state)) ...[
                      const SizedBox(height: 8),
                      Text(
                        'Please select at least one vendor for each meal type',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Theme.of(context).colorScheme.error,
                            ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  bool _canProceed(SubscriptionState state) {
    return state.selectedMealTypes.every((type) {
      final vendors = state.selectedVendors?[type] ?? [];
      return vendors.isNotEmpty;
    });
  }

  IconData _getMealIcon(MealType type) {
    return switch (type) {
      MealType.breakfast => Icons.breakfast_dining,
      MealType.lunch => Icons.lunch_dining,
      MealType.dinner => Icons.dinner_dining,
    };
  }
}

class _SubscriptionReviewPage extends StatelessWidget {
  const _SubscriptionReviewPage();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SubscriptionCubit, SubscriptionState>(
      builder: (context, state) {
        if (state.submitStatus == AppStatus.loading) {
          return const Center(child: CircularProgressIndicator());
        }

        final plan = state.subscriptionPlan;
        if (plan == null) {
          return const Center(
            child: Text('No subscription plan available'),
          );
        }

        return ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Text(
              'Review Your Subscription',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 24),
            SubscriptionCard(subscription: plan),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: state.submitStatus == AppStatus.loading
                    ? null
                    : () {
                        context.read<SubscriptionCubit>().confirmSubscription();
                        // Navigate to success screen or show success dialog
                      },
                child: Text(state.submitStatus == AppStatus.loading
                    ? 'Processing...'
                    : 'Confirm Subscription'),
              ),
            ),
          ],
        );
      },
    );
  }
}
