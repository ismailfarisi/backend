// lib/features/home/screens/home_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';
import 'package:meal_app/app/auth_bloc/auth_bloc.dart';
import 'package:meal_app/injection/injection.dart';
import 'package:meal_app/models/user.dart';
import 'package:meal_app/models/menu_item.dart'; // Added import

import '../../global_widgets/vendor_card.dart';
import '../../utils/enums.dart';
import 'cubit/home_cubit.dart';

class HomePage extends StatelessWidget {
  static const routeName = 'home-page';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          context.push('/subscription');
        },
        icon: const Icon(Icons.add),
        label: const Text('Subscribe'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: BlocProvider(
        create: (context) => getIt<HomeCubit>(),
        child: BlocBuilder<AuthBloc, AuthState>(builder: (context, authState) {
          final User? user = authState.user;
          return BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              if (state.status == AppStatus.loading) {
                return const Center(child: CircularProgressIndicator());
              }

              if (state.status == AppStatus.failure) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Something went wrong',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        state.errorMessage ?? 'Failed to load data',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Theme.of(context).colorScheme.error,
                            ),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          context.read<HomeCubit>().refreshData();
                        },
                        child: const Text('Try Again'),
                      ),
                    ],
                  ),
                );
              }

              return RefreshIndicator(
                onRefresh: () => context.read<HomeCubit>().refreshData(),
                child: CustomScrollView(
                  slivers: [
                    _buildAppBar(context, user?.fullName),
                    if (state.subscription != null)
                      SliverToBoxAdapter(
                        child: _buildSubscriptionCard(context, state),
                      )
                    else
                      SliverToBoxAdapter(
                        child: _buildSubscriptionPromotionCard(context),
                      ),
                    _buildSectionTitle(
                      context,
                      'Today\'s Menu',
                      onViewAllPressed: () {
                        // TODO: Implement navigation to full menu page
                        // For now, let's print to console or show a snackbar
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text('View All Today\'s Menu clicked!')),
                        );
                        // Example navigation: context.push('/todays-menu');
                      },
                    ),
                    _buildTodayMenu(context, state),
                    _buildSectionTitle(context, 'Featured Vendors'),
                    _buildVendorGrid(context, state),
                    const SliverPadding(padding: EdgeInsets.only(bottom: 24)),
                  ],
                ),
              );
            },
          );
        }),
      ),
    );
  }

  Widget _buildAppBar(BuildContext context, String? userName) {
    final theme = Theme.of(context);

    return SliverAppBar(
      expandedHeight: 180.h, // Increased height to accommodate search bar
      floating: true,
      pinned: true,
      backgroundColor: theme.colorScheme.surface,
      elevation: 0,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.zero, // Remove default padding
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello, ${userName ?? 'Guest'}',
                style: theme.textTheme.titleLarge?.copyWith(
                  color: theme.colorScheme.onSurface,
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                'What would you like to eat?',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
        ),
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(60.h),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search for meals or vendors...',
              prefixIcon:
                  Icon(Icons.search, color: theme.colorScheme.onSurfaceVariant),
              filled: true,
              fillColor: theme.colorScheme.surfaceContainerHighest,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(24.r),
                borderSide: BorderSide.none,
              ),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 0, horizontal: 20.w),
            ),
          ),
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 16.w),
          child: CircleAvatar(
            backgroundColor: theme.colorScheme.primaryContainer,
            child: Icon(
              Icons.person,
              color: theme.colorScheme.primary,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSubscriptionPromotionCard(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.w),
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Subscribe for Better Deals',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height: 8.h),
              Text(
                'Get daily meals from your favorite vendors at discounted prices',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(height: 16.h),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/subscription');
                },
                child: const Text('View Plans'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSubscriptionCard(BuildContext context, HomeState state) {
    final theme = Theme.of(context);

    return Padding(
      padding: EdgeInsets.all(16.w),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Active Subscription',
                        style: theme.textTheme.titleMedium,
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        '3 meals selected',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.edit),
                    label: const Text('Modify'),
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              _buildMealTypeChips(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMealTypeChips(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildMealChip(
          context,
          icon: Icons.breakfast_dining,
          label: 'Breakfast',
          isActive: true,
        ),
        _buildMealChip(
          context,
          icon: Icons.lunch_dining,
          label: 'Lunch',
          isActive: true,
        ),
        _buildMealChip(
          context,
          icon: Icons.dinner_dining,
          label: 'Dinner',
          isActive: true,
        ),
      ],
    );
  }

  Widget _buildMealChip(
    BuildContext context, {
    required IconData icon,
    required String label,
    required bool isActive,
  }) {
    final theme = Theme.of(context);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: isActive
            ? theme.colorScheme.primaryContainer
            : theme.colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 18.w,
            color: isActive
                ? theme.colorScheme.primary
                : theme.colorScheme.onSurfaceVariant,
          ),
          SizedBox(width: 4.w),
          Text(
            label,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: isActive
                  ? theme.colorScheme.primary
                  : theme.colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(
    BuildContext context,
    String title, {
    VoidCallback? onViewAllPressed,
  }) {
    return SliverPadding(
      padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 8.h), // Added top padding
      sliver: SliverToBoxAdapter(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            if (onViewAllPressed != null)
              TextButton(
                onPressed: onViewAllPressed,
                child: const Text('View All'),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildTodayMenu(BuildContext context, HomeState state) {
    if (state.getTodayMenuStatus == AppStatus.loading) {
      return const SliverToBoxAdapter(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: CircularProgressIndicator(),
          ),
        ),
      );
    }

    if (state.getTodayMenuStatus == AppStatus.failure) {
      return SliverToBoxAdapter(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              state.errorMessage ?? 'Failed to load today\'s menu.',
              style: TextStyle(color: Theme.of(context).colorScheme.error),
            ),
          ),
        ),
      );
    }

    if (state.todayMenuItems.isEmpty) {
      return const SliverToBoxAdapter(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('No menu items available for today.'),
          ),
        ),
      );
    }

    return SliverToBoxAdapter(
      child: SizedBox(
        height: 190.h, // Adjusted height to accommodate slightly larger cards
        child: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          scrollDirection: Axis.horizontal,
          itemCount: state.todayMenuItems.length,
          itemBuilder: (context, index) {
            return _buildMenuCard(context, state.todayMenuItems[index]);
          },
        ),
      ),
    );
  }

  Widget _buildMenuCard(BuildContext context, MenuItem menuItem) {
    final theme = Theme.of(context);

    return Container(
      width: 220.w, // Slightly wider card
      margin: EdgeInsets.only(right: 16.w),
      child: Card(
        elevation: 2,
        clipBehavior: Clip.antiAlias, // To ensure image corners are rounded
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100.h,
              width: double.infinity, // Ensure image takes full width
              child: menuItem.imageUrl != null && menuItem.imageUrl!.isNotEmpty
                  ? Image.network(
                      menuItem.imageUrl!,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => Center(
                        child: Icon(
                          Icons.restaurant_menu,
                          size: 40.w,
                          color: theme.colorScheme.primary,
                        ),
                      ),
                    )
                  : Container(
                      color: theme.colorScheme.primaryContainer,
                      child: Center(
                        child: Icon(
                          Icons.restaurant_menu,
                          size: 40.w,
                          color: theme.colorScheme.primary,
                        ),
                      ),
                    ),
            ),
            Padding(
              padding: EdgeInsets.all(12.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    menuItem.name,
                    style: theme.textTheme.titleMedium,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    // Assuming MenuItem has a vendor field with a name, or use a default
                    'By ${menuItem.vendor?.name ?? 'Unknown Vendor'}',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildVendorGrid(BuildContext context, HomeState state) {
    if (state.getVendorsStatus == AppStatus.loading) {
      return const SliverToBoxAdapter(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    if (state.vendors.isEmpty) {
      return SliverToBoxAdapter(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(16.w),
            child: Text(
              'No vendors available at the moment',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        ),
      );
    }

    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      sliver: SliverMasonryGrid.count(
        crossAxisCount: 2,
        itemBuilder: (BuildContext context, int index) {
          return VendorCard(
            vendor: state.vendors[index],
            isSelected: state.selectedVendor == state.vendors[index],
            onTap: () {
              context.read<HomeCubit>().selectVendor(state.vendors[index]);
            },
          );
        },
        childCount: state.vendors.length, // Show 6 shimmer items while loading
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
      ),
    );
  }
}
