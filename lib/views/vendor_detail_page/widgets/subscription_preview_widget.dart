import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../models/vendor.dart';
import '../../../services/subscription_business_rules.dart';
import '../../../services/subscription_validation_service.dart';
import '../../../services/subscription_error_handler.dart';
import '../../../utils/enums.dart';
import '../cubit/vendor_detail_cubit.dart';

/// Comprehensive subscription preview with detailed cost breakdown
///
/// This widget provides users with a complete preview of their subscription
/// including pricing, meal plans, vendor assignments, and terms before creation.
class SubscriptionPreviewWidget extends StatefulWidget {
  const SubscriptionPreviewWidget({Key? key}) : super(key: key);

  @override
  State<SubscriptionPreviewWidget> createState() =>
      _SubscriptionPreviewWidgetState();
}

class _SubscriptionPreviewWidgetState extends State<SubscriptionPreviewWidget>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VendorDetailCubit, VendorDetailState>(
      builder: (context, state) {
        if (!_shouldShowPreview(state)) {
          return const SizedBox.shrink();
        }

        return Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: [
              _buildHeader(context, state),
              _buildTabBar(context),
              SizedBox(
                height: 400,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    _buildOverviewTab(context, state),
                    _buildPricingTab(context, state),
                    _buildTermsTab(context, state),
                  ],
                ),
              ),
              _buildActionButtons(context, state),
            ],
          ),
        );
      },
    );
  }

  bool _shouldShowPreview(VendorDetailState state) {
    final hasStartDate = state.selectedSubscriptionStartDate != null;
    final hasSelections =
        state.currentSubscriptionType == MonthlySubscriptionType.singleVendor
            ? state.selectedMeals.isNotEmpty
            : state.selectedVendorsByWeek.isNotEmpty;

    return hasStartDate && hasSelections;
  }

  Widget _buildHeader(BuildContext context, VendorDetailState state) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Theme.of(context).primaryColor,
            Theme.of(context).primaryColor.withOpacity(0.8),
          ],
        ),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Row(
        children: [
          Icon(
            Icons.preview,
            color: Colors.white,
            size: 24,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Subscription Preview',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Text(
                  _getSubscriptionTypeText(state.currentSubscriptionType),
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.white70,
                      ),
                ),
              ],
            ),
          ),
          _buildValidationStatus(context, state),
        ],
      ),
    );
  }

  Widget _buildValidationStatus(BuildContext context, VendorDetailState state) {
    final cubit = context.read<VendorDetailCubit>();
    final canCreate = cubit.canCreateSubscription();

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: canCreate ? Colors.green : Colors.orange,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            canCreate ? Icons.check_circle : Icons.warning,
            color: Colors.white,
            size: 16,
          ),
          const SizedBox(width: 4),
          Text(
            canCreate ? 'Ready' : 'Issues',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTabBar(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      child: TabBar(
        controller: _tabController,
        indicator: BoxDecoration(
          color: Theme.of(context).primaryColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(8),
        ),
        labelColor: Theme.of(context).primaryColor,
        unselectedLabelColor: Colors.grey[600],
        tabs: const [
          Tab(text: 'Overview'),
          Tab(text: 'Pricing'),
          Tab(text: 'Terms'),
        ],
      ),
    );
  }

  Widget _buildOverviewTab(BuildContext context, VendorDetailState state) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSubscriptionSummary(context, state),
          const SizedBox(height: 16),
          _buildDateInfo(context, state),
          const SizedBox(height: 16),
          if (state.currentSubscriptionType ==
              MonthlySubscriptionType.singleVendor)
            _buildMealPlan(context, state)
          else
            _buildVendorSchedule(context, state),
          const SizedBox(height: 16),
          _buildValidationWarnings(context, state),
        ],
      ),
    );
  }

  Widget _buildSubscriptionSummary(
      BuildContext context, VendorDetailState state) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue[50],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.blue[200]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Subscription Summary',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 8),
          _buildSummaryRow(
              'Type', _getSubscriptionTypeText(state.currentSubscriptionType)),
          _buildSummaryRow('Duration', '4 weeks (28 days)'),
          _buildSummaryRow('Total Cost',
              'AED ${context.read<VendorDetailCubit>().getCurrentSubscriptionCost().toStringAsFixed(0)}'),
          if (state.currentSubscriptionType ==
              MonthlySubscriptionType.singleVendor)
            _buildSummaryRow(
                'Total Meals', '${state.selectedMeals.length * 4}'),
        ],
      ),
    );
  }

  Widget _buildSummaryRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label),
          Text(
            value,
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }

  Widget _buildDateInfo(BuildContext context, VendorDetailState state) {
    if (state.selectedSubscriptionStartDate == null)
      return const SizedBox.shrink();

    final startDate = state.selectedSubscriptionStartDate!;
    final endDate = startDate.add(const Duration(days: 27));

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.green[50],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.green[200]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Subscription Period',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.calendar_today, color: Colors.green[700], size: 16),
              const SizedBox(width: 8),
              Text('Start: ${_formatDate(startDate)}'),
            ],
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Icon(Icons.event_available, color: Colors.green[700], size: 16),
              const SizedBox(width: 8),
              Text('End: ${_formatDate(endDate)}'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMealPlan(BuildContext context, VendorDetailState state) {
    if (state.selectedMeals.isEmpty) return const SizedBox.shrink();

    final mealsByDay = <String, List<dynamic>>{};
    for (final meal in state.selectedMeals) {
      mealsByDay.putIfAbsent(meal.dayOfWeek, () => []).add(meal);
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Weekly Meal Plan',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: 8),
        ...mealsByDay.entries.map((entry) => Container(
              margin: const EdgeInsets.only(bottom: 8),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey[50],
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey[200]!),
              ),
              child: Row(
                children: [
                  Text(
                    entry.key,
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(width: 16),
                  Text(
                      '${entry.value.length} meal${entry.value.length > 1 ? 's' : ''}'),
                ],
              ),
            )),
      ],
    );
  }

  Widget _buildVendorSchedule(BuildContext context, VendorDetailState state) {
    if (state.selectedVendorsByWeek.isEmpty) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Vendor Schedule',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: 8),
        ...state.selectedVendorsByWeek.entries.map((entry) => Container(
              margin: const EdgeInsets.only(bottom: 8),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey[50],
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey[200]!),
              ),
              child: Row(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      'Week ${entry.key}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(child: Text(entry.value.name)),
                  Text(
                    '★ ${entry.value.rating.toStringAsFixed(1)}',
                    style: TextStyle(color: Colors.amber[700]),
                  ),
                ],
              ),
            )),
      ],
    );
  }

  Widget _buildValidationWarnings(
      BuildContext context, VendorDetailState state) {
    if (state.validationWarnings.isEmpty) return const SizedBox.shrink();

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.orange[50],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.orange[200]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.warning, color: Colors.orange[700], size: 20),
              const SizedBox(width: 8),
              Text(
                'Recommendations',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          ...state.validationWarnings.map((warning) => Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('• ', style: TextStyle(color: Colors.orange[700])),
                    Expanded(child: Text(warning)),
                  ],
                ),
              )),
        ],
      ),
    );
  }

  Widget _buildPricingTab(BuildContext context, VendorDetailState state) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildCostBreakdown(context, state),
          const SizedBox(height: 16),
          _buildPricingDetails(context, state),
          const SizedBox(height: 16),
          _buildSavingsInfo(context, state),
        ],
      ),
    );
  }

  Widget _buildCostBreakdown(BuildContext context, VendorDetailState state) {
    final totalCost =
        context.read<VendorDetailCubit>().getCurrentSubscriptionCost();
    final weeklyCost = totalCost / 4;
    final dailyCost = totalCost / 28;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Theme.of(context).primaryColor.withOpacity(0.1),
            Theme.of(context).primaryColor.withOpacity(0.05),
          ],
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Cost Breakdown',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 12),
          _buildCostRow('Monthly Total', 'AED ${totalCost.toStringAsFixed(0)}',
              isTotal: true),
          _buildCostRow(
              'Weekly Average', 'AED ${weeklyCost.toStringAsFixed(0)}'),
          _buildCostRow('Daily Average', 'AED ${dailyCost.toStringAsFixed(0)}'),
          if (state.pricingDetails != null) ...[
            const Divider(height: 24),
            _buildCostRow('Subtotal',
                'AED ${state.pricingDetails!.subtotal.toStringAsFixed(0)}'),
            _buildCostRow('VAT (5%)',
                'AED ${state.pricingDetails!.vatAmount.toStringAsFixed(0)}'),
            if (state.pricingDetails!.savings > 0)
              _buildCostRow('Savings',
                  '-AED ${state.pricingDetails!.savings.toStringAsFixed(0)}',
                  isDiscount: true),
          ],
        ],
      ),
    );
  }

  Widget _buildCostRow(String label, String value,
      {bool isTotal = false, bool isDiscount = false}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
              fontSize: isTotal ? 16 : 14,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontWeight: isTotal ? FontWeight.bold : FontWeight.w500,
              fontSize: isTotal ? 16 : 14,
              color: isDiscount ? Colors.green : null,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPricingDetails(BuildContext context, VendorDetailState state) {
    if (state.pricingDetails == null) return const SizedBox.shrink();

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Pricing Details',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 12),
          _buildDetailRow('Base Cost', state.pricingDetails!.baseCost),
          _buildDetailRow('Delivery Fee', state.pricingDetails!.deliveryFee),
          _buildDetailRow('Platform Fee', state.pricingDetails!.platformFee),
          if (state.pricingDetails!.multiVendorPremium > 0)
            _buildDetailRow('Multi-Vendor Premium',
                state.pricingDetails!.multiVendorPremium),
        ],
      ),
    );
  }

  Widget _buildDetailRow(String label, double amount) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label),
          Text('AED ${amount.toStringAsFixed(0)}'),
        ],
      ),
    );
  }

  Widget _buildSavingsInfo(BuildContext context, VendorDetailState state) {
    if (state.pricingDetails?.hasDiscounts != true)
      return const SizedBox.shrink();

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.green[50],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.green[200]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.savings, color: Colors.green[700], size: 20),
              const SizedBox(width: 8),
              Text(
                'Applied Discounts',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.green[700],
                    ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          ...state.pricingDetails!.appliedDiscounts.map((discount) => Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Row(
                  children: [
                    Icon(Icons.check_circle,
                        color: Colors.green[600], size: 16),
                    const SizedBox(width: 8),
                    Text(discount),
                  ],
                ),
              )),
          const Divider(height: 16),
          Text(
            'Total Savings: AED ${state.pricingDetails!.savings.toStringAsFixed(0)}',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.green[700],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTermsTab(BuildContext context, VendorDetailState state) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTermsSection('Subscription Terms', [
            'Monthly subscription covers 4 consecutive weeks',
            'Start date cannot be changed once confirmed',
            'Delivery is Monday to Friday only',
            'Meal selections are final after confirmation',
          ]),
          const SizedBox(height: 16),
          _buildTermsSection('Payment & Billing', [
            'Full payment is due upon subscription creation',
            'VAT (5%) is included in the total price',
            'Refunds are available for unused weeks only',
            'Payment is processed securely',
          ]),
          const SizedBox(height: 16),
          _buildTermsSection('Delivery Information', [
            'Delivery fee is calculated per location',
            'Standard delivery window: 11 AM - 2 PM',
            'Special delivery instructions can be added',
            'Contactless delivery is available',
          ]),
          const SizedBox(height: 16),
          _buildTermsSection('Cancellation Policy', [
            'Cancel up to 24 hours before start date',
            'Partial refunds for unused weeks',
            'Pause option available for active subscriptions',
            'Customer support available for assistance',
          ]),
        ],
      ),
    );
  }

  Widget _buildTermsSection(String title, List<String> terms) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: 8),
        ...terms.map((term) => Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 6),
                    width: 4,
                    height: 4,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(child: Text(term)),
                ],
              ),
            )),
      ],
    );
  }

  Widget _buildActionButtons(BuildContext context, VendorDetailState state) {
    final cubit = context.read<VendorDetailCubit>();

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: OutlinedButton(
              onPressed: () {
                // Clear selections or go back
                if (state.currentSubscriptionType ==
                    MonthlySubscriptionType.singleVendor) {
                  cubit.clearMealSelections();
                } else {
                  // Clear multi-vendor selections
                }
              },
              child: const Text('Modify'),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            flex: 2,
            child: ElevatedButton(
              onPressed: cubit.canCreateSubscription()
                  ? () {
                      if (state.currentSubscriptionType ==
                          MonthlySubscriptionType.singleVendor) {
                        cubit.createSingleVendorSubscription();
                      } else {
                        cubit.createMultiVendorSubscription();
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
          ),
        ],
      ),
    );
  }

  String _getSubscriptionTypeText(MonthlySubscriptionType type) {
    switch (type) {
      case MonthlySubscriptionType.singleVendor:
        return 'Single Vendor Monthly';
      case MonthlySubscriptionType.multiVendorWeeklySplit:
        return 'Multi-Vendor Weekly Split';
    }
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }
}
