import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../utils/enums.dart';
import 'cubit/profile_cubit.dart';
import 'widgets/profile_info_card.dart';
import 'widgets/settings_section.dart';

class ProfilePage extends StatelessWidget {
  static const routeName = 'profile-page';
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Profile'),
          actions: [
            IconButton(
              icon: const Icon(Icons.logout),
              onPressed: () {
                // Handle logout
              },
            ),
          ],
        ),
        body: BlocBuilder<ProfileCubit, ProfileState>(
          builder: (context, state) {
            if (state.status == AppStatus.loading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state.status == AppStatus.failure) {
              return Center(
                child: Text(state.errorMessage ?? 'Failed to load profile'),
              );
            }

            if (state.userProfile == null) {
              return const Center(child: Text('No profile data available'));
            }

            final profile = state.userProfile!;

            return RefreshIndicator(
              onRefresh: () => context.read<ProfileCubit>().loadProfile(),
              child: ListView(
                children: [
                  ProfileInfoCard(
                    profile: profile,
                    onEditPressed: () {
                      // Navigate to edit profile
                      context.push('/profile/edit');
                    },
                  ),
                  SettingsSection(
                    title: 'Delivery Address',
                    children: [
                      ListTile(
                        leading: const Icon(Icons.location_on_outlined),
                        title: Text(profile.defaultAddress?.fullAddress ??
                            'Add address'),
                        trailing: const Icon(Icons.chevron_right),
                        onTap: () {
                          // Navigate to address management
                          context.push('/profile/addresses');
                        },
                      ),
                    ],
                  ),
                  SettingsSection(
                    title: 'Dietary Preferences',
                    children: [
                      SwitchListTile(
                        value: profile.isVegetarian,
                        onChanged: (value) {
                          context.read<ProfileCubit>().updateDietaryPreferences(
                                isVegetarian: value,
                                preferences: profile.dietaryPreferences,
                                allergies: profile.allergies,
                              );
                        },
                        title: const Text('Vegetarian'),
                        secondary: const Icon(Icons.eco),
                      ),
                      ListTile(
                        leading: const Icon(Icons.fastfood),
                        title: const Text('Dietary Preferences'),
                        subtitle: Text(
                          profile.dietaryPreferences.isEmpty
                              ? 'None set'
                              : profile.dietaryPreferences.join(', '),
                        ),
                        trailing: const Icon(Icons.chevron_right),
                        onTap: () {
                          // Navigate to preferences
                          context.push('/profile/preferences');
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.warning_outlined),
                        title: const Text('Allergies'),
                        subtitle: Text(
                          profile.allergies.isEmpty
                              ? 'None set'
                              : profile.allergies.join(', '),
                        ),
                        trailing: const Icon(Icons.chevron_right),
                        onTap: () {
                          // Navigate to allergies
                          context.push('/profile/allergies');
                        },
                      ),
                    ],
                  ),
                  SettingsSection(
                    title: 'Notifications',
                    children: [
                      SwitchListTile(
                        value: profile.notificationSettings.orderUpdates,
                        onChanged: (value) {
                          context
                              .read<ProfileCubit>()
                              .updateNotificationSettings(
                                profile.notificationSettings.copyWith(
                                  orderUpdates: value,
                                ),
                              );
                        },
                        title: const Text('Order Updates'),
                        secondary: const Icon(Icons.notifications),
                      ),
                      SwitchListTile(
                        value: profile.notificationSettings.specialOffers,
                        onChanged: (value) {
                          context
                              .read<ProfileCubit>()
                              .updateNotificationSettings(
                                profile.notificationSettings.copyWith(
                                  specialOffers: value,
                                ),
                              );
                        },
                        title: const Text('Special Offers'),
                        secondary: const Icon(Icons.local_offer),
                      ),
                      SwitchListTile(
                        value: profile.notificationSettings.menuUpdates,
                        onChanged: (value) {
                          context
                              .read<ProfileCubit>()
                              .updateNotificationSettings(
                                profile.notificationSettings.copyWith(
                                  menuUpdates: value,
                                ),
                              );
                        },
                        title: const Text('Menu Updates'),
                        secondary: const Icon(Icons.restaurant_menu),
                      ),
                      SwitchListTile(
                        value: profile.notificationSettings.deliveryReminders,
                        onChanged: (value) {
                          context
                              .read<ProfileCubit>()
                              .updateNotificationSettings(
                                profile.notificationSettings.copyWith(
                                  deliveryReminders: value,
                                ),
                              );
                        },
                        title: const Text('Delivery Reminders'),
                        secondary: const Icon(Icons.delivery_dining),
                      ),
                    ],
                  ),
                  SettingsSection(
                    title: 'Support',
                    children: [
                      ListTile(
                        leading: const Icon(Icons.help_outline),
                        title: const Text('Help & Support'),
                        trailing: const Icon(Icons.chevron_right),
                        onTap: () {
                          // Navigate to help & support
                          context.push('/profile/support');
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.privacy_tip_outlined),
                        title: const Text('Privacy Policy'),
                        trailing: const Icon(Icons.chevron_right),
                        onTap: () {
                          // Navigate to privacy policy
                          context.push('/profile/privacy');
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.description_outlined),
                        title: const Text('Terms & Conditions'),
                        trailing: const Icon(Icons.chevron_right),
                        onTap: () {
                          // Navigate to terms
                          context.push('/profile/terms');
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
