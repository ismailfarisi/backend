import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../models/vendor.dart';
import '../../utils/enums.dart';
import 'cubit/vendor_detail_cubit.dart';
import 'widgets/meal_time_section.dart';

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
        appBar: AppBar(
          title: Text(vendor.name),
          actions: [
            IconButton(
              icon: const Icon(Icons.info_outline),
              onPressed: () {
                // Show vendor info bottom sheet
              },
            ),
          ],
        ),
        body: BlocBuilder<VendorDetailCubit, VendorDetailState>(
          builder: (context, state) {
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
            final dailyMenu =
                state.weeklyMenu!.dailyMenus[state.selectedDayIndex];

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
                                context
                                    .read<VendorDetailCubit>()
                                    .selectDay(index);
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
                        onItemSelected: (item) => context
                            .read<VendorDetailCubit>()
                            .selectMenuItem(item),
                      ),
                      const Divider(),
                      MealTimeSection(
                        title: 'Lunch',
                        options: dailyMenu.lunchOptions,
                        selectedItem: state.selectedMenuItem,
                        onItemSelected: (item) => context
                            .read<VendorDetailCubit>()
                            .selectMenuItem(item),
                      ),
                      const Divider(),
                      MealTimeSection(
                        title: 'Dinner',
                        options: dailyMenu.dinnerOptions,
                        selectedItem: state.selectedMenuItem,
                        onItemSelected: (item) => context
                            .read<VendorDetailCubit>()
                            .selectMenuItem(item),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
        bottomNavigationBar: BlocBuilder<VendorDetailCubit, VendorDetailState>(
          builder: (context, state) {
            if (state.selectedMenuItem != null) {
              return SafeArea(
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
              );
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
