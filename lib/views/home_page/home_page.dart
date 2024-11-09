import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:meal_app/views/home_page/cubit/home_cubit.dart';
import 'package:meal_app/views/vendor_detail_page/vendor_detail_page.dart';

import '../../global_widgets/subscription_card.dart';
import '../../global_widgets/vendor_card.dart';
import '../../utils/enums.dart';

class HomePage extends StatelessWidget {
  static const routeName = 'homePage';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Food Mess'),
          actions: [
            IconButton(
              icon: const Icon(Icons.person_outline),
              onPressed: () {
                // Navigate to profile page
              },
            ),
          ],
        ),
        body: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            if (state.status == AppStatus.loading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state.status == AppStatus.failure) {
              return Center(
                child: Text(state.errorMessage ?? 'An error occurred'),
              );
            }

            return RefreshIndicator(
              onRefresh: () => context.read<HomeCubit>().loadInitialData(),
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  if (state.subscription != null) ...[
                    SubscriptionCard(subscription: state.subscription!),
                    const SizedBox(height: 24),
                  ],
                  Text(
                    'Available Vendors',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 16),
                  ...state.vendors.map(
                    (vendor) => Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: VendorCard(
                        vendor: vendor,
                        isSelected: vendor == state.selectedVendor,
                        onTap: () => context.pushNamed(
                            VendorDetailPage.routeName,
                            extra: vendor),
                      ),
                    ),
                  ),
                  if (state.vendors.isEmpty)
                    const Center(
                      child: Text('No vendors available at the moment'),
                    ),
                ],
              ),
            );
          },
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            // Navigate to subscription selection page
          },
          icon: const Icon(Icons.add),
          label: const Text('Subscribe'),
        ),
      ),
    );
  }
}
