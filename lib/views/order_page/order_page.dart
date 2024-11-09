// lib/features/orders/pages/orders_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../models/meal_selection.dart';
import '../../models/subscription_order.dart';
import '../../utils/enums.dart';
import 'cubit/order_cubit.dart';
import 'dialogs/cancel_subscription_sheet.dart';
import 'dialogs/feedback_sheet.dart';
import 'dialogs/pause_subscription_sheet.dart';
import 'dialogs/renew_subscription_dialog.dart';
import 'widgets/current_subscription_card.dart';
import 'widgets/meal_schedule_card.dart';
import 'widgets/subscription_history_card.dart';
import 'widgets/subscription_summary_card.dart';

class OrdersPage extends StatelessWidget {
  static const routeName = 'orders-page';
  const OrdersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OrderCubit(),
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('My Subscriptions'),
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Current'),
                Tab(text: 'Schedule'),
                Tab(text: 'History'),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              CurrentSubscriptionTab(),
              MealScheduleTab(),
              SubscriptionHistoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}

// lib/features/orders/pages/tabs/current_subscription_tab.dart
class CurrentSubscriptionTab extends StatelessWidget {
  const CurrentSubscriptionTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderCubit, OrderState>(
      builder: (context, state) {
        if (state.status == AppStatus.loading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state.status == AppStatus.failure) {
          return Center(
            child: Text(state.errorMessage ?? 'Failed to load subscription'),
          );
        }

        if (state.activeSubscription == null) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.no_meals,
                  size: 64,
                  color: Colors.grey,
                ),
                const SizedBox(height: 16),
                Text(
                  'No Active Subscription',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 8),
                Text(
                  'Subscribe to get started with your meal plan',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.grey,
                      ),
                ),
                const SizedBox(height: 24),
                ElevatedButton.icon(
                  onPressed: () {
                    // Navigate to subscription plans
                    context.push('/subscription/plans');
                  },
                  icon: const Icon(Icons.add),
                  label: const Text('Subscribe Now'),
                ),
              ],
            ),
          );
        }

        return RefreshIndicator(
          onRefresh: () => context.read<OrderCubit>().loadOrders(),
          child: ListView(
            children: [
              CurrentSubscriptionCard(
                subscription: state.activeSubscription!,
                onPause: () => _showPauseDialog(context),
                onResume: () => context.read<OrderCubit>().resumeSubscription(
                      state.activeSubscription!.id,
                    ),
                onCancel: () => _showCancelDialog(context),
                onRenew: () => _showRenewDialog(context),
              ),
              if (state.summary != null) ...[
                SubscriptionSummaryCard(summary: state.summary!),
              ],
            ],
          ),
        );
      },
    );
  }

  void _showPauseDialog(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => const PauseSubscriptionSheet(),
    );
  }

  void _showCancelDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => const CancelSubscriptionDialog(),
    );
  }

  void _showRenewDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => const RenewSubscriptionDialog(),
    );
  }
}

// lib/features/orders/pages/tabs/meal_schedule_tab.dart
class MealScheduleTab extends StatelessWidget {
  const MealScheduleTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderCubit, OrderState>(
      builder: (context, state) {
        if (state.status == AppStatus.loading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state.status == AppStatus.failure) {
          return Center(
            child: Text(state.errorMessage ?? 'Failed to load meal schedule'),
          );
        }

        if (state.activeSubscription == null) {
          return const Center(
            child: Text('No active subscription'),
          );
        }

        final sortedMealSelections = [
          ...state.activeSubscription!.mealSelections
        ]..sort((a, b) => b.date.compareTo(a.date));

        return ListView.builder(
          itemCount: sortedMealSelections.length,
          itemBuilder: (context, index) {
            final mealSelection = sortedMealSelections[index];
            return MealScheduleCard(
              mealSelection: mealSelection,
              onFeedback: () => _showFeedbackDialog(context, mealSelection),
            );
          },
        );
      },
    );
  }

  void _showFeedbackDialog(BuildContext context, MealSelection mealSelection) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => FeedbackSheet(mealSelection: mealSelection),
    );
  }
}

// lib/features/orders/pages/tabs/subscription_history_tab.dart
class SubscriptionHistoryTab extends StatelessWidget {
  const SubscriptionHistoryTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderCubit, OrderState>(
      builder: (context, state) {
        if (state.status == AppStatus.loading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state.status == AppStatus.failure) {
          return Center(
            child: Text(state.errorMessage ?? 'Failed to load history'),
          );
        }

        final pastSubscriptions = state.orders
            .where((order) =>
                order.status == SubscriptionStatus.expired ||
                order.status == SubscriptionStatus.cancelled)
            .toList();

        if (pastSubscriptions.isEmpty) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.history,
                  size: 64,
                  color: Colors.grey,
                ),
                const SizedBox(height: 16),
                Text(
                  'No Subscription History',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 8),
                Text(
                  'Your past subscriptions will appear here',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.grey,
                      ),
                ),
              ],
            ),
          );
        }

        return ListView.builder(
          itemCount: pastSubscriptions.length,
          itemBuilder: (context, index) {
            final subscription = pastSubscriptions[index];
            return SubscriptionHistoryCard(
              subscription: subscription,
              onViewDetails: () => context.push(
                '/orders/history/${subscription.id}',
                extra: subscription,
              ),
            );
          },
        );
      },
    );
  }
}
