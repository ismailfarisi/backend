import 'package:flutter/material.dart';

import '../../../models/vendor.dart';

/// Displays vendor information including name, rating, cuisine types, address, and other details
///
/// This component shows the key information about a vendor at the top of the vendor detail page.
/// It includes the vendor's profile image, name, business name, rating, cuisine types, and contact details.
class VendorInfoSection extends StatelessWidget {
  /// The vendor whose information will be displayed
  final Vendor vendor;

  /// Whether to show a compact version with less details
  final bool isCompact;

  /// Callback when the info button is pressed
  final VoidCallback? onInfoPressed;

  const VendorInfoSection({
    Key? key,
    required this.vendor,
    this.isCompact = false,
    this.onInfoPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(context),
            if (!isCompact) ...[
              const SizedBox(height: 12),
              _buildRatingAndStatus(context),
              const SizedBox(height: 12),
              _buildCuisineTypes(context),
              if (vendor.address != null) ...[
                const SizedBox(height: 8),
                _buildAddress(context),
              ],
              if (vendor.phone != null) ...[
                const SizedBox(height: 8),
                _buildPhone(context),
              ],
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: isCompact ? 20 : 30,
          backgroundImage: NetworkImage(vendor.profilePhotoUrl),
          backgroundColor: Colors.grey[200],
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                vendor.name,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              if (vendor.businessName != vendor.name)
                Text(
                  vendor.businessName,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.grey[600],
                      ),
                ),
            ],
          ),
        ),
        if (onInfoPressed != null)
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: onInfoPressed,
          ),
      ],
    );
  }

  Widget _buildRatingAndStatus(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          color: Colors.amber,
          size: 20,
        ),
        const SizedBox(width: 4),
        Text(
          vendor.rating.toStringAsFixed(1),
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
        ),
        Text(
          ' (${vendor.totalRatings} reviews)',
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Colors.grey[600],
              ),
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: vendor.isOpen ? Colors.green : Colors.red,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            vendor.isOpen ? 'Open' : 'Closed',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCuisineTypes(BuildContext context) {
    if (vendor.cuisineTypes.isEmpty) return const SizedBox.shrink();

    return Wrap(
      spacing: 8,
      runSpacing: 4,
      children: vendor.cuisineTypes.map((cuisine) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            cuisine,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w500,
                ),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildAddress(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.location_on_outlined,
          size: 16,
          color: Colors.grey[600],
        ),
        const SizedBox(width: 4),
        Expanded(
          child: Text(
            vendor.address!,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Colors.grey[600],
                ),
          ),
        ),
        if (vendor.distance != null) ...[
          const SizedBox(width: 8),
          Text(
            '${vendor.distance!.toStringAsFixed(1)} km',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w500,
                ),
          ),
        ],
      ],
    );
  }

  Widget _buildPhone(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.phone_outlined,
          size: 16,
          color: Colors.grey[600],
        ),
        const SizedBox(width: 4),
        Text(
          vendor.phone!,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Colors.grey[600],
              ),
        ),
      ],
    );
  }
}
