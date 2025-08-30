import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/vendor_detail_cubit.dart';
import '../../../utils/enums.dart';

/// Real-time cost calculation display with weekly breakdown
///
/// This widget shows the cost preview for subscriptions with detailed breakdowns
/// including weekly costs, total pricing, and subscription creation button.
class CostPreviewWidget extends StatelessWidget {
  const CostPreviewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VendorDetailCubit, VendorDetailState>(
      builder: (context, state) {
        // Show for single vendor with meals or multi-vendor with selections
        final shouldShow = (state.currentSubscriptionType ==
                    MonthlySubscriptionType.singleVendor &&
                state.selectedMeals.isNotEmpty) ||
            (state.currentSubscriptionType ==
                    MonthlySubscriptionType.multiVendorWeeklySplit &&
                state.selectedVendorsByWeek.isNotEmpty);

        if (!shouldShow) {
          return const SizedBox.shrink();
        }

        final isMultiVendor = state.currentSubscriptionType ==
            MonthlySubscriptionType.multiVendorWeeklySplit;
        final mealsPerWeek = state.selectedMeals.length;
        final currentCost =
            isMultiVendor ? state.multiVendorCost : state.subscriptionCost;
        final weeklyCost = currentCost / 4;

        return Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeader(context),
                const SizedBox(height: 16),
                _buildCostBreakdown(context, state, mealsPerWeek, weeklyCost),
                const SizedBox(height: 16),
                _buildErrorSection(context, state),
                _buildTotalSection(context, state, isMultiVendor),
                const SizedBox(height: 16),
                _buildSubscribeButton(context, state, isMultiVendor),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.calculate,
          color: Theme.of(context).primaryColor,
          size: 20,
        ),
        const SizedBox(width: 8),
        Text(
          'Subscription Preview',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
      ],
    );
  }

  Widget _buildCostBreakdown(BuildContext context, VendorDetailState state,
      int mealsPerWeek, double weeklyCost) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Meals per week:',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text(
                '$mealsPerWeek meals',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Weekly cost:',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text(
                'AED ${weeklyCost.toStringAsFixed(2)}',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ],
          ),
          if (state.selectedSubscriptionStartDate != null) ...[
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Start date:',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Text(
                  '${state.selectedSubscriptionStartDate!.day}/${state.selectedSubscriptionStartDate!.month}/${state.selectedSubscriptionStartDate!.year}',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildErrorSection(BuildContext context, VendorDetailState state) {
    if (state.subscriptionError == null) return const SizedBox.shrink();

    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.errorContainer,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Icon(
              Icons.error_outline,
              size: 16,
              color: Theme.of(context).colorScheme.onErrorContainer,
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                state.subscriptionError!,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Theme.of(context).colorScheme.onErrorContainer,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTotalSection(
      BuildContext context, VendorDetailState state, bool isMultiVendor) {
    final currentCost =
        isMultiVendor ? state.multiVendorCost : state.subscriptionCost;
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Theme.of(context).primaryColor,
            Theme.of(context).primaryColor.withOpacity(0.8),
          ],
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total Monthly Cost',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Text(
                'AED ${currentCost.toStringAsFixed(0)}',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Per Week Average',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.white70,
                    ),
              ),
              Text(
                'AED ${(currentCost / 4).toStringAsFixed(0)}',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.white70,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSubscribeButton(
      BuildContext context, VendorDetailState state, bool isMultiVendor) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: context.read<VendorDetailCubit>().canCreateSubscription()
            ? () {
                if (isMultiVendor) {
                  context
                      .read<VendorDetailCubit>()
                      .createMultiVendorSubscription();
                } else {
                  context
                      .read<VendorDetailCubit>()
                      .createSingleVendorSubscription();
                }
              }
            : null,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 12),
        ),
        child: state.isCreatingSubscription
            ? const SizedBox(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(strokeWidth: 2),
              )
            : const Text('Create Subscription'),
      ),
    );
  }
}
