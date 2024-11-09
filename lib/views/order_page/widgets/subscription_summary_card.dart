import 'package:flutter/material.dart';

import '../../../models/subscription.dart';
import '../../../models/subscription_summary.dart';

class SubscriptionSummaryCard extends StatelessWidget {
  final SubscriptionSummary summary;

  const SubscriptionSummaryCard({
    Key? key,
    required this.summary,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor.withOpacity(0.1),
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(12)),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.insights,
                  color: Theme.of(context).primaryColor,
                ),
                const SizedBox(width: 8),
                Text(
                  'Subscription Summary',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: _SummaryItem(
                        icon: Icons.receipt_long,
                        title: 'Total Orders',
                        value: summary.totalOrders.toString(),
                      ),
                    ),
                    Expanded(
                      child: _SummaryItem(
                        icon: Icons.star,
                        title: 'Average Rating',
                        value: summary.averageRating.toStringAsFixed(1),
                      ),
                    ),
                    Expanded(
                      child: _SummaryItem(
                        icon: Icons.currency_rupee,
                        title: 'Total Spent',
                        value: '₹${summary.totalSpent}',
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                _SummaryChart(
                  title: 'Meal Distribution',
                  data: summary.mealTypeDistribution,
                ),
                const SizedBox(height: 16),
                _FrequentMeals(meals: summary.frequentMeals),
                const SizedBox(height: 16),
                _VendorDistribution(data: summary.vendorDistribution),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SummaryItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;

  const _SummaryItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 24, color: Theme.of(context).primaryColor),
        const SizedBox(height: 8),
        Text(
          title,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Colors.grey,
              ),
          textAlign: TextAlign.center,
        ),
        Text(
          value,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class _SummaryChart extends StatelessWidget {
  final String title;
  final Map<MealType, int> data;

  const _SummaryChart({
    Key? key,
    required this.title,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final total = data.values.fold(0, (sum, count) => sum + count);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 12),
        ...data.entries.map(
          (entry) => Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      entry.key == MealType.breakfast
                          ? Icons.breakfast_dining
                          : entry.key == MealType.lunch
                              ? Icons.lunch_dining
                              : Icons.dinner_dining,
                      size: 16,
                    ),
                    const SizedBox(width: 8),
                    Text(entry.key.name),
                    const Spacer(),
                    Text('${entry.value} meals'),
                  ],
                ),
                const SizedBox(height: 4),
                LinearProgressIndicator(
                  value: entry.value / total,
                  backgroundColor: Colors.grey.shade200,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Theme.of(context).primaryColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _FrequentMeals extends StatelessWidget {
  final List<String> meals;

  const _FrequentMeals({
    Key? key,
    required this.meals,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Most Ordered Meals',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: meals
              .map(
                (meal) => Chip(
                  label: Text(meal),
                  backgroundColor:
                      Theme.of(context).primaryColor.withOpacity(0.1),
                  side: BorderSide.none,
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}

class _VendorDistribution extends StatelessWidget {
  final Map<String, int> data;

  const _VendorDistribution({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Vendor Distribution',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 12),
        ...data.entries
            .map(
              (entry) => ListTile(
                leading: CircleAvatar(
                  backgroundColor:
                      Theme.of(context).primaryColor.withOpacity(0.1),
                  child: Text(
                    entry.key[0],
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                title: Text(entry.key),
                trailing: Text(
                  '${entry.value} orders',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Colors.grey,
                      ),
                ),
              ),
            )
            .toList(),
      ],
    );
  }
}
