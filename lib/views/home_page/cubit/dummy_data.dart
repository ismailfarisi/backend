import '../../../models/menu_item.dart';
import '../../../models/subscription.dart';
import '../../../models/vendor.dart';

class DummyData {
  static final List<Vendor> vendors = [
    const Vendor(
      id: 'v1',
      name: 'Morning Glory',
      description: 'Authentic South Indian breakfast and meals',
      rating: 4.5,
      totalRatings: 128,
      imageUrl: 'assets/images/vendors/morning_glory.jpg',
      specialities: [
        'South Indian Thali',
        'Masala Dosa',
        'Filter Coffee',
        'Idli Sambhar'
      ],
      availableMealTypes: [MealType.breakfast, MealType.lunch],
      mealPrices: {
        MealType.breakfast: 80.0,
        MealType.lunch: 120.0,
      },
    ),
    const Vendor(
      id: 'v2',
      name: 'Healthy Bites',
      description: 'Nutritious and balanced meals for health conscious',
      rating: 4.3,
      totalRatings: 95,
      imageUrl: 'assets/images/vendors/healthy_bites.jpg',
      specialities: [
        'Quinoa Bowl',
        'Protein Pack',
        'Green Salad',
        'Smoothie Bowl'
      ],
      availableMealTypes: [MealType.breakfast, MealType.lunch, MealType.dinner],
      mealPrices: {
        MealType.breakfast: 100.0,
        MealType.lunch: 150.0,
        MealType.dinner: 130.0,
      },
    ),
    const Vendor(
      id: 'v3',
      name: 'Spice Kitchen',
      description: 'Traditional North Indian cuisine with authentic spices',
      rating: 4.7,
      totalRatings: 156,
      imageUrl: 'assets/images/vendors/spice_kitchen.jpg',
      specialities: ['Butter Chicken', 'Dal Makhani', 'Naan', 'Biryani'],
      availableMealTypes: [MealType.lunch, MealType.dinner],
      mealPrices: {
        MealType.lunch: 160.0,
        MealType.dinner: 180.0,
      },
    ),
    const Vendor(
      id: 'v4',
      name: 'Fresh & Fast',
      description: 'Quick and fresh meals for busy professionals',
      rating: 4.2,
      totalRatings: 82,
      imageUrl: 'assets/images/vendors/fresh_fast.jpg',
      specialities: ['Sandwich Box', 'Salad Bowl', 'Wrap Box', 'Fruit Bowl'],
      availableMealTypes: [MealType.breakfast, MealType.lunch],
      mealPrices: {
        MealType.breakfast: 90.0,
        MealType.lunch: 130.0,
      },
    ),
  ];

  static final List<MenuItem> todayMenu = [
    MenuItem(
      id: 'm1',
      name: 'South Indian Thali',
      vendor: vendors[0],
      type: MealType.lunch,
      price: vendors[0].mealPrices[MealType.lunch]!,
    ),
    MenuItem(
      id: 'm2',
      name: 'Healthy Bowl',
      vendor: vendors[1],
      type: MealType.lunch,
      price: vendors[1].mealPrices[MealType.lunch]!,
    ),
    MenuItem(
      id: 'm3',
      name: 'Butter Chicken Combo',
      vendor: vendors[2],
      type: MealType.dinner,
      price: vendors[2].mealPrices[MealType.dinner]!,
    ),
    MenuItem(
      id: 'm4',
      name: 'Continental Breakfast',
      vendor: vendors[3],
      type: MealType.breakfast,
      price: vendors[3].mealPrices[MealType.breakfast]!,
    ),
  ];
}
