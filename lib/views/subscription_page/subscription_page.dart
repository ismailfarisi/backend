import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:meal_app/injection/injection.dart';
import 'package:meal_app/models/vendor_menu.dart';
import '../../global_widgets/subscription_card.dart';
import '../../models/subscription.dart';
import '../../models/vendor.dart';
import '../../utils/enums.dart';
import 'cubit/subscription_cubit.dart';
import 'widgets/meal_type_card.dart';
import 'widgets/vendor_menu_dialog.dart';

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
      create: (context) => getIt<SubscriptionCubit>(),
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
                    children: [
                      MealTypeSelectionPage(),
                      _VendorListPage(),
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

class MealTypeSelectionPage extends StatelessWidget {
  const MealTypeSelectionPage({super.key});

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
                'Choose your preferences',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 24),
              // Date Selection
              _buildDateSelection(context, state),
              const SizedBox(height: 16),
              // Location Selection
              _buildLocationSelection(context, state),
              const SizedBox(height: 24),
              // Meal Type Selection
              Expanded(
                child: ListView.separated(
                  itemCount: MealType.values.length,
                  separatorBuilder: (_, __) => const SizedBox(height: 12),
                  itemBuilder: (context, index) {
                    final mealType = MealType.values[index];
                    return MealTypeCard(
                      type: mealType,
                      isSelected: state.selectedMealTypes.contains(mealType),
                      onTap: () => _toggleMealType(context, state, mealType),
                    );
                  },
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed: _canProceed(state)
                      ? () => _proceedToVendorSelection(context)
                      : null,
                  child: const Text('Continue to Vendor Selection'),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildDateSelection(BuildContext context, SubscriptionState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Start Date',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 8),
        InkWell(
          onTap: () => _selectDate(context),
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              border: Border.all(color: Theme.of(context).dividerColor),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  state.startDate != null
                      ? DateFormat('MMM dd, yyyy').format(state.startDate!)
                      : 'Select start date',
                ),
                const Icon(Icons.calendar_today),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildLocationSelection(
      BuildContext context, SubscriptionState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Delivery Location',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 8),
        InkWell(
          onTap: () => _navigateToLocationSelection(context),
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              border: Border.all(color: Theme.of(context).dividerColor),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                const Icon(Icons.location_on),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    state.deliveryLocation?.fullAddress ??
                        'Add delivery location',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const Icon(Icons.arrow_forward_ios, size: 16),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now().add(const Duration(days: 1)),
      firstDate: DateTime.now().add(const Duration(days: 1)),
      lastDate: DateTime.now().add(const Duration(days: 30)),
    );

    if (picked != null) {
      context.read<SubscriptionCubit>().updateStartDate(picked);
    }
  }

  void _navigateToLocationSelection(BuildContext context) {
    context.go('/subscription/location');
  }

  void _toggleMealType(
    BuildContext context,
    SubscriptionState state,
    MealType mealType,
  ) {
    final updatedTypes = List<MealType>.from(state.selectedMealTypes);
    if (updatedTypes.contains(mealType)) {
      updatedTypes.remove(mealType);
    } else {
      updatedTypes.add(mealType);
    }
    context.read<SubscriptionCubit>().updateMealTypes(updatedTypes);
  }

  bool _canProceed(SubscriptionState state) {
    return state.selectedMealTypes.isNotEmpty &&
        state.startDate != null &&
        state.deliveryLocation != null;
  }

  void _proceedToVendorSelection(BuildContext context) {
    context.go('/subscription/vendors');
  }
}

class _VendorListPage extends StatelessWidget {
  const _VendorListPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocSelector<SubscriptionCubit, SubscriptionState, List<MealType>>(
      selector: (state) {
        return state.selectedMealTypes;
      },
      builder: (context, selectedMealTypes) {
        return DefaultTabController(
          length: selectedMealTypes.length,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TabBar(
                  tabs: selectedMealTypes.map((type) {
                    return Tab(text: type.displayName);
                  }).toList(),
                ),
                Expanded(
                  child: TabBarView(
                    children: selectedMealTypes.map((type) {
                      return _VendorListView(mealType: type);
                    }).toList(),
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: BlocSelector<SubscriptionCubit, SubscriptionState,
                      Map<MealType, List<String>>?>(
                    selector: (state) {
                      return state.selectedVendors;
                    },
                    builder: (context, selectedVendors) {
                      return FilledButton(
                        onPressed: selectedMealTypes.any((type) =>
                                selectedVendors?[type]?.isEmpty ?? true)
                            ? null
                            : () {
                                context
                                    .findAncestorStateOfType<
                                        _SubscriptionFlowScreenState>()
                                    ?._goToNextPage();
                              },
                        child: const Text('Continue to Vendor Selection'),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _VendorListView extends StatelessWidget {
  final MealType mealType;

  const _VendorListView({required this.mealType});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SubscriptionCubit, SubscriptionState>(
      builder: (context, state) {
        final vendors = state.availableVendors?[mealType] ?? [];

        return ListView.builder(
          itemCount: vendors.length,
          itemBuilder: (context, index) {
            final vendor = vendors[index];
            return VendorCard(
              vendor: vendor,
              mealType: mealType,
              onTap: () => _showVendorMenuDialog(context, vendor),
              onSelect: () {
                context.read<SubscriptionCubit>().toggleVendorSelection(
                      mealType,
                      vendor.id,
                    );
              },
            );
          },
        );
      },
    );
  }

  void _showVendorMenuDialog(BuildContext context, Vendor vendor) {
    showDialog(
      context: context,
      builder: (_) => VendorMenuDialog(
        vendor: vendor,
        mealType: mealType,
      ),
    );
  }
}

// vendor_card.dart
class VendorCard extends StatelessWidget {
  final Vendor vendor;
  final MealType mealType;
  final VoidCallback onTap;
  final VoidCallback onSelect;

  const VendorCard({
    Key? key,
    required this.vendor,
    required this.mealType,
    required this.onTap,
    required this.onSelect,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menu = vendor.menus.firstWhereOrNull((m) => m.mealType == mealType);
    if (menu == null) {
      return const SizedBox();
    }
    final todayMenu = _getTodayMenu(menu.weeklyMenu);

    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Column(
        children: [
          // Vendor Info
          ListTile(
            leading: CircleAvatar(
              backgroundImage: vendor.profilePhotoUrl != null
                  ? NetworkImage(vendor.profilePhotoUrl!)
                  : null,
              child: vendor.profilePhotoUrl == null
                  ? const Icon(Icons.restaurant)
                  : null,
            ),
            title: Text(vendor.businessName),
            subtitle: Text('${vendor.rating} ★ • ${vendor.distance}km away'),
            trailing: Text(
              'AED ${menu.price}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),

          // Sample Menu
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.grey[50],
              border: Border(
                top: BorderSide(color: Colors.grey[200]!),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Today's Menu",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: onTap,
                      child: const Text('View Full Menu'),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: (todayMenu.items)
                      .take(3)
                      .map((item) => Chip(label: Text(item)))
                      .toList(),
                ),
              ],
            ),
          ),

          // Action Buttons
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: onTap,
                    child: const Text('View Menu'),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: FilledButton(
                    onPressed: onSelect,
                    child: const Text('Select Vendor'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  DailyMenu _getTodayMenu(Map<String, dynamic> weeklyMenu) {
    final today = DateTime.now().weekday;
    final dayName = [
      'monday',
      'tuesday',
      'wednesday',
      'thursday',
      'friday',
      'saturday',
      'sunday',
    ][today - 1];
    return weeklyMenu[dayName];
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
