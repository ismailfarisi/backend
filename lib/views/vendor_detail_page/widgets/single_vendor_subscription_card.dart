import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../models/vendor.dart';
import '../../../models/subscription_meal_selection.dart';
import '../cubit/vendor_detail_cubit.dart';

/// Card component for single vendor monthly subscription
///
/// This card displays the subscription details for a single vendor subscription,
/// including pricing, duration, and vendor information, connected to VendorDetailCubit.
class SingleVendorSubscriptionCard extends StatelessWidget {
  const SingleVendorSubscriptionCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VendorDetailCubit, VendorDetailState>(
      builder: (context, state) {
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
                _buildDateSelection(context, state),
                const SizedBox(height: 16),
                _buildMealSelection(context, state),
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
        CircleAvatar(
          radius: 20,
          backgroundImage: NetworkImage(state.vendor.profilePhotoUrl),
          backgroundColor: Colors.grey[200],
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                state.vendor.name,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Text(
                'Single Vendor Monthly Subscription',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Colors.grey[600],
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildDateSelection(BuildContext context, VendorDetailState state) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.calendar_today),
        title: Text(
          state.selectedSubscriptionStartDate != null
              ? 'Start: ${state.selectedSubscriptionStartDate!.day}/${state.selectedSubscriptionStartDate!.month}/${state.selectedSubscriptionStartDate!.year}'
              : 'Select start date',
        ),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () => _selectStartDate(context),
      ),
    );
  }

  Widget _buildMealSelection(BuildContext context, VendorDetailState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Select Weekly Meals',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            if (state.selectedMeals.isNotEmpty)
              TextButton(
                onPressed: () =>
                    context.read<VendorDetailCubit>().clearMealSelections(),
                child: const Text('Clear All'),
              ),
          ],
        ),
        const SizedBox(height: 8),
        if (state.weeklyMenu != null)
          _buildWeeklyMealSelector(context, state)
        else
          const Text('Loading menu...'),
      ],
    );
  }

  Widget _buildWeeklyMealSelector(
      BuildContext context, VendorDetailState state) {
    final daysOfWeek = [
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday',
      'Sunday'
    ];

    return Column(
      children: daysOfWeek.map((day) {
        final dayMeals =
            state.selectedMeals.where((m) => m.dayOfWeek == day).toList();

        return ExpansionTile(
          title: Text(
            day,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
          subtitle: dayMeals.isEmpty
              ? const Text('No meals selected')
              : Text('${dayMeals.length} meal(s) selected'),
          children: [
            if (state.weeklyMenu!.dailyMenus.isNotEmpty) ...[
              ...state.weeklyMenu!.dailyMenus.first.breakfastOptions.map(
                  (menuItem) => _buildMealTile(context, menuItem, day, state)),
              ...state.weeklyMenu!.dailyMenus.first.lunchOptions.map(
                  (menuItem) => _buildMealTile(context, menuItem, day, state)),
              ...state.weeklyMenu!.dailyMenus.first.dinnerOptions.map(
                  (menuItem) => _buildMealTile(context, menuItem, day, state)),
            ],
          ],
        );
      }).toList(),
    );
  }

  Widget _buildMealTile(BuildContext context, dynamic menuItem, String day,
      VendorDetailState state) {
    final isSelected = state.selectedMeals
        .any((m) => m.menuItemId == menuItem.id && m.dayOfWeek == day);
    final selectedMeal = state.selectedMeals.firstWhere(
      (m) => m.menuItemId == menuItem.id && m.dayOfWeek == day,
      orElse: () => SubscriptionMealSelection(
        menuItemId: menuItem.id,
        dayOfWeek: day,
        quantity: 1,
      ),
    );

    return ListTile(
      contentPadding: const EdgeInsets.only(left: 32, right: 16),
      title: Text(menuItem.name),
      subtitle: Text('AED ${menuItem.price.toStringAsFixed(2)}'),
      trailing: isSelected
          ? Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: selectedMeal.quantity > 1
                      ? () => _updateMealQuantity(
                          context, selectedMeal, selectedMeal.quantity - 1)
                      : null,
                  icon: const Icon(Icons.remove),
                  iconSize: 20,
                ),
                Text('${selectedMeal.quantity}'),
                IconButton(
                  onPressed: selectedMeal.quantity < 5
                      ? () => _updateMealQuantity(
                          context, selectedMeal, selectedMeal.quantity + 1)
                      : null,
                  icon: const Icon(Icons.add),
                  iconSize: 20,
                ),
              ],
            )
          : null,
      leading: Checkbox(
        value: isSelected,
        onChanged: (bool? value) {
          final mealSelection = SubscriptionMealSelection(
            menuItemId: menuItem.id,
            dayOfWeek: day,
            quantity: 1,
          );
          context.read<VendorDetailCubit>().toggleMealSelection(mealSelection);
        },
      ),
    );
  }

  void _updateMealQuantity(
      BuildContext context, SubscriptionMealSelection meal, int newQuantity) {
    // Remove the old meal selection
    context.read<VendorDetailCubit>().toggleMealSelection(meal);
    // Add the new one with updated quantity
    context.read<VendorDetailCubit>().toggleMealSelection(
          SubscriptionMealSelection(
            menuItemId: meal.menuItemId,
            dayOfWeek: meal.dayOfWeek,
            quantity: newQuantity,
          ),
        );
  }

  Future<void> _selectStartDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now().add(const Duration(days: 1)),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );
    if (picked != null) {
      context.read<VendorDetailCubit>().selectSubscriptionStartDate(picked);
    }
  }
}
