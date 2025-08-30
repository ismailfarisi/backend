import 'package:flutter/material.dart';

import '../../../models/vendor.dart';

/// Dialog for selecting multiple vendors (1-4) for weekly split subscription
///
/// This dialog allows users to select between 1-4 vendors and assign them to specific weeks
/// in a monthly subscription. It provides a user-friendly interface for multi-vendor selection.
class VendorSelectionDialog extends StatefulWidget {
  /// List of available vendors to choose from
  final List<Vendor> availableVendors;

  /// Currently selected vendors with their week assignments
  final Map<int, Vendor> selectedVendorsByWeek;

  /// Callback when vendor selection changes
  final Function(Map<int, Vendor>) onSelectionChanged;

  /// Whether the dialog is in loading state
  final bool isLoading;

  const VendorSelectionDialog({
    Key? key,
    required this.availableVendors,
    this.selectedVendorsByWeek = const {},
    required this.onSelectionChanged,
    this.isLoading = false,
  }) : super(key: key);

  @override
  State<VendorSelectionDialog> createState() => _VendorSelectionDialogState();
}

class _VendorSelectionDialogState extends State<VendorSelectionDialog> {
  late Map<int, Vendor?> _selectedVendors;
  int _selectedWeekTab = 1;

  @override
  void initState() {
    super.initState();
    _selectedVendors = {
      1: widget.selectedVendorsByWeek[1],
      2: widget.selectedVendorsByWeek[2],
      3: widget.selectedVendorsByWeek[3],
      4: widget.selectedVendorsByWeek[4],
    };
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.8,
        child: Column(
          children: [
            _buildHeader(context),
            _buildWeekSelector(context),
            Expanded(child: _buildVendorList(context)),
            _buildFooter(context),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    final selectedCount =
        _selectedVendors.values.where((v) => v != null).length;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Row(
        children: [
          Icon(
            Icons.restaurant_menu,
            color: Colors.white,
            size: 24,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Select Vendors for Weekly Split',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Text(
                  'Choose 1-4 vendors for your monthly subscription',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.white70,
                      ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              '$selectedCount/4',
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWeekSelector(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Text(
            'Select vendor for:',
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(4, (index) {
                  final weekNumber = index + 1;
                  final isSelected = _selectedWeekTab == weekNumber;
                  final hasVendor = _selectedVendors[weekNumber] != null;

                  return Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: ChoiceChip(
                      label: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Week $weekNumber'),
                          if (hasVendor) ...[
                            const SizedBox(width: 4),
                            Icon(
                              Icons.check_circle,
                              size: 16,
                              color: isSelected
                                  ? Colors.white
                                  : Theme.of(context).primaryColor,
                            ),
                          ],
                        ],
                      ),
                      selected: isSelected,
                      onSelected: (selected) {
                        if (selected) {
                          setState(() {
                            _selectedWeekTab = weekNumber;
                          });
                        }
                      },
                      selectedColor: Theme.of(context).primaryColor,
                      backgroundColor: hasVendor
                          ? Theme.of(context).primaryColor.withOpacity(0.1)
                          : null,
                      labelStyle: TextStyle(
                        color: isSelected ? Colors.white : null,
                        fontWeight:
                            hasVendor ? FontWeight.w600 : FontWeight.normal,
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildVendorList(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            'Available Vendors',
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: widget.availableVendors.length,
            itemBuilder: (context, index) {
              final vendor = widget.availableVendors[index];
              final isSelectedForCurrentWeek =
                  _selectedVendors[_selectedWeekTab]?.id == vendor.id;
              final isSelectedForOtherWeek = _selectedVendors.values.any((v) =>
                  v?.id == vendor.id &&
                  v != _selectedVendors[_selectedWeekTab]);

              return _buildVendorCard(
                context,
                vendor,
                isSelectedForCurrentWeek,
                isSelectedForOtherWeek,
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildVendorCard(
    BuildContext context,
    Vendor vendor,
    bool isSelectedForCurrentWeek,
    bool isSelectedForOtherWeek,
  ) {
    final otherWeek = isSelectedForOtherWeek
        ? _selectedVendors.entries
            .where((entry) => entry.value?.id == vendor.id)
            .first
            .key
        : null;

    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      elevation: isSelectedForCurrentWeek ? 4 : 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: isSelectedForCurrentWeek
            ? BorderSide(color: Theme.of(context).primaryColor, width: 2)
            : BorderSide.none,
      ),
      child: InkWell(
        onTap: widget.isLoading ? null : () => _selectVendor(vendor),
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              CircleAvatar(
                radius: 20,
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
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    if (vendor.cuisineTypes.isNotEmpty)
                      Text(
                        vendor.cuisineTypes.join(', '),
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Colors.grey[600],
                            ),
                      ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 14,
                          color: Colors.amber,
                        ),
                        const SizedBox(width: 2),
                        Text(
                          vendor.rating.toStringAsFixed(1),
                          style:
                              Theme.of(context).textTheme.bodySmall?.copyWith(
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        if (vendor.distance != null) ...[
                          const SizedBox(width: 8),
                          Icon(
                            Icons.location_on,
                            size: 14,
                            color: Colors.grey[600],
                          ),
                          const SizedBox(width: 2),
                          Text(
                            '${vendor.distance!.toStringAsFixed(1)}km',
                            style:
                                Theme.of(context).textTheme.bodySmall?.copyWith(
                                      color: Colors.grey[600],
                                    ),
                          ),
                        ],
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  if (isSelectedForCurrentWeek)
                    Icon(
                      Icons.check_circle,
                      color: Theme.of(context).primaryColor,
                      size: 24,
                    )
                  else if (isSelectedForOtherWeek)
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        'Week $otherWeek',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  else
                    Icon(
                      Icons.add_circle_outline,
                      color: Colors.grey[400],
                      size: 24,
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFooter(BuildContext context) {
    final selectedCount =
        _selectedVendors.values.where((v) => v != null).length;
    final canConfirm = selectedCount > 0 && !widget.isLoading;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.grey[200]!),
        ),
      ),
      child: Column(
        children: [
          if (selectedCount > 0) _buildSelectedVendorsPreview(context),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: widget.isLoading
                      ? null
                      : () => Navigator.of(context).pop(),
                  child: const Text('Cancel'),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: ElevatedButton(
                  onPressed: canConfirm ? _confirmSelection : null,
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: widget.isLoading
                      ? const SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            valueColor:
                                AlwaysStoppedAnimation<Color>(Colors.white),
                          ),
                        )
                      : Text(
                          'Confirm Selection ($selectedCount)',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSelectedVendorsPreview(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor.withOpacity(0.05),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Theme.of(context).primaryColor.withOpacity(0.2),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Selected Vendors:',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 4,
            children: _selectedVendors.entries
                .where((entry) => entry.value != null)
                .map((entry) {
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  'Week ${entry.key}: ${entry.value!.name}',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  void _selectVendor(Vendor vendor) {
    setState(() {
      final currentSelection = _selectedVendors[_selectedWeekTab];

      if (currentSelection?.id == vendor.id) {
        // Deselect if clicking the same vendor
        _selectedVendors[_selectedWeekTab] = null;
      } else {
        // Remove vendor from other weeks if already selected
        _selectedVendors.forEach((week, selectedVendor) {
          if (selectedVendor?.id == vendor.id) {
            _selectedVendors[week] = null;
          }
        });

        // Select vendor for current week
        _selectedVendors[_selectedWeekTab] = vendor;
      }
    });
  }

  void _confirmSelection() {
    final validSelections = Map<int, Vendor>.fromEntries(
      _selectedVendors.entries.where((entry) => entry.value != null).map(
            (entry) => MapEntry(entry.key, entry.value!),
          ),
    );

    widget.onSelectionChanged(validSelections);
    Navigator.of(context).pop();
  }
}
