import 'package:meal_app/models/vendor.dart';
import 'package:meal_app/models/subscription_meal_selection.dart';
import 'package:meal_app/models/subscription_creation_request.dart';
import 'package:meal_app/models/weekly_vendor_assignment.dart';
import 'package:meal_app/models/address.dart';
import 'package:meal_app/utils/enums.dart';
import 'package:meal_app/services/subscription_validation_service.dart';
import 'package:meal_app/services/subscription_business_rules.dart';
import 'package:meal_app/services/subscription_error_handler.dart';

/// Comprehensive testing utilities for subscription system validation
///
/// Provides test scenarios, mock data, and validation methods to ensure
/// the subscription system handles all edge cases and business requirements.
class SubscriptionTestUtilities {
  /// Test comprehensive validation scenarios
  static List<TestScenario> getValidationTestScenarios() {
    return [
      // Valid scenarios
      TestScenario(
        name: 'Valid Single Vendor Subscription',
        request: _createValidSingleVendorRequest(),
        expectedValid: true,
        description:
            'Standard single vendor subscription with proper meal selections',
      ),

      TestScenario(
        name: 'Valid Multi-Vendor Subscription',
        request: _createValidMultiVendorRequest(),
        expectedValid: true,
        description: 'Multi-vendor subscription with all weeks assigned',
      ),

      // Date validation scenarios
      TestScenario(
        name: 'Past Start Date',
        request: _createRequestWithDate(
            DateTime.now().subtract(const Duration(days: 1))),
        expectedValid: false,
        expectedErrors: ['Start date must be at least 1 day in the future'],
        description: 'Should reject past start dates',
      ),

      TestScenario(
        name: 'Too Far Future Date',
        request: _createRequestWithDate(
            DateTime.now().add(const Duration(days: 120))),
        expectedValid: false,
        expectedErrors: [
          'Start date cannot be more than 3 months in the future'
        ],
        description: 'Should reject dates too far in future',
      ),

      // Vendor validation scenarios
      TestScenario(
        name: 'No Vendors Selected',
        request: _createRequestWithVendors([]),
        expectedValid: false,
        expectedErrors: ['At least one vendor must be selected'],
        description: 'Should require at least one vendor',
      ),

      TestScenario(
        name: 'Multi-Vendor Too Few Vendors',
        request: _createMultiVendorRequestWithVendors(['vendor1']),
        expectedValid: false,
        expectedErrors: [
          'Multi-vendor subscription requires at least 2 different vendors'
        ],
        description: 'Multi-vendor needs minimum 2 vendors',
      ),

      TestScenario(
        name: 'Multi-Vendor Too Many Vendors',
        request: _createMultiVendorRequestWithVendors(
            ['v1', 'v2', 'v3', 'v4', 'v5']),
        expectedValid: false,
        expectedErrors: [
          'Multi-vendor subscription supports maximum 4 vendors'
        ],
        description: 'Multi-vendor has maximum 4 vendors',
      ),

      // Address validation scenarios
      TestScenario(
        name: 'Missing Address',
        request: _createRequestWithAddress(null),
        expectedValid: false,
        expectedErrors: ['Delivery address is required'],
        description: 'Should require delivery address',
      ),

      TestScenario(
        name: 'Incomplete Address',
        request: _createRequestWithIncompleteAddress(),
        expectedValid: false,
        expectedErrors: [
          'Street address is required',
          'Emirate selection is required'
        ],
        description: 'Should validate address completeness',
      ),

      // Weekly assignment scenarios
      TestScenario(
        name: 'Missing Weekly Assignments',
        request: _createMultiVendorRequestWithoutAssignments(),
        expectedValid: false,
        expectedErrors: [
          'Weekly vendor assignments are required for multi-vendor subscriptions'
        ],
        description: 'Multi-vendor needs weekly assignments',
      ),

      TestScenario(
        name: 'Incomplete Weekly Coverage',
        request: _createMultiVendorRequestWithIncompleteWeeks([1, 2]),
        expectedValid: false,
        expectedErrors: ['Missing vendor assignments for weeks: 3, 4'],
        description: 'All 4 weeks must be covered',
      ),

      TestScenario(
        name: 'Duplicate Week Assignments',
        request: _createMultiVendorRequestWithDuplicateWeeks(),
        expectedValid: false,
        expectedErrors: ['Duplicate week assignments found'],
        description: 'Each week should be assigned once',
      ),
    ];
  }

  /// Test business rules scenarios
  static List<BusinessRuleTestScenario> getBusinessRulesTestScenarios() {
    return [
      // Pricing scenarios
      BusinessRuleTestScenario(
        name: 'Basic Single Vendor Pricing',
        subscriptionType: MonthlySubscriptionType.singleVendor,
        mealSelections: _createBasicMealSelections(),
        selectedVendorsByWeek: {},
        expectedMinCost: 400.0,
        expectedMaxCost: 800.0,
        description: 'Basic pricing for single vendor with standard meals',
      ),

      BusinessRuleTestScenario(
        name: 'Premium Multi-Vendor Pricing',
        subscriptionType: MonthlySubscriptionType.multiVendorWeeklySplit,
        mealSelections: [],
        selectedVendorsByWeek: _createPremiumVendorSelection(),
        expectedMinCost: 600.0,
        expectedMaxCost: 1200.0,
        description: 'Premium pricing with multi-vendor selection',
      ),

      BusinessRuleTestScenario(
        name: 'Loyalty Customer Discount',
        subscriptionType: MonthlySubscriptionType.singleVendor,
        mealSelections: _createBasicMealSelections(),
        selectedVendorsByWeek: {},
        isLoyalCustomer: true,
        expectedDiscountPercent: 10.0,
        description: 'Loyal customer should receive discount',
      ),

      BusinessRuleTestScenario(
        name: 'Bulk Meal Discount',
        subscriptionType: MonthlySubscriptionType.singleVendor,
        mealSelections: _createBulkMealSelections(), // 20+ meals
        selectedVendorsByWeek: {},
        expectedDiscountPercent: 5.0,
        description: 'Bulk meals should trigger discount',
      ),
    ];
  }

  /// Test error handling scenarios
  static List<ErrorHandlingTestScenario> getErrorHandlingTestScenarios() {
    return [
      ErrorHandlingTestScenario(
        name: 'Network Failure',
        errorType: NetworkException('Connection timeout'),
        expectedErrorType: SubscriptionErrorType.network,
        expectedCanRetry: true,
        expectedSeverity: ErrorSeverity.error,
      ),
      ErrorHandlingTestScenario(
        name: 'Payment Failure',
        errorType: PaymentException('Card declined'),
        expectedErrorType: SubscriptionErrorType.payment,
        expectedCanRetry: true,
        expectedSeverity: ErrorSeverity.error,
      ),
      ErrorHandlingTestScenario(
        name: 'Vendor Unavailable',
        errorType: VendorUnavailableException(
          vendorId: 'vendor1',
          requestedDate: DateTime.now(),
          message: 'Vendor is closed',
        ),
        expectedErrorType: SubscriptionErrorType.vendorUnavailable,
        expectedCanRetry: true,
        expectedSeverity: ErrorSeverity.warning,
      ),
      ErrorHandlingTestScenario(
        name: 'Validation Error',
        errorType: SubscriptionValidationError(
          message: 'Invalid meal selection',
          details: 'Meal not available on selected day',
          suggestions: ['Choose different meal', 'Select different day'],
        ),
        expectedErrorType: SubscriptionErrorType.validation,
        expectedCanRetry: true,
        expectedSeverity: ErrorSeverity.warning,
      ),
    ];
  }

  /// Test edge cases and boundary conditions
  static List<EdgeCaseTestScenario> getEdgeCaseTestScenarios() {
    return [
      EdgeCaseTestScenario(
        name: 'Minimum Subscription Value',
        totalAmount: 49.99, // Below minimum of 50
        expectedValid: false,
        description: 'Should enforce minimum subscription value',
      ),
      EdgeCaseTestScenario(
        name: 'Maximum Meals Per Day',
        dailyMealCount: 4, // Above maximum of 3
        expectedWarning: true,
        description: 'Should warn about excessive daily meals',
      ),
      EdgeCaseTestScenario(
        name: 'Weekend Start Date',
        startDate: _getNextSaturday(),
        expectedWarning: true,
        description: 'Should warn about weekend start dates',
      ),
      EdgeCaseTestScenario(
        name: 'Same Vendor All Weeks',
        vendorAssignment: {
          1: 'vendor1',
          2: 'vendor1',
          3: 'vendor1',
          4: 'vendor1'
        },
        subscriptionType: MonthlySubscriptionType.multiVendorWeeklySplit,
        expectedWarning: true,
        description:
            'Multi-vendor with same vendor should warn about lack of variety',
      ),
    ];
  }

  /// Run comprehensive validation tests
  static ValidationTestResults runValidationTests() {
    final scenarios = getValidationTestScenarios();
    final results = ValidationTestResults();

    for (final scenario in scenarios) {
      try {
        final validationResult =
            SubscriptionValidationService.validateSubscriptionCreation(
          scenario.request,
          availableVendors: _getMockVendors(),
          mealSelections: scenario.request.isSingleVendor
              ? _createBasicMealSelections()
              : null,
        );

        final testPassed = validationResult.isValid == scenario.expectedValid;

        if (scenario.expectedErrors.isNotEmpty) {
          final hasExpectedErrors = scenario.expectedErrors.every((error) =>
              validationResult.errors
                  .any((validationError) => validationError.contains(error)));

          if (testPassed && hasExpectedErrors) {
            results.passed.add(scenario.name);
          } else {
            results.failed.add(TestFailure(
              scenarioName: scenario.name,
              expected: 'Errors: ${scenario.expectedErrors.join(', ')}',
              actual: 'Errors: ${validationResult.errors.join(', ')}',
              description: scenario.description,
            ));
          }
        } else if (testPassed) {
          results.passed.add(scenario.name);
        } else {
          results.failed.add(TestFailure(
            scenarioName: scenario.name,
            expected: 'Valid: ${scenario.expectedValid}',
            actual: 'Valid: ${validationResult.isValid}',
            description: scenario.description,
          ));
        }

        results.total++;
      } catch (e) {
        results.failed.add(TestFailure(
          scenarioName: scenario.name,
          expected: 'No exception',
          actual: 'Exception: ${e.toString()}',
          description: scenario.description,
        ));
        results.total++;
      }
    }

    return results;
  }

  /// Generate mock data for testing
  static List<Vendor> _getMockVendors() {
    return [
      const Vendor(
        id: 'vendor1',
        name: 'Test Vendor 1',
        businessName: 'Test Business 1',
        profilePhotoUrl: 'test1.jpg',
        coverPhotoUrl: 'test1_cover.jpg',
        cuisineTypes: ['Italian'],
        rating: 4.5,
        distance: 2.0,
      ),
      const Vendor(
        id: 'vendor2',
        name: 'Test Vendor 2',
        businessName: 'Test Business 2',
        profilePhotoUrl: 'test2.jpg',
        coverPhotoUrl: 'test2_cover.jpg',
        cuisineTypes: ['Asian'],
        rating: 4.2,
        distance: 3.0,
      ),
      const Vendor(
        id: 'vendor3',
        name: 'Test Vendor 3',
        businessName: 'Test Business 3',
        profilePhotoUrl: 'test3.jpg',
        coverPhotoUrl: 'test3_cover.jpg',
        cuisineTypes: ['Mediterranean'],
        rating: 4.8,
        distance: 1.5,
      ),
      const Vendor(
        id: 'vendor4',
        name: 'Test Vendor 4',
        businessName: 'Test Business 4',
        profilePhotoUrl: 'test4.jpg',
        coverPhotoUrl: 'test4_cover.jpg',
        cuisineTypes: ['Indian'],
        rating: 4.3,
        distance: 4.0,
      ),
    ];
  }

  // Helper methods to create test scenarios
  static SubscriptionCreationRequest _createValidSingleVendorRequest() {
    return SubscriptionCreationRequest(
      subscriptionType: MonthlySubscriptionType.singleVendor,
      vendorIds: ['vendor1'],
      startDate: DateTime.now().add(const Duration(days: 3)),
      deliveryAddress: _createValidAddress(),
    );
  }

  static SubscriptionCreationRequest _createValidMultiVendorRequest() {
    final startDate = DateTime.now().add(const Duration(days: 3));
    return SubscriptionCreationRequest(
      subscriptionType: MonthlySubscriptionType.multiVendorWeeklySplit,
      vendorIds: ['vendor1', 'vendor2', 'vendor3', 'vendor4'],
      weeklyAssignments: [
        WeeklyVendorAssignment(
          weekNumber: 1,
          vendorId: 'vendor1',
          weekStartDate: startDate,
          weekEndDate: startDate.add(const Duration(days: 6)),
        ),
        WeeklyVendorAssignment(
          weekNumber: 2,
          vendorId: 'vendor2',
          weekStartDate: startDate.add(const Duration(days: 7)),
          weekEndDate: startDate.add(const Duration(days: 13)),
        ),
        WeeklyVendorAssignment(
          weekNumber: 3,
          vendorId: 'vendor3',
          weekStartDate: startDate.add(const Duration(days: 14)),
          weekEndDate: startDate.add(const Duration(days: 20)),
        ),
        WeeklyVendorAssignment(
          weekNumber: 4,
          vendorId: 'vendor4',
          weekStartDate: startDate.add(const Duration(days: 21)),
          weekEndDate: startDate.add(const Duration(days: 27)),
        ),
      ],
      startDate: startDate,
      deliveryAddress: _createValidAddress(),
    );
  }

  static DeliveryAddress _createValidAddress() {
    return const DeliveryAddress(
      id: 'test-address',
      fullAddress: 'Test Street, Dubai, UAE',
      street: 'Test Street',
      apartment: 'Apt 123',
      emirate: 'Dubai',
      coordinates: LatLng(latitude: 25.2048, longitude: 55.2708),
    );
  }

  static SubscriptionCreationRequest _createRequestWithDate(DateTime date) {
    return SubscriptionCreationRequest(
      subscriptionType: MonthlySubscriptionType.singleVendor,
      vendorIds: ['vendor1'],
      startDate: date,
      deliveryAddress: _createValidAddress(),
    );
  }

  static SubscriptionCreationRequest _createRequestWithVendors(
      List<String> vendorIds) {
    return SubscriptionCreationRequest(
      subscriptionType: MonthlySubscriptionType.singleVendor,
      vendorIds: vendorIds,
      startDate: DateTime.now().add(const Duration(days: 3)),
      deliveryAddress: _createValidAddress(),
    );
  }

  static SubscriptionCreationRequest _createRequestWithAddress(
      DeliveryAddress? address) {
    return SubscriptionCreationRequest(
      subscriptionType: MonthlySubscriptionType.singleVendor,
      vendorIds: ['vendor1'],
      startDate: DateTime.now().add(const Duration(days: 3)),
      deliveryAddress: address ?? _createValidAddress(),
    );
  }

  static SubscriptionCreationRequest _createRequestWithIncompleteAddress() {
    return SubscriptionCreationRequest(
      subscriptionType: MonthlySubscriptionType.singleVendor,
      vendorIds: ['vendor1'],
      startDate: DateTime.now().add(const Duration(days: 3)),
      deliveryAddress: const DeliveryAddress(
        id: 'incomplete',
        fullAddress: '',
        street: '',
        apartment: '',
        emirate: '',
        coordinates: LatLng(latitude: 0.0, longitude: 0.0),
      ),
    );
  }

  static List<SubscriptionMealSelection> _createBasicMealSelections() {
    return [
      const SubscriptionMealSelection(
        menuItemId: 'meal1',
        dayOfWeek: 'Monday',
        quantity: 1,
      ),
      const SubscriptionMealSelection(
        menuItemId: 'meal2',
        dayOfWeek: 'Tuesday',
        quantity: 1,
      ),
      const SubscriptionMealSelection(
        menuItemId: 'meal3',
        dayOfWeek: 'Wednesday',
        quantity: 1,
      ),
    ];
  }

  static List<SubscriptionMealSelection> _createBulkMealSelections() {
    final meals = <SubscriptionMealSelection>[];
    final days = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday'];

    for (int i = 0; i < days.length; i++) {
      for (int j = 0; j < 5; j++) {
        // 5 meals per day = 25 total
        meals.add(SubscriptionMealSelection(
          menuItemId: 'meal$i$j',
          dayOfWeek: days[i],
          quantity: 1,
        ));
      }
    }

    return meals;
  }

  static Map<int, Vendor> _createPremiumVendorSelection() {
    final vendors = _getMockVendors();
    return {
      1: vendors[0], // High rating
      2: vendors[2], // Highest rating
      3: vendors[1], // Medium rating
      4: vendors[3], // Good rating
    };
  }

  static DateTime _getNextSaturday() {
    final now = DateTime.now();
    final daysUntilSaturday = (DateTime.saturday - now.weekday) % 7;
    return now
        .add(Duration(days: daysUntilSaturday == 0 ? 7 : daysUntilSaturday));
  }

  // Additional helper methods for complex scenarios...
  static SubscriptionCreationRequest _createMultiVendorRequestWithVendors(
      List<String> vendorIds) {
    return SubscriptionCreationRequest(
      subscriptionType: MonthlySubscriptionType.multiVendorWeeklySplit,
      vendorIds: vendorIds,
      startDate: DateTime.now().add(const Duration(days: 3)),
      deliveryAddress: _createValidAddress(),
      weeklyAssignments: vendorIds.length >= 4 ? [] : null,
    );
  }

  static SubscriptionCreationRequest
      _createMultiVendorRequestWithoutAssignments() {
    return SubscriptionCreationRequest(
      subscriptionType: MonthlySubscriptionType.multiVendorWeeklySplit,
      vendorIds: ['vendor1', 'vendor2'],
      startDate: DateTime.now().add(const Duration(days: 3)),
      deliveryAddress: _createValidAddress(),
    );
  }

  static SubscriptionCreationRequest
      _createMultiVendorRequestWithIncompleteWeeks(List<int> weeks) {
    final startDate = DateTime.now().add(const Duration(days: 3));
    final assignments = weeks
        .map((week) => WeeklyVendorAssignment(
              weekNumber: week,
              vendorId: 'vendor$week',
              weekStartDate: startDate.add(Duration(days: (week - 1) * 7)),
              weekEndDate: startDate.add(Duration(days: (week - 1) * 7 + 6)),
            ))
        .toList();

    return SubscriptionCreationRequest(
      subscriptionType: MonthlySubscriptionType.multiVendorWeeklySplit,
      vendorIds: weeks.map((week) => 'vendor$week').toList(),
      weeklyAssignments: assignments,
      startDate: startDate,
      deliveryAddress: _createValidAddress(),
    );
  }

  static SubscriptionCreationRequest
      _createMultiVendorRequestWithDuplicateWeeks() {
    final startDate = DateTime.now().add(const Duration(days: 3));
    return SubscriptionCreationRequest(
      subscriptionType: MonthlySubscriptionType.multiVendorWeeklySplit,
      vendorIds: ['vendor1', 'vendor2'],
      weeklyAssignments: [
        WeeklyVendorAssignment(
          weekNumber: 1,
          vendorId: 'vendor1',
          weekStartDate: startDate,
          weekEndDate: startDate.add(const Duration(days: 6)),
        ),
        WeeklyVendorAssignment(
          weekNumber: 1, // Duplicate week
          vendorId: 'vendor2',
          weekStartDate: startDate,
          weekEndDate: startDate.add(const Duration(days: 6)),
        ),
      ],
      startDate: startDate,
      deliveryAddress: _createValidAddress(),
    );
  }
}

/// Test scenario data classes
class TestScenario {
  final String name;
  final SubscriptionCreationRequest request;
  final bool expectedValid;
  final List<String> expectedErrors;
  final String description;

  const TestScenario({
    required this.name,
    required this.request,
    required this.expectedValid,
    this.expectedErrors = const [],
    required this.description,
  });
}

class BusinessRuleTestScenario {
  final String name;
  final MonthlySubscriptionType subscriptionType;
  final List<SubscriptionMealSelection> mealSelections;
  final Map<int, Vendor> selectedVendorsByWeek;
  final double? expectedMinCost;
  final double? expectedMaxCost;
  final double? expectedDiscountPercent;
  final bool isLoyalCustomer;
  final String description;

  const BusinessRuleTestScenario({
    required this.name,
    required this.subscriptionType,
    required this.mealSelections,
    required this.selectedVendorsByWeek,
    this.expectedMinCost,
    this.expectedMaxCost,
    this.expectedDiscountPercent,
    this.isLoyalCustomer = false,
    required this.description,
  });
}

class ErrorHandlingTestScenario {
  final String name;
  final dynamic errorType;
  final SubscriptionErrorType expectedErrorType;
  final bool expectedCanRetry;
  final ErrorSeverity expectedSeverity;

  const ErrorHandlingTestScenario({
    required this.name,
    required this.errorType,
    required this.expectedErrorType,
    required this.expectedCanRetry,
    required this.expectedSeverity,
  });
}

class EdgeCaseTestScenario {
  final String name;
  final double? totalAmount;
  final int? dailyMealCount;
  final DateTime? startDate;
  final Map<int, String>? vendorAssignment;
  final MonthlySubscriptionType? subscriptionType;
  final bool expectedValid;
  final bool expectedWarning;
  final String description;

  const EdgeCaseTestScenario({
    required this.name,
    this.totalAmount,
    this.dailyMealCount,
    this.startDate,
    this.vendorAssignment,
    this.subscriptionType,
    this.expectedValid = true,
    this.expectedWarning = false,
    required this.description,
  });
}

/// Test results data classes
class ValidationTestResults {
  final List<String> passed = [];
  final List<TestFailure> failed = [];
  int total = 0;

  double get successRate => total > 0 ? (passed.length / total) * 100 : 0;
  bool get allPassed => failed.isEmpty && total > 0;

  String get summary =>
      'Tests: $total, Passed: ${passed.length}, Failed: ${failed.length}, Success Rate: ${successRate.toStringAsFixed(1)}%';
}

class TestFailure {
  final String scenarioName;
  final String expected;
  final String actual;
  final String description;

  const TestFailure({
    required this.scenarioName,
    required this.expected,
    required this.actual,
    required this.description,
  });

  @override
  String toString() =>
      '$scenarioName: Expected "$expected", got "$actual" - $description';
}
