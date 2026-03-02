import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../injection/injection.dart';
import '../../models/vendor.dart';
import '../../utils/enums.dart';
import 'cubit/vendor_list_cubit.dart';
import 'widgets/vendor_card.dart';
import 'widgets/subscription_summary_footer.dart';

class VendorListPage extends StatelessWidget {
  static const routeName = 'vendor-list';

  const VendorListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<VendorListCubit>(),
      child: Scaffold(
        body: const VendorListView(),
        bottomNavigationBar: const SubscriptionSummaryFooter(),
      ),
    );
  }
}

class VendorListView extends StatelessWidget {
  const VendorListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return [
          SliverAppBar(
            floating: true,
            pinned: true,
            elevation: 0,
            backgroundColor: Theme.of(context).colorScheme.surface,
            foregroundColor: Theme.of(context).colorScheme.onSurface,
            title: const Text(
              'All Vendors',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(120),
              child: Column(
                children: [
                  // Search Bar
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search vendors or cuisines...',
                        prefixIcon: const Icon(Icons.search),
                        filled: true,
                        fillColor: Theme.of(context).colorScheme.surfaceContainerHighest,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      ),
                      onChanged: (query) {
                        context.read<VendorListCubit>().searchVendors(query);
                      },
                    ),
                  ),
                  // Filter Chips
                  _buildFilterChips(context),
                ],
              ),
            ),
          ),
        ];
      },
      body: BlocBuilder<VendorListCubit, VendorListState>(
        builder: (context, state) {
          if (state.status == AppStatus.loading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state.status == AppStatus.failure) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.error_outline,
                    size: 64,
                    color: Theme.of(context).colorScheme.error,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    state.errorMessage ?? 'Failed to load vendors',
                    style: Theme.of(context).textTheme.bodyLarge,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  FilledButton.icon(
                    onPressed: () => context.read<VendorListCubit>().loadVendors(),
                    icon: const Icon(Icons.refresh),
                    label: const Text('Retry'),
                  ),
                ],
              ),
            );
          }

          if (state.filteredVendors.isEmpty) {
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
                    state.searchQuery.isNotEmpty || state.selectedCuisineFilter != null
                        ? 'No vendors found'
                        : 'No vendors available',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  if (state.searchQuery.isNotEmpty || state.selectedCuisineFilter != null) ...[
                    const SizedBox(height: 8),
                    TextButton(
                      onPressed: () => context.read<VendorListCubit>().clearFilters(),
                      child: const Text('Clear filters'),
                    ),
                  ],
                ],
              ),
            );
          }

          return RefreshIndicator(
            onRefresh: () => context.read<VendorListCubit>().loadVendors(),
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: state.filteredVendors.length,
              itemBuilder: (context, index) {
                final vendor = state.filteredVendors[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: VendorCard(vendor: vendor),
                );
              },
            ),
          );
        },
      ),
    );
  }

  Widget _buildFilterChips(BuildContext context) {
    return BlocBuilder<VendorListCubit, VendorListState>(
      builder: (context, state) {
        final cuisines = context.read<VendorListCubit>().getAllCuisineTypes();

        return SizedBox(
          height: 50,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            children: [
              // Sort options
              _buildSortChip(
                context,
                label: 'Rating',
                icon: Icons.star,
                isSelected: state.sortOption == VendorSortOption.rating,
                onTap: () => context.read<VendorListCubit>().setSortOption(VendorSortOption.rating),
              ),
              const SizedBox(width: 8),
              _buildSortChip(
                context,
                label: 'Distance',
                icon: Icons.location_on,
                isSelected: state.sortOption == VendorSortOption.distance,
                onTap: () => context.read<VendorListCubit>().setSortOption(VendorSortOption.distance),
              ),
              const SizedBox(width: 8),
              _buildSortChip(
                context,
                label: 'Name',
                icon: Icons.sort_by_alpha,
                isSelected: state.sortOption == VendorSortOption.name,
                onTap: () => context.read<VendorListCubit>().setSortOption(VendorSortOption.name),
              ),

              if (cuisines.isNotEmpty) ...[
                const SizedBox(width: 16),
                Container(
                  width: 1,
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  color: Theme.of(context).colorScheme.outline.withValues(alpha: 0.3),
                ),
                const SizedBox(width: 16),
                // Cuisine filters
                ...cuisines.take(5).map((cuisine) {
                  final isSelected = state.selectedCuisineFilter == cuisine;
                  return Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: FilterChip(
                      label: Text(cuisine),
                      selected: isSelected,
                      onSelected: (selected) {
                        context.read<VendorListCubit>().filterByCuisine(
                          selected ? cuisine : null,
                        );
                      },
                    ),
                  );
                }),
              ],
            ],
          ),
        );
      },
    );
  }

  Widget _buildSortChip(
    BuildContext context, {
    required String label,
    required IconData icon,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return FilterChip(
      label: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 16),
          const SizedBox(width: 4),
          Text(label),
        ],
      ),
      selected: isSelected,
      onSelected: (_) => onTap(),
    );
  }
}
