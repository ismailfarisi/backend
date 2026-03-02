import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../models/vendor.dart';
import '../../vendor_detail_page/vendor_detail_page.dart';

class VendorCard extends StatelessWidget {
  final Vendor vendor;

  const VendorCard({
    Key? key,
    required this.vendor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Theme.of(context).colorScheme.surfaceContainerHighest,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
        onTap: () {
          context.pushNamed(
            VendorDetailPage.routeName,
            extra: vendor,
          );
        },
        borderRadius: BorderRadius.circular(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Cover Image
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(16),
                  ),
                  child: vendor.coverPhotoUrl.isNotEmpty
                      ? Image.network(
                          vendor.coverPhotoUrl,
                          height: 140,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) =>
                              _buildPlaceholderImage(context),
                        )
                      : _buildPlaceholderImage(context),
                ),
                // Status badge
                if (!vendor.isOpen)
                  Positioned(
                    top: 12,
                    right: 12,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.errorContainer,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        'Closed',
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                              color: Theme.of(context).colorScheme.onErrorContainer,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ),
              ],
            ),

            // Content
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Vendor name and rating
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          vendor.name,
                          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.tertiaryContainer,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.star,
                              size: 16,
                              color: Theme.of(context).colorScheme.onTertiaryContainer,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              vendor.rating.toStringAsFixed(1),
                              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                                    color: Theme.of(context).colorScheme.onTertiaryContainer,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),

                  // Cuisine types
                  if (vendor.cuisineTypes.isNotEmpty)
                    Wrap(
                      spacing: 6,
                      runSpacing: 6,
                      children: vendor.cuisineTypes.take(3).map((cuisine) {
                        return Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primaryContainer,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Text(
                            cuisine,
                            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                                ),
                          ),
                        );
                      }).toList(),
                    ),
                  const SizedBox(height: 12),

                  // Distance and other info
                  Row(
                    children: [
                      if (vendor.distance != null) ...[
                        Icon(
                          Icons.location_on,
                          size: 16,
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          '${vendor.distance!.toStringAsFixed(1)} km',
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                color: Theme.of(context).colorScheme.onSurfaceVariant,
                              ),
                        ),
                        const SizedBox(width: 16),
                      ],
                      Icon(
                        Icons.restaurant_menu,
                        size: 16,
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        'Weekly menu available',
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
    );
  }

  Widget _buildPlaceholderImage(BuildContext context) {
    return Container(
      height: 140,
      width: double.infinity,
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
      child: Center(
        child: Icon(
          Icons.restaurant,
          size: 48,
          color: Theme.of(context).colorScheme.onPrimaryContainer.withValues(alpha: 0.5),
        ),
      ),
    );
  }
}
