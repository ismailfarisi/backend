import '../../../models/subscription.dart';
import '../../../models/vendor_menu.dart';

class MockSubscriptionData {
  static final List<VendorMenu> breakfastVendors = [
    const VendorMenu(
      vendorId: 'v1',
      mealType: MealType.breakfast,
      description: 'South Indian Breakfast Specialists',
      price: 80.0,
      sampleMenuItems: [
        'Idli',
        'Dosa',
        'Poha',
        'Upma',
      ],
    ),
    const VendorMenu(
      vendorId: 'v2',
      mealType: MealType.breakfast,
      description: 'Nutritious Morning Meals',
      price: 100.0,
      sampleMenuItems: [
        'Oatmeal',
        'Fruit Bowl',
        'Smoothies',
        'Egg White Omelette',
      ],
    ),
    const VendorMenu(
      vendorId: 'v3',
      mealType: MealType.breakfast,
      description: 'Traditional North Indian Breakfast',
      price: 90.0,
      sampleMenuItems: [
        'Paratha',
        'Chole Bhature',
        'Puri Sabji',
        'Aloo Paratha',
      ],
    ),
  ];

  static final List<VendorMenu> lunchVendors = [
    const VendorMenu(
      vendorId: 'v4',
      mealType: MealType.lunch,
      description: 'Home Style Meals',
      price: 120.0,
      sampleMenuItems: [
        'Dal Rice',
        'Roti Sabji',
        'Pulao',
        'Curry Rice',
      ],
    ),
    const VendorMenu(
      vendorId: 'v5',
      mealType: MealType.lunch,
      description: 'Professional Lunch Services',
      price: 150.0,
      sampleMenuItems: [
        'Executive Thali',
        'Diet Meals',
        'Premium Thali',
        'Mini Meals',
      ],
    ),
    const VendorMenu(
      vendorId: 'v6',
      mealType: MealType.lunch,
      description: 'Vegetarian Specialties',
      price: 130.0,
      sampleMenuItems: [
        'Veg Thali',
        'Salad Bowl',
        'Protein Bowl',
        'Rice Bowl',
      ],
    ),
  ];

  static final List<VendorMenu> dinnerVendors = [
    const VendorMenu(
      vendorId: 'v7',
      mealType: MealType.dinner,
      description: 'Light Dinner Options',
      price: 140.0,
      sampleMenuItems: [
        'Khichdi',
        'Soup & Bread',
        'Grilled Veggies',
        'Rice & Curry',
      ],
    ),
    const VendorMenu(
      vendorId: 'v8',
      mealType: MealType.dinner,
      description: 'Complete Family Meals',
      price: 160.0,
      sampleMenuItems: [
        'Family Pack Meals',
        'Special Thali',
        'Diet Dinner',
        'Party Pack',
      ],
    ),
    const VendorMenu(
      vendorId: 'v9',
      mealType: MealType.dinner,
      description: 'Nutritious Evening Meals',
      price: 130.0,
      sampleMenuItems: [
        'Low Carb Meals',
        'High Protein Dinner',
        'Keto Friendly',
        'Weight Loss Special',
      ],
    ),
  ];

  static Map<MealType, List<VendorMenu>> get vendorsByMealType => {
        MealType.breakfast: breakfastVendors,
        MealType.lunch: lunchVendors,
        MealType.dinner: dinnerVendors,
      };
}
