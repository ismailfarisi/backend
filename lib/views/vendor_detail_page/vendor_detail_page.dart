import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../models/vendor.dart';
import '../../utils/enums.dart';
import 'cubit/vendor_detail_cubit.dart';
import 'widgets/meal_time_section.dart';
import 'widgets/vendor_info_section.dart';
import 'widgets/single_vendor_subscription_card.dart';
import 'widgets/cost_preview_widget.dart';
import 'widgets/subscription_options_section.dart';
import 'widgets/multi_vendor_subscription_card.dart';

class VendorDetailPage extends StatelessWidget {
  static const routeName = 'vendor-detail-page';
  final Vendor vendor;

  const VendorDetailPage({
    Key? key,
    required this.vendor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => VendorDetailCubit(vendor: vendor),
      child: Scaffold(
        body: BlocListener<VendorDetailCubit, VendorDetailState>(
          listener: (context, state) {
            if (state.subscriptionCreatedSuccessfully) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text('Subscription created successfully!'),
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  behavior: SnackBarBehavior.floating,
                ),
              );
            }
          },
          child: BlocBuilder<VendorDetailCubit, VendorDetailState>(
            builder: (context, state) {
              return DefaultTabController(
                length: 2,
                child: NestedScrollView(
                  headerSliverBuilder: (context, innerBoxIsScrolled) {
                    return [
                      SliverAppBar(
                        expandedHeight: 120,
                        floating: false,
                        pinned: true,
                        flexibleSpace: FlexibleSpaceBar(
                          title: Text(vendor.name),
                          background: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Theme.of(context).primaryColor,
                                  Theme.of(context)
                                      .primaryColor
                                      .withOpacity(0.8),
                                ],
                              ),
                            ),
                          ),
                        ),
                        actions: [
                          IconButton(
                            icon: const Icon(Icons.info_outline),
                            onPressed: () {
                              _showVendorInfoBottomSheet(context);
                            },
                          ),
                        ],
                        bottom: const TabBar(
                          indicatorColor: Colors.white,
                          labelColor: Colors.white,
                          unselectedLabelColor: Colors.white70,
                          tabs: [
                            Tab(
                              icon: Icon(Icons.restaurant),
                              text: 'Order Meals',
                            ),
                            Tab(
                              icon: Icon(Icons.subscriptions),
                              text: 'Subscriptions',
                            ),
                          ],
                        ),
                      ),
                    ];
                  },
                  body: TabBarView(
                    children: [
                      _buildMealOrderingTab(context, state),
                      _buildSubscriptionTab(context, state),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildMealOrderingTab(BuildContext context, VendorDetailState state) {
    if (state.menuStatus == AppStatus.loading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state.menuStatus == AppStatus.failure) {
      return Center(
        child: Text(state.errorMessage ?? 'Failed to load menu'),
      );
    }

    if (state.weeklyMenu == null) {
      return const Center(child: Text('No menu available'));
    }

    final selectedDate =
        state.weeklyMenu!.dailyMenus[state.selectedDayIndex].date;
    final dailyMenu = state.weeklyMenu!.dailyMenus[state.selectedDayIndex];

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(7, (index) {
                final date = state.weeklyMenu!.dailyMenus[index].date;
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: ChoiceChip(
                    label: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          DateFormat('EEE').format(date),
                          style: TextStyle(
                            color: state.selectedDayIndex == index
                                ? Colors.white
                                : null,
                          ),
                        ),
                        Text(
                          DateFormat('MMM d').format(date),
                          style: TextStyle(
                            color: state.selectedDayIndex == index
                                ? Colors.white
                                : null,
                          ),
                        ),
                      ],
                    ),
                    selected: state.selectedDayIndex == index,
                    onSelected: (selected) {
                      if (selected) {
                        context.read<VendorDetailCubit>().selectDay(index);
                      }
                    },
                  ),
                );
              }),
            ),
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              MealTimeSection(
                title: 'Breakfast',
                options: dailyMenu.breakfastOptions,
                selectedItem: state.selectedMenuItem,
                onItemSelected: (item) =>
                    context.read<VendorDetailCubit>().selectMenuItem(item),
              ),
              const Divider(),
              MealTimeSection(
                title: 'Lunch',
                options: dailyMenu.lunchOptions,
                selectedItem: state.selectedMenuItem,
                onItemSelected: (item) =>
                    context.read<VendorDetailCubit>().selectMenuItem(item),
              ),
              const Divider(),
              MealTimeSection(
                title: 'Dinner',
                options: dailyMenu.dinnerOptions,
                selectedItem: state.selectedMenuItem,
                onItemSelected: (item) =>
                    context.read<VendorDetailCubit>().selectMenuItem(item),
              ),
            ],
          ),
        ),
        if (state.selectedMenuItem != null)
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to order confirmation
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  'Order ${state.selectedMenuItem!.name} - AED${state.selectedMenuItem!.price}',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildSubscriptionTab(BuildContext context, VendorDetailState state) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            VendorInfoSection(
              vendor: vendor,
              onInfoPressed: () => _showVendorInfoBottomSheet(context),
            ),
            const SizedBox(height: 16),

            // Subscription Options Section with tabs for single/multi-vendor
            SubscriptionOptionsSection(
              vendor: vendor,
              onSingleVendorSelected: () {
                // Single vendor option selected - handled by cubit
              },
              onMultiVendorSelected: () {
                // Multi-vendor option selected - handled by cubit
              },
              onVendorSelectionChanged: (vendors) {
                // Handle vendor selection changes if needed
              },
            ),
            const SizedBox(height: 16),

            // Multi-Vendor Subscription Card (shows when vendors are selected)
            const MultiVendorSubscriptionCard(),
            const SizedBox(height: 16),

            // Single Vendor Subscription Card with interactive functionality
            BlocBuilder<VendorDetailCubit, VendorDetailState>(
              builder: (context, state) {
                // Only show for single vendor subscriptions
                if (state.currentSubscriptionType ==
                    MonthlySubscriptionType.singleVendor) {
                  return Column(
                    children: [
                      const SingleVendorSubscriptionCard(),
                      const SizedBox(height: 16),
                    ],
                  );
                }
                return const SizedBox.shrink();
              },
            ),

            // Cost Preview Widget with subscription creation
            const CostPreviewWidget(),

            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  void _showVendorInfoBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.7,
        maxChildSize: 0.9,
        minChildSize: 0.5,
        expand: false,
        builder: (context, scrollController) => SingleChildScrollView(
          controller: scrollController,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: VendorInfoSection(
              vendor: vendor,
              isCompact: false,
            ),
          ),
        ),
      ),
    );
  }
}
