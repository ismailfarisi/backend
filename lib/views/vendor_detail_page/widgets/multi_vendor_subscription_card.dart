import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../models/vendor.dart';
import '../../../utils/enums.dart';
import '../cubit/vendor_detail_cubit.dart';
import 'vendor_selection_dialog.dart';

/// Multi-Vendor Subscription Card displaying selected vendors and weekly assignments
///
/// This widget shows a comprehensive view of multi-vendor subscription with:
/// - Visual weekly calendar with vendor assignments
/// - Cost breakdown per vendor/week
/// - Action buttons to modify vendor selections
class MultiVendorSubscriptionCard extends StatelessWidget {
  const MultiVendorSubscriptionCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VendorDetailCubit, VendorDetailState>(
      builder: (context, state) {
        if (state.selectedVendorsByWeek.isEmpty) {
          return const SizedBox.shrink();
        }

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
                _buildHeader(context, state),
                const SizedBox(height: 16),
                _buildWeeklyCalendar(context, state),
                const SizedBox(height: 16),
                _buildCostBreakdown(context, state),
                const SizedBox(height: 16),
                _buildActionButtons(context, state),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildHeader(BuildContext context, VendorDetailState state) {
    return Row(
      children: [
        Icon(
          Icons.shuffle,
          color: Theme.of(context).primaryColor,
          size: 24,
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Multi-Vendor Subscription',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Text(
                '${state.selectedVendorsByWeek.length} weeks assigned • ${state.selectedVendorsByWeek.values.map((v) => v.id).toSet().length} vendors',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Colors.grey[600],
                    ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            'AED ${state.multiVendorCost.toStringAsFixed(0)}/month',
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildWeeklyCalendar(BuildContext context, VendorDetailState state) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Weekly Vendor Assignments',
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          const SizedBox(height: 12),
          Row(
            children: List.generate(4, (index) {
              final weekNumber = index + 1;
              final vendor = state.selectedVendorsByWeek[weekNumber];
              final isAssigned = vendor != null;

              return Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    right: index < 3 ? 8 : 0,
                  ),
                  child:
                      _buildWeekCard(context, weekNumber, vendor, isAssigned),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }

  Widget _buildWeekCard(
      BuildContext context, int weekNumber, Vendor? vendor, bool isAssigned) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: isAssigned
            ? Theme.of(context).primaryColor.withOpacity(0.1)
            : Colors.white,
        border: Border.all(
          color:
              isAssigned ? Theme.of(context).primaryColor : Colors.grey[300]!,
          width: isAssigned ? 2 : 1,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Text(
            'Week $weekNumber',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: isAssigned ? Theme.of(context).primaryColor : null,
                ),
          ),
          const SizedBox(height: 4),
          if (isAssigned) ...[
            CircleAvatar(
              radius: 12,
              backgroundImage: NetworkImage(vendor!.profilePhotoUrl),
              backgroundColor: Colors.grey[200],
            ),
            const SizedBox(height: 4),
            Text(
              vendor.name,
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ] else ...[
            Icon(
              Icons.add_circle_outline,
              size: 24,
              color: Colors.grey[400],
            ),
            const SizedBox(height: 4),
            Text(
              'Not assigned',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Colors.grey[600],
                  ),
              textAlign: TextAlign.center,
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildCostBreakdown(BuildContext context, VendorDetailState state) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor.withOpacity(0.05),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Theme.of(context).primaryColor.withOpacity(0.2),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Cost Breakdown',
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          const SizedBox(height: 8),
          ...state.weeklyVendorCosts.entries.map((entry) {
            final weekNumber = entry.key;
            final cost = entry.value;
            final vendor = state.selectedVendorsByWeek[weekNumber];

            return Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Row(
                children: [
                  Container(
                    width: 16,
                    height: 16,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        '$weekNumber',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      vendor?.name ?? 'Unknown',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                  Text(
                    'AED ${cost.toStringAsFixed(0)}',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ],
              ),
            );
          }).toList(),
          const Divider(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total Monthly Cost',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Text(
                'AED ${state.multiVendorCost.toStringAsFixed(0)}',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildActionButtons(BuildContext context, VendorDetailState state) {
    return Row(
      children: [
        Expanded(
          child: OutlinedButton.icon(
            onPressed: () => _showModifyVendorsDialog(context),
            icon: const Icon(Icons.edit, size: 16),
            label: const Text('Modify Vendors'),
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 12),
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: OutlinedButton.icon(
            onPressed: () => _clearAllVendors(context),
            icon: const Icon(Icons.clear, size: 16),
            label: const Text('Clear All'),
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 12),
              foregroundColor: Colors.red[600],
              side: BorderSide(color: Colors.red[300]!),
            ),
          ),
        ),
      ],
    );
  }

  void _showModifyVendorsDialog(BuildContext context) {
    final cubit = context.read<VendorDetailCubit>();

    showDialog(
      context: context,
      builder: (context) => BlocProvider.value(
        value: cubit,
        child: BlocBuilder<VendorDetailCubit, VendorDetailState>(
          builder: (context, state) {
            return VendorSelectionDialog(
              availableVendors: state.availableVendors,
              selectedVendorsByWeek: state.selectedVendorsByWeek,
              onSelectionChanged: (selectedVendors) {
                // Clear existing selections first
                for (int week = 1; week <= 4; week++) {
                  cubit.removeVendorFromWeek(week);
                }
                // Then apply new selections
                selectedVendors.forEach((week, vendor) {
                  cubit.selectVendorForWeek(week, vendor);
                });
              },
              isLoading: state.vendorLoadingStatus == AppStatus.loading,
            );
          },
        ),
      ),
    );
  }

  void _clearAllVendors(BuildContext context) {
    final cubit = context.read<VendorDetailCubit>();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Clear All Vendors'),
        content: const Text(
            'Are you sure you want to clear all vendor assignments? This action cannot be undone.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              for (int week = 1; week <= 4; week++) {
                cubit.removeVendorFromWeek(week);
              }
              Navigator.of(context).pop();
            },
            style: TextButton.styleFrom(
              foregroundColor: Colors.red[600],
            ),
            child: const Text('Clear All'),
          ),
        ],
      ),
    );
  }
}
