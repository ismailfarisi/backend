import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../models/vendor.dart';
import '../../../utils/enums.dart';
import '../cubit/vendor_detail_cubit.dart';
import 'vendor_selection_dialog.dart';

/// Container section for subscription options with toggle tabs
///
/// This component provides a tabbed interface to switch between different subscription
/// options and displays the appropriate subscription cards based on the selected tab.
class SubscriptionOptionsSection extends StatefulWidget {
  /// The current vendor for single vendor subscriptions
  final Vendor vendor;

  /// Callback when single vendor subscription is selected
  final VoidCallback? onSingleVendorSelected;

  /// Callback when multi-vendor subscription is selected
  final VoidCallback? onMultiVendorSelected;

  /// Currently selected subscription type
  final MonthlySubscriptionType? selectedSubscriptionType;

  /// List of selected vendors for multi-vendor subscription
  final List<Vendor> selectedVendors;

  /// Callback when vendor selection changes for multi-vendor subscription
  final Function(List<Vendor>) onVendorSelectionChanged;

  /// Whether subscription creation is in progress
  final bool isLoading;

  const SubscriptionOptionsSection({
    Key? key,
    required this.vendor,
    this.onSingleVendorSelected,
    this.onMultiVendorSelected,
    this.selectedSubscriptionType,
    this.selectedVendors = const [],
    required this.onVendorSelectionChanged,
    this.isLoading = false,
  }) : super(key: key);

  @override
  State<SubscriptionOptionsSection> createState() =>
      _SubscriptionOptionsSectionState();
}

class _SubscriptionOptionsSectionState extends State<SubscriptionOptionsSection>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedTabIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      if (_tabController.indexIsChanging) {
        setState(() {
          _selectedTabIndex = _tabController.index;
        });
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          _buildHeader(context),
          _buildTabBar(context),
          _buildTabContent(context),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Icon(
            Icons.subscriptions,
            color: Theme.of(context).primaryColor,
            size: 24,
          ),
          const SizedBox(width: 8),
          Text(
            'Subscription Options',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const Spacer(),
          if (widget.isLoading)
            const SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(strokeWidth: 2),
            ),
        ],
      ),
    );
  }

  Widget _buildTabBar(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: TabBar(
        controller: _tabController,
        indicator: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(12),
        ),
        labelColor: Colors.white,
        unselectedLabelColor: Colors.grey[600],
        labelStyle: const TextStyle(
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.normal,
        ),
        tabs: const [
          Tab(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.store, size: 18),
                SizedBox(width: 8),
                Text('Single Vendor'),
              ],
            ),
          ),
          Tab(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.shuffle, size: 18),
                SizedBox(width: 8),
                Text('Multi-Vendor'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTabContent(BuildContext context) {
    return Container(
      height: 300, // Fixed height for consistent layout
      child: TabBarView(
        controller: _tabController,
        children: [
          _buildSingleVendorTab(context),
          _buildMultiVendorTab(context),
        ],
      ),
    );
  }

  Widget _buildSingleVendorTab(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Monthly Subscription to ${widget.vendor.name}',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          const SizedBox(height: 8),
          Text(
            'Enjoy meals from this vendor for the entire month. Perfect for when you have a favorite!',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.grey[600],
                ),
          ),
          const SizedBox(height: 16),
          _buildFeatureList(context, [
            'Same vendor for 4 weeks',
            'Consistent meal quality',
            'Best value pricing',
            'Easy to manage',
          ]),
          const Spacer(),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: widget.isLoading
                  ? null
                  : () {
                      context.read<VendorDetailCubit>().setSubscriptionType(
                          MonthlySubscriptionType.singleVendor);
                      widget.onSingleVendorSelected?.call();
                    },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                'Choose Single Vendor',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMultiVendorTab(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Weekly Split Subscription',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          const SizedBox(height: 8),
          Text(
            'Choose 1-4 different vendors, each assigned to specific weeks. Variety at its best!',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.grey[600],
                ),
          ),
          const SizedBox(height: 16),
          _buildFeatureList(context, [
            'Different vendor each week',
            'Maximum variety',
            'Explore new cuisines',
            'Flexible vendor selection',
          ]),
          const Spacer(),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: widget.isLoading
                  ? null
                  : () => _showMultiVendorSelection(context),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                'Choose Multi-Vendor',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureList(BuildContext context, List<String> features) {
    return Column(
      children: features.map((feature) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Row(
            children: [
              Icon(
                Icons.check_circle,
                color: Theme.of(context).primaryColor,
                size: 16,
              ),
              const SizedBox(width: 8),
              Text(
                feature,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        );
      }).toList(),
    );
  }

  void _showMultiVendorSelection(BuildContext context) {
    final cubit = context.read<VendorDetailCubit>();
    cubit.setSubscriptionType(MonthlySubscriptionType.multiVendorWeeklySplit);

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
                // Update cubit with selected vendors
                selectedVendors.forEach((week, vendor) {
                  cubit.selectVendorForWeek(week, vendor);
                });
                widget.onMultiVendorSelected?.call();
              },
              isLoading: state.vendorLoadingStatus == AppStatus.loading,
            );
          },
        ),
      ),
    );
  }
}
