// import 'package:flutter/material.dart';

// import '../../../models/subscription.dart';
// import '../../../models/vendor_menu.dart';

// class VendorSelectionTab extends StatelessWidget {
//   final MealType mealType;
//   final List<String> selectedVendors;
//   final List<VendorMenu> availableVendors;
//   final Function(String) onVendorToggle;

//   const VendorSelectionTab({
//     super.key,
//     required this.mealType,
//     required this.selectedVendors,
//     required this.availableVendors,
//     required this.onVendorToggle,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       padding: const EdgeInsets.all(16),
//       itemCount: availableVendors.length,
//       itemBuilder: (context, index) {
//         final vendor = availableVendors[index];
//         final isSelected = selectedVendors.contains(vendor.vendorId);

//         return Card(
//           elevation: isSelected ? 2 : 0,
//           margin: const EdgeInsets.only(bottom: 16),
//           child: InkWell(
//             onTap: () => onVendorToggle(vendor.vendorId),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 ListTile(
//                   title: Row(
//                     children: [
//                       Expanded(
//                         child: Text(
//                           "vendor.name",
//                           style: Theme.of(context).textTheme.titleLarge,
//                         ),
//                       ),
//                       if (isSelected)
//                         Icon(
//                           Icons.check_circle,
//                           color: Theme.of(context).colorScheme.primary,
//                         ),
//                     ],
//                   ),
//                   subtitle: Text(vendor.description),
//                   trailing: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.end,
//                     children: [
//                       Text(
//                         'AED${vendor.price.toStringAsFixed(0)}/meal',
//                         style: Theme.of(context).textTheme.titleMedium,
//                       ),
//                       Row(
//                         mainAxisSize: MainAxisSize.min,
//                         children: [
//                           Icon(
//                             Icons.star,
//                             size: 16,
//                             color: Colors.amber,
//                           ),
//                           Text(' ${4.2}'),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//                 if (vendor.sampleMenuItems.isNotEmpty) ...[
//                   const Divider(),
//                   Padding(
//                     padding: const EdgeInsets.all(16.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Sample Menu Items',
//                           style: Theme.of(context).textTheme.titleMedium,
//                         ),
//                         const SizedBox(height: 8),
//                         Wrap(
//                           spacing: 8,
//                           runSpacing: 8,
//                           children: vendor.sampleMenuItems.map((item) {
//                             return Chip(
//                               label: Text(item),
//                               backgroundColor:
//                                   Theme.of(context).colorScheme.surfaceVariant,
//                             );
//                           }).toList(),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
