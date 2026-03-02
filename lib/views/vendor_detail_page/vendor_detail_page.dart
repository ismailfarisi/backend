import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../app/multi_vendor_subscription_bloc/multi_vendor_subscription_bloc.dart';
import '../../models/vendor.dart';
import '../../utils/enums.dart';
import '../vendor_list_page/vendor_list_page.dart';
import 'cubit/vendor_detail_cubit.dart';
import 'widgets/meal_time_section.dart';
import 'widgets/vendor_info_section.dart';
import 'widgets/single_vendor_subscription_card.dart';
import 'widgets/cost_preview_widget.dart';

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
                        expandedHeight: 200,
                        floating: false,
                        pinned: true,
                        elevation: 0,
                        backgroundColor: Theme.of(context).colorScheme.surface,
                        foregroundColor: Theme.of(context).colorScheme.onSurface,
                        leading: IconButton(
                          icon: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.surface.withValues(alpha: 0.9),
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withValues(alpha: 0.1),
                                  blurRadius: 8,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                            ),
                            child: Icon(
                              Icons.arrow_back,
                              color: Theme.of(context).colorScheme.onSurface,
                            ),
                          ),
                          onPressed: () => Navigator.of(context).pop(),
                        ),
                        flexibleSpace: FlexibleSpaceBar(
                          titlePadding: const EdgeInsets.only(left: 16, bottom: 56, right: 16),
                          title: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                vendor.name,
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.onSurface,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 14,
                                    color: Theme.of(context).colorScheme.tertiary,
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    vendor.rating.toStringAsFixed(1),
                                    style: TextStyle(
                                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  if (vendor.distance != null) ...[
                                    const SizedBox(width: 12),
                                    Icon(
                                      Icons.location_on,
                                      size: 14,
                                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                                    ),
                                    const SizedBox(width: 4),
                                    Text(
                                      '${vendor.distance!.toStringAsFixed(1)} km',
                                      style: TextStyle(
                                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ],
                              ),
                            ],
                          ),
                          background: Stack(
                            fit: StackFit.expand,
                            children: [
                              // Cover Image
                              if (vendor.coverPhotoUrl.isNotEmpty)
                                Image.network(
                                  vendor.coverPhotoUrl,
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) => Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Theme.of(context).colorScheme.primaryContainer,
                                          Theme.of(context).colorScheme.secondaryContainer,
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              else
                                Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Theme.of(context).colorScheme.primaryContainer,
                                        Theme.of(context).colorScheme.secondaryContainer,
                                      ],
                                    ),
                                  ),
                                ),
                              // Gradient Overlay
                              Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.transparent,
                                      Colors.black.withValues(alpha: 0.3),
                                      Theme.of(context).colorScheme.surface.withValues(alpha: 0.95),
                                    ],
                                    stops: const [0.0, 0.5, 1.0],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        actions: [
                          IconButton(
                            icon: Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.surface.withValues(alpha: 0.9),
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withValues(alpha: 0.1),
                                    blurRadius: 8,
                                    offset: const Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: Icon(
                                Icons.info_outline,
                                color: Theme.of(context).colorScheme.onSurface,
                              ),
                            ),
                            onPressed: () {
                              _showVendorInfoBottomSheet(context);
                            },
                          ),
                          const SizedBox(width: 8),
                        ],
                        bottom: PreferredSize(
                          preferredSize: const Size.fromHeight(48),
                          child: Container(
                            color: Theme.of(context).colorScheme.surface,
                            child: TabBar(
                              indicatorColor: Theme.of(context).colorScheme.primary,
                              indicatorWeight: 3,
                              labelColor: Theme.of(context).colorScheme.primary,
                              unselectedLabelColor: Theme.of(context).colorScheme.onSurfaceVariant,
                              labelStyle: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                              unselectedLabelStyle: const TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                              ),
                              tabs: const [
                                Tab(
                                  icon: Icon(Icons.restaurant_menu, size: 20),
                                  text: 'Weekly Menu',
                                ),
                                Tab(
                                  icon: Icon(Icons.calendar_month, size: 20),
                                  text: 'Subscriptions',
                                ),
                              ],
                            ),
                          ),
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
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.restaurant_menu,
                size: 64,
                color: Theme.of(context).colorScheme.outline,
              ),
              const SizedBox(height: 16),
              Text(
                state.errorMessage ?? 'Failed to load menu',
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      );
    }

    if (state.weeklyMenu == null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.calendar_today,
              size: 64,
              color: Theme.of(context).colorScheme.outline,
            ),
            const SizedBox(height: 16),
            Text(
              'No menu available',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      );
    }

    final dailyMenu = state.weeklyMenu!.dailyMenus[state.selectedDayIndex];

    return Column(
      children: [
        // Compact Day Selector
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surfaceContainerHighest,
            borderRadius: BorderRadius.circular(12),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(4),
            child: Row(
              children: List.generate(7, (index) {
                final date = state.weeklyMenu!.dailyMenus[index].date;
                final isSelected = state.selectedDayIndex == index;
                final isToday = _isToday(date);
                final dayName = DateFormat('EEE').format(date);

                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: Material(
                    color: isSelected
                        ? Theme.of(context).colorScheme.primary
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(8),
                    child: InkWell(
                      onTap: () => context.read<VendorDetailCubit>().selectDay(index),
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              dayName,
                              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                                color: isSelected
                                    ? Theme.of(context).colorScheme.onPrimary
                                    : Theme.of(context).colorScheme.onSurface,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            if (isToday)
                              Container(
                                margin: const EdgeInsets.only(top: 4),
                                width: 4,
                                height: 4,
                                decoration: BoxDecoration(
                                  color: isSelected
                                      ? Theme.of(context).colorScheme.onPrimary
                                      : Theme.of(context).colorScheme.primary,
                                  shape: BoxShape.circle,
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
        ),

        // Selected Day Info
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: Row(
            children: [
              Text(
                DateFormat('EEEE, MMMM d').format(dailyMenu.date),
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
              ),
              if (_isToday(dailyMenu.date)) ...[
                const SizedBox(width: 8),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    'Today',
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),

        const Divider(height: 1),

        // Meals List
        Expanded(
          child: ListView(
            padding: const EdgeInsets.only(top: 8, bottom: 16, left: 0, right: 0),
            children: [
              if (dailyMenu.breakfastOptions.isNotEmpty)
                MealTimeSection(
                  title: 'Breakfast',
                  icon: Icons.free_breakfast,
                  options: dailyMenu.breakfastOptions,
                ),
              if (dailyMenu.lunchOptions.isNotEmpty) ...[
                const SizedBox(height: 12),
                MealTimeSection(
                  title: 'Lunch',
                  icon: Icons.lunch_dining,
                  options: dailyMenu.lunchOptions,
                ),
              ],
              if (dailyMenu.dinnerOptions.isNotEmpty) ...[
                const SizedBox(height: 12),
                MealTimeSection(
                  title: 'Dinner',
                  icon: Icons.dinner_dining,
                  options: dailyMenu.dinnerOptions,
                ),
              ],
            ],
          ),
        ),
      ],
    );
  }

  bool _isToday(DateTime date) {
    final now = DateTime.now();
    return date.year == now.year && date.month == now.month && date.day == now.day;
  }

  Widget _buildSubscriptionTab(BuildContext context, VendorDetailState state) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Text(
              'Create Monthly Subscription',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Subscribe for a full month of meals delivered to you',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 24),

            // Step 1: Choose subscription type
            Text(
              'Step 1: Choose subscription type',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 12),

            // Subscription Type Selection Cards
            Row(
              children: [
                Expanded(
                  child: _buildSubscriptionTypeCard(
                    context: context,
                    title: 'Single Vendor',
                    description: 'Same vendor for 4 weeks',
                    icon: Icons.restaurant,
                    isSelected: state.currentSubscriptionType == MonthlySubscriptionType.singleVendor,
                    onTap: () {
                      context.read<VendorDetailCubit>().setSubscriptionType(
                        MonthlySubscriptionType.singleVendor,
                      );
                    },
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _buildSubscriptionTypeCard(
                    context: context,
                    title: 'Multiple Vendors',
                    description: 'Different vendor each week',
                    icon: Icons.diversity_3,
                    isSelected: state.currentSubscriptionType == MonthlySubscriptionType.multiVendorWeeklySplit,
                    onTap: () {
                      context.read<VendorDetailCubit>().setSubscriptionType(
                        MonthlySubscriptionType.multiVendorWeeklySplit,
                      );
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),

            // Step 2: Content based on selection
            if (state.currentSubscriptionType == MonthlySubscriptionType.singleVendor)
              _buildSingleVendorSection(context, state)
            else
              _buildMultiVendorSection(context, state),
          ],
        ),
      ),
    );
  }

  Widget _buildSubscriptionTypeCard({
    required BuildContext context,
    required String title,
    required String description,
    required IconData icon,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return Card(
      elevation: 0,
      color: isSelected
          ? Theme.of(context).colorScheme.primaryContainer
          : Theme.of(context).colorScheme.surfaceContainerHighest,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: isSelected
            ? BorderSide(
                color: Theme.of(context).colorScheme.primary,
                width: 2,
              )
            : BorderSide.none,
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Icon(
                icon,
                size: 32,
                color: isSelected
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).colorScheme.onSurfaceVariant,
              ),
              const SizedBox(height: 8),
              Text(
                title,
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: isSelected
                      ? Theme.of(context).colorScheme.onPrimaryContainer
                      : Theme.of(context).colorScheme.onSurface,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 4),
              Text(
                description,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: isSelected
                      ? Theme.of(context).colorScheme.onPrimaryContainer
                      : Theme.of(context).colorScheme.onSurfaceVariant,
                ),
                textAlign: TextAlign.center,
              ),
              if (isSelected) ...[
                const SizedBox(height: 8),
                Icon(
                  Icons.check_circle,
                  color: Theme.of(context).colorScheme.primary,
                  size: 20,
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSingleVendorSection(BuildContext context, VendorDetailState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Step 2: Your selected vendor',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        const SizedBox(height: 12),

        // Current vendor card
        Card(
          elevation: 0,
          color: Theme.of(context).colorScheme.surfaceContainerHighest,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: vendor.profilePhotoUrl.isNotEmpty
                      ? NetworkImage(vendor.profilePhotoUrl)
                      : null,
                  child: vendor.profilePhotoUrl.isEmpty
                      ? const Icon(Icons.restaurant)
                      : null,
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        vendor.name,
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 16,
                            color: Theme.of(context).colorScheme.tertiary,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            vendor.rating.toStringAsFixed(1),
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            vendor.cuisineTypes.take(2).join(', '),
                            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Theme.of(context).colorScheme.onSurfaceVariant,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.check,
                    color: Theme.of(context).colorScheme.primary,
                    size: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),

        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondaryContainer,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              Icon(
                Icons.info_outline,
                size: 20,
                color: Theme.of(context).colorScheme.onSecondaryContainer,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  'You\'ll receive meals from ${vendor.name} for all 4 weeks',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).colorScheme.onSecondaryContainer,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 24),

        // Single Vendor Subscription Card
        const SingleVendorSubscriptionCard(),
        const SizedBox(height: 16),

        // Cost Preview
        const CostPreviewWidget(),
      ],
    );
  }

  Widget _buildMultiVendorSection(BuildContext context, VendorDetailState state) {
    return BlocBuilder<MultiVendorSubscriptionBloc, MultiVendorSubscriptionState>(
      builder: (context, subscriptionState) {
        final bloc = context.read<MultiVendorSubscriptionBloc>();
        final availableWeeks = bloc.availableWeeks;
        final isVendorAlreadyAdded = subscriptionState.selectedVendorsByWeek.values
            .any((v) => v.id == vendor.id);

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Step 2: Add vendor to subscription',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Add this vendor to your multi-vendor subscription, then browse other vendors',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 16),

            // Current vendor card
            Card(
              elevation: 0,
              color: Theme.of(context).colorScheme.surfaceContainerHighest,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: vendor.profilePhotoUrl.isNotEmpty
                          ? NetworkImage(vendor.profilePhotoUrl)
                          : null,
                      child: vendor.profilePhotoUrl.isEmpty
                          ? const Icon(Icons.restaurant)
                          : null,
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            vendor.name,
                            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 16,
                                color: Theme.of(context).colorScheme.tertiary,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                vendor.rating.toStringAsFixed(1),
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                vendor.cuisineTypes.take(2).join(', '),
                                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Selection status
            if (isVendorAlreadyAdded)
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.check_circle,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        'This vendor is already in your subscription',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(context).colorScheme.onPrimaryContainer,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            else if (availableWeeks.isEmpty)
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondaryContainer,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.info_outline,
                      color: Theme.of(context).colorScheme.onSecondaryContainer,
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        'All 4 weeks are filled. Remove a vendor to add this one.',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(context).colorScheme.onSecondaryContainer,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            else
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondaryContainer,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.info_outline,
                      color: Theme.of(context).colorScheme.onSecondaryContainer,
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        'Add this vendor, then browse others to complete your subscription',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(context).colorScheme.onSecondaryContainer,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            const SizedBox(height: 24),

            // Add to subscription button
            if (!isVendorAlreadyAdded && availableWeeks.isNotEmpty)
              SizedBox(
                width: double.infinity,
                child: FilledButton.icon(
                  onPressed: () {
                    _showWeekSelectionDialog(context, availableWeeks);
                  },
                  icon: const Icon(Icons.add),
                  label: Text('Add ${vendor.name} to Subscription'),
                ),
              ),

            const SizedBox(height: 16),

            // Browse vendors button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                onPressed: () {
                  context.pushNamed(VendorListPage.routeName);
                },
                icon: const Icon(Icons.list),
                label: Text(
                  subscriptionState.selectedVendorsByWeek.isEmpty
                      ? 'Browse All Vendors'
                      : 'Continue Browsing Vendors',
                ),
              ),
            ),

            const SizedBox(height: 24),

            // Current subscription summary
            if (subscriptionState.selectedVendorsByWeek.isNotEmpty) ...[
              Text(
                'Current Selection',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              ...subscriptionState.selectedVendorsByWeek.entries.map((entry) {
                return Card(
                  margin: const EdgeInsets.only(bottom: 8),
                  child: ListTile(
                    leading: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          'W${entry.key}',
                          style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.onPrimaryContainer,
                          ),
                        ),
                      ),
                    ),
                    title: Text(entry.value.name),
                    subtitle: Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 14,
                          color: Theme.of(context).colorScheme.tertiary,
                        ),
                        const SizedBox(width: 4),
                        Text(entry.value.rating.toStringAsFixed(1)),
                      ],
                    ),
                    trailing: IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () {
                        context.read<MultiVendorSubscriptionBloc>().add(
                              MultiVendorSubscriptionEvent.removeVendorFromWeek(
                                weekNumber: entry.key,
                              ),
                            );
                      },
                    ),
                  ),
                );
              }),
            ],
          ],
        );
      },
    );
  }

  void _showWeekSelectionDialog(BuildContext context, List<int> availableWeeks) {
    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Select Week'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: availableWeeks.map((weekNumber) {
            return ListTile(
              leading: CircleAvatar(
                child: Text('W$weekNumber'),
              ),
              title: Text('Week $weekNumber'),
              onTap: () {
                context.read<MultiVendorSubscriptionBloc>().add(
                      MultiVendorSubscriptionEvent.addVendorToWeek(
                        weekNumber: weekNumber,
                        vendor: vendor,
                      ),
                    );
                Navigator.pop(dialogContext);

                // Show success message
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('${vendor.name} added to Week $weekNumber'),
                    action: SnackBarAction(
                      label: 'Browse Vendors',
                      onPressed: () {
                        context.pushNamed(VendorListPage.routeName);
                      },
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: const Text('Cancel'),
          ),
        ],
      ),
    );
  }

  Widget _buildWeekSelectionCard({
    required BuildContext context,
    required int weekNumber,
    required Vendor? selectedVendor,
    required VendorDetailState state,
  }) {
    return Card(
      elevation: 0,
      color: Theme.of(context).colorScheme.surfaceContainerHighest,
      child: InkWell(
        onTap: () => _showVendorSelectionSheet(context, weekNumber, state),
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: selectedVendor != null
                      ? Theme.of(context).colorScheme.primaryContainer
                      : Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: selectedVendor != null
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).colorScheme.outline,
                  ),
                ),
                child: Center(
                  child: Text(
                    'W$weekNumber',
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: selectedVendor != null
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: selectedVendor != null
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            selectedVendor.name,
                            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 2),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 14,
                                color: Theme.of(context).colorScheme.tertiary,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                selectedVendor.rating.toStringAsFixed(1),
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ],
                          ),
                        ],
                      )
                    : Text(
                        'Select vendor for Week $weekNumber',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                      ),
              ),
              Icon(
                selectedVendor != null ? Icons.edit : Icons.add_circle_outline,
                color: Theme.of(context).colorScheme.primary,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showVendorSelectionSheet(BuildContext context, int weekNumber, VendorDetailState state) {
    // Load vendors if not already loaded
    if (state.availableVendors.isEmpty && state.vendorLoadingStatus != AppStatus.loading) {
      context.read<VendorDetailCubit>().loadAvailableVendors();
    }

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (sheetContext) => DraggableScrollableSheet(
        initialChildSize: 0.7,
        maxChildSize: 0.9,
        minChildSize: 0.5,
        expand: false,
        builder: (context, scrollController) => Column(
          children: [
            // Header
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      'Week $weekNumber',
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      'Select Vendor',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),
            const Divider(height: 1),

            // Vendor list
            Expanded(
              child: BlocBuilder<VendorDetailCubit, VendorDetailState>(
                builder: (context, state) {
                  if (state.vendorLoadingStatus == AppStatus.loading) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  if (state.availableVendors.isEmpty) {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.restaurant,
                            size: 64,
                            color: Theme.of(context).colorScheme.outline,
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'No vendors available',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ],
                      ),
                    );
                  }

                  return ListView.builder(
                    controller: scrollController,
                    padding: const EdgeInsets.all(16),
                    itemCount: state.availableVendors.length,
                    itemBuilder: (context, index) {
                      final vendor = state.availableVendors[index];
                      final isSelected = state.selectedVendorsByWeek[weekNumber]?.id == vendor.id;

                      return Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: Card(
                          elevation: 0,
                          color: isSelected
                              ? Theme.of(context).colorScheme.primaryContainer
                              : Theme.of(context).colorScheme.surfaceContainerHighest,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                            side: isSelected
                                ? BorderSide(
                                    color: Theme.of(context).colorScheme.primary,
                                    width: 2,
                                  )
                                : BorderSide.none,
                          ),
                          child: InkWell(
                            onTap: () {
                              context.read<VendorDetailCubit>().selectVendorForWeek(weekNumber, vendor);
                              Navigator.pop(context);
                            },
                            borderRadius: BorderRadius.circular(12),
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundImage: vendor.profilePhotoUrl.isNotEmpty
                                        ? NetworkImage(vendor.profilePhotoUrl)
                                        : null,
                                    child: vendor.profilePhotoUrl.isEmpty
                                        ? const Icon(Icons.restaurant)
                                        : null,
                                  ),
                                  const SizedBox(width: 16),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          vendor.name,
                                          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(height: 4),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              size: 16,
                                              color: Theme.of(context).colorScheme.tertiary,
                                            ),
                                            const SizedBox(width: 4),
                                            Text(
                                              vendor.rating.toStringAsFixed(1),
                                              style: Theme.of(context).textTheme.bodySmall,
                                            ),
                                            if (vendor.distance != null) ...[
                                              const SizedBox(width: 12),
                                              Icon(
                                                Icons.location_on,
                                                size: 16,
                                                color: Theme.of(context).colorScheme.onSurfaceVariant,
                                              ),
                                              const SizedBox(width: 4),
                                              Text(
                                                '${vendor.distance!.toStringAsFixed(1)} km',
                                                style: Theme.of(context).textTheme.bodySmall,
                                              ),
                                            ],
                                          ],
                                        ),
                                        if (vendor.cuisineTypes.isNotEmpty) ...[
                                          const SizedBox(height: 4),
                                          Text(
                                            vendor.cuisineTypes.take(3).join(', '),
                                            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                              color: Theme.of(context).colorScheme.onSurfaceVariant,
                                            ),
                                          ),
                                        ],
                                      ],
                                    ),
                                  ),
                                  if (isSelected)
                                    Icon(
                                      Icons.check_circle,
                                      color: Theme.of(context).colorScheme.primary,
                                      size: 24,
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
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
