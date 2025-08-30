// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vendor_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VendorDetailState {
  Vendor get vendor;
  WeeklyMenu? get weeklyMenu;
  AppStatus get status;
  AppStatus get menuStatus;
  String? get errorMessage;
  int get selectedDayIndex;
  MenuItem? get selectedMenuItem; // Subscription-related fields
  DateTime? get selectedSubscriptionStartDate;
  List<SubscriptionMealSelection> get selectedMeals;
  double get subscriptionCost;
  bool get isCreatingSubscription;
  String? get subscriptionError;
  bool
      get subscriptionCreatedSuccessfully; // Enhanced validation and pricing fields
  List<String> get validationWarnings;
  SubscriptionPricingResult?
      get pricingDetails; // Multi-vendor subscription fields
  List<Vendor> get availableVendors;
  Map<int, Vendor> get selectedVendorsByWeek;
  List<WeeklyVendorAssignment> get weeklyAssignments;
  double get multiVendorCost;
  Map<int, double> get weeklyVendorCosts;
  MonthlySubscriptionType get currentSubscriptionType;
  AppStatus get vendorLoadingStatus; // Enhanced state management fields
  AppStatus get validationStatus;
  AppStatus get pricingStatus;

  /// Create a copy of VendorDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VendorDetailStateCopyWith<VendorDetailState> get copyWith =>
      _$VendorDetailStateCopyWithImpl<VendorDetailState>(
          this as VendorDetailState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VendorDetailState &&
            (identical(other.vendor, vendor) || other.vendor == vendor) &&
            (identical(other.weeklyMenu, weeklyMenu) ||
                other.weeklyMenu == weeklyMenu) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.menuStatus, menuStatus) ||
                other.menuStatus == menuStatus) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.selectedDayIndex, selectedDayIndex) ||
                other.selectedDayIndex == selectedDayIndex) &&
            (identical(other.selectedMenuItem, selectedMenuItem) ||
                other.selectedMenuItem == selectedMenuItem) &&
            (identical(other.selectedSubscriptionStartDate,
                    selectedSubscriptionStartDate) ||
                other.selectedSubscriptionStartDate ==
                    selectedSubscriptionStartDate) &&
            const DeepCollectionEquality()
                .equals(other.selectedMeals, selectedMeals) &&
            (identical(other.subscriptionCost, subscriptionCost) ||
                other.subscriptionCost == subscriptionCost) &&
            (identical(other.isCreatingSubscription, isCreatingSubscription) ||
                other.isCreatingSubscription == isCreatingSubscription) &&
            (identical(other.subscriptionError, subscriptionError) ||
                other.subscriptionError == subscriptionError) &&
            (identical(other.subscriptionCreatedSuccessfully,
                    subscriptionCreatedSuccessfully) ||
                other.subscriptionCreatedSuccessfully ==
                    subscriptionCreatedSuccessfully) &&
            const DeepCollectionEquality()
                .equals(other.validationWarnings, validationWarnings) &&
            (identical(other.pricingDetails, pricingDetails) ||
                other.pricingDetails == pricingDetails) &&
            const DeepCollectionEquality()
                .equals(other.availableVendors, availableVendors) &&
            const DeepCollectionEquality()
                .equals(other.selectedVendorsByWeek, selectedVendorsByWeek) &&
            const DeepCollectionEquality()
                .equals(other.weeklyAssignments, weeklyAssignments) &&
            (identical(other.multiVendorCost, multiVendorCost) ||
                other.multiVendorCost == multiVendorCost) &&
            const DeepCollectionEquality()
                .equals(other.weeklyVendorCosts, weeklyVendorCosts) &&
            (identical(
                    other.currentSubscriptionType, currentSubscriptionType) ||
                other.currentSubscriptionType == currentSubscriptionType) &&
            (identical(other.vendorLoadingStatus, vendorLoadingStatus) ||
                other.vendorLoadingStatus == vendorLoadingStatus) &&
            (identical(other.validationStatus, validationStatus) ||
                other.validationStatus == validationStatus) &&
            (identical(other.pricingStatus, pricingStatus) ||
                other.pricingStatus == pricingStatus));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        vendor,
        weeklyMenu,
        status,
        menuStatus,
        errorMessage,
        selectedDayIndex,
        selectedMenuItem,
        selectedSubscriptionStartDate,
        const DeepCollectionEquality().hash(selectedMeals),
        subscriptionCost,
        isCreatingSubscription,
        subscriptionError,
        subscriptionCreatedSuccessfully,
        const DeepCollectionEquality().hash(validationWarnings),
        pricingDetails,
        const DeepCollectionEquality().hash(availableVendors),
        const DeepCollectionEquality().hash(selectedVendorsByWeek),
        const DeepCollectionEquality().hash(weeklyAssignments),
        multiVendorCost,
        const DeepCollectionEquality().hash(weeklyVendorCosts),
        currentSubscriptionType,
        vendorLoadingStatus,
        validationStatus,
        pricingStatus
      ]);

  @override
  String toString() {
    return 'VendorDetailState(vendor: $vendor, weeklyMenu: $weeklyMenu, status: $status, menuStatus: $menuStatus, errorMessage: $errorMessage, selectedDayIndex: $selectedDayIndex, selectedMenuItem: $selectedMenuItem, selectedSubscriptionStartDate: $selectedSubscriptionStartDate, selectedMeals: $selectedMeals, subscriptionCost: $subscriptionCost, isCreatingSubscription: $isCreatingSubscription, subscriptionError: $subscriptionError, subscriptionCreatedSuccessfully: $subscriptionCreatedSuccessfully, validationWarnings: $validationWarnings, pricingDetails: $pricingDetails, availableVendors: $availableVendors, selectedVendorsByWeek: $selectedVendorsByWeek, weeklyAssignments: $weeklyAssignments, multiVendorCost: $multiVendorCost, weeklyVendorCosts: $weeklyVendorCosts, currentSubscriptionType: $currentSubscriptionType, vendorLoadingStatus: $vendorLoadingStatus, validationStatus: $validationStatus, pricingStatus: $pricingStatus)';
  }
}

/// @nodoc
abstract mixin class $VendorDetailStateCopyWith<$Res> {
  factory $VendorDetailStateCopyWith(
          VendorDetailState value, $Res Function(VendorDetailState) _then) =
      _$VendorDetailStateCopyWithImpl;
  @useResult
  $Res call(
      {Vendor vendor,
      WeeklyMenu? weeklyMenu,
      AppStatus status,
      AppStatus menuStatus,
      String? errorMessage,
      int selectedDayIndex,
      MenuItem? selectedMenuItem,
      DateTime? selectedSubscriptionStartDate,
      List<SubscriptionMealSelection> selectedMeals,
      double subscriptionCost,
      bool isCreatingSubscription,
      String? subscriptionError,
      bool subscriptionCreatedSuccessfully,
      List<String> validationWarnings,
      SubscriptionPricingResult? pricingDetails,
      List<Vendor> availableVendors,
      Map<int, Vendor> selectedVendorsByWeek,
      List<WeeklyVendorAssignment> weeklyAssignments,
      double multiVendorCost,
      Map<int, double> weeklyVendorCosts,
      MonthlySubscriptionType currentSubscriptionType,
      AppStatus vendorLoadingStatus,
      AppStatus validationStatus,
      AppStatus pricingStatus});

  $VendorCopyWith<$Res> get vendor;
  $WeeklyMenuCopyWith<$Res>? get weeklyMenu;
  $MenuItemCopyWith<$Res>? get selectedMenuItem;
}

/// @nodoc
class _$VendorDetailStateCopyWithImpl<$Res>
    implements $VendorDetailStateCopyWith<$Res> {
  _$VendorDetailStateCopyWithImpl(this._self, this._then);

  final VendorDetailState _self;
  final $Res Function(VendorDetailState) _then;

  /// Create a copy of VendorDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vendor = null,
    Object? weeklyMenu = freezed,
    Object? status = null,
    Object? menuStatus = null,
    Object? errorMessage = freezed,
    Object? selectedDayIndex = null,
    Object? selectedMenuItem = freezed,
    Object? selectedSubscriptionStartDate = freezed,
    Object? selectedMeals = null,
    Object? subscriptionCost = null,
    Object? isCreatingSubscription = null,
    Object? subscriptionError = freezed,
    Object? subscriptionCreatedSuccessfully = null,
    Object? validationWarnings = null,
    Object? pricingDetails = freezed,
    Object? availableVendors = null,
    Object? selectedVendorsByWeek = null,
    Object? weeklyAssignments = null,
    Object? multiVendorCost = null,
    Object? weeklyVendorCosts = null,
    Object? currentSubscriptionType = null,
    Object? vendorLoadingStatus = null,
    Object? validationStatus = null,
    Object? pricingStatus = null,
  }) {
    return _then(_self.copyWith(
      vendor: null == vendor
          ? _self.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as Vendor,
      weeklyMenu: freezed == weeklyMenu
          ? _self.weeklyMenu
          : weeklyMenu // ignore: cast_nullable_to_non_nullable
              as WeeklyMenu?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      menuStatus: null == menuStatus
          ? _self.menuStatus
          : menuStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedDayIndex: null == selectedDayIndex
          ? _self.selectedDayIndex
          : selectedDayIndex // ignore: cast_nullable_to_non_nullable
              as int,
      selectedMenuItem: freezed == selectedMenuItem
          ? _self.selectedMenuItem
          : selectedMenuItem // ignore: cast_nullable_to_non_nullable
              as MenuItem?,
      selectedSubscriptionStartDate: freezed == selectedSubscriptionStartDate
          ? _self.selectedSubscriptionStartDate
          : selectedSubscriptionStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      selectedMeals: null == selectedMeals
          ? _self.selectedMeals
          : selectedMeals // ignore: cast_nullable_to_non_nullable
              as List<SubscriptionMealSelection>,
      subscriptionCost: null == subscriptionCost
          ? _self.subscriptionCost
          : subscriptionCost // ignore: cast_nullable_to_non_nullable
              as double,
      isCreatingSubscription: null == isCreatingSubscription
          ? _self.isCreatingSubscription
          : isCreatingSubscription // ignore: cast_nullable_to_non_nullable
              as bool,
      subscriptionError: freezed == subscriptionError
          ? _self.subscriptionError
          : subscriptionError // ignore: cast_nullable_to_non_nullable
              as String?,
      subscriptionCreatedSuccessfully: null == subscriptionCreatedSuccessfully
          ? _self.subscriptionCreatedSuccessfully
          : subscriptionCreatedSuccessfully // ignore: cast_nullable_to_non_nullable
              as bool,
      validationWarnings: null == validationWarnings
          ? _self.validationWarnings
          : validationWarnings // ignore: cast_nullable_to_non_nullable
              as List<String>,
      pricingDetails: freezed == pricingDetails
          ? _self.pricingDetails
          : pricingDetails // ignore: cast_nullable_to_non_nullable
              as SubscriptionPricingResult?,
      availableVendors: null == availableVendors
          ? _self.availableVendors
          : availableVendors // ignore: cast_nullable_to_non_nullable
              as List<Vendor>,
      selectedVendorsByWeek: null == selectedVendorsByWeek
          ? _self.selectedVendorsByWeek
          : selectedVendorsByWeek // ignore: cast_nullable_to_non_nullable
              as Map<int, Vendor>,
      weeklyAssignments: null == weeklyAssignments
          ? _self.weeklyAssignments
          : weeklyAssignments // ignore: cast_nullable_to_non_nullable
              as List<WeeklyVendorAssignment>,
      multiVendorCost: null == multiVendorCost
          ? _self.multiVendorCost
          : multiVendorCost // ignore: cast_nullable_to_non_nullable
              as double,
      weeklyVendorCosts: null == weeklyVendorCosts
          ? _self.weeklyVendorCosts
          : weeklyVendorCosts // ignore: cast_nullable_to_non_nullable
              as Map<int, double>,
      currentSubscriptionType: null == currentSubscriptionType
          ? _self.currentSubscriptionType
          : currentSubscriptionType // ignore: cast_nullable_to_non_nullable
              as MonthlySubscriptionType,
      vendorLoadingStatus: null == vendorLoadingStatus
          ? _self.vendorLoadingStatus
          : vendorLoadingStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      validationStatus: null == validationStatus
          ? _self.validationStatus
          : validationStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      pricingStatus: null == pricingStatus
          ? _self.pricingStatus
          : pricingStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
    ));
  }

  /// Create a copy of VendorDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VendorCopyWith<$Res> get vendor {
    return $VendorCopyWith<$Res>(_self.vendor, (value) {
      return _then(_self.copyWith(vendor: value));
    });
  }

  /// Create a copy of VendorDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WeeklyMenuCopyWith<$Res>? get weeklyMenu {
    if (_self.weeklyMenu == null) {
      return null;
    }

    return $WeeklyMenuCopyWith<$Res>(_self.weeklyMenu!, (value) {
      return _then(_self.copyWith(weeklyMenu: value));
    });
  }

  /// Create a copy of VendorDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MenuItemCopyWith<$Res>? get selectedMenuItem {
    if (_self.selectedMenuItem == null) {
      return null;
    }

    return $MenuItemCopyWith<$Res>(_self.selectedMenuItem!, (value) {
      return _then(_self.copyWith(selectedMenuItem: value));
    });
  }
}

/// @nodoc

class _VendorDetailState implements VendorDetailState {
  const _VendorDetailState(
      {required this.vendor,
      this.weeklyMenu,
      this.status = AppStatus.init,
      this.menuStatus = AppStatus.init,
      this.errorMessage,
      this.selectedDayIndex = 0,
      this.selectedMenuItem,
      this.selectedSubscriptionStartDate,
      final List<SubscriptionMealSelection> selectedMeals = const [],
      this.subscriptionCost = 0.0,
      this.isCreatingSubscription = false,
      this.subscriptionError,
      this.subscriptionCreatedSuccessfully = false,
      final List<String> validationWarnings = const [],
      this.pricingDetails,
      final List<Vendor> availableVendors = const [],
      final Map<int, Vendor> selectedVendorsByWeek = const {},
      final List<WeeklyVendorAssignment> weeklyAssignments = const [],
      this.multiVendorCost = 0.0,
      final Map<int, double> weeklyVendorCosts = const {},
      this.currentSubscriptionType = MonthlySubscriptionType.singleVendor,
      this.vendorLoadingStatus = AppStatus.init,
      this.validationStatus = AppStatus.init,
      this.pricingStatus = AppStatus.init})
      : _selectedMeals = selectedMeals,
        _validationWarnings = validationWarnings,
        _availableVendors = availableVendors,
        _selectedVendorsByWeek = selectedVendorsByWeek,
        _weeklyAssignments = weeklyAssignments,
        _weeklyVendorCosts = weeklyVendorCosts;

  @override
  final Vendor vendor;
  @override
  final WeeklyMenu? weeklyMenu;
  @override
  @JsonKey()
  final AppStatus status;
  @override
  @JsonKey()
  final AppStatus menuStatus;
  @override
  final String? errorMessage;
  @override
  @JsonKey()
  final int selectedDayIndex;
  @override
  final MenuItem? selectedMenuItem;
// Subscription-related fields
  @override
  final DateTime? selectedSubscriptionStartDate;
  final List<SubscriptionMealSelection> _selectedMeals;
  @override
  @JsonKey()
  List<SubscriptionMealSelection> get selectedMeals {
    if (_selectedMeals is EqualUnmodifiableListView) return _selectedMeals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedMeals);
  }

  @override
  @JsonKey()
  final double subscriptionCost;
  @override
  @JsonKey()
  final bool isCreatingSubscription;
  @override
  final String? subscriptionError;
  @override
  @JsonKey()
  final bool subscriptionCreatedSuccessfully;
// Enhanced validation and pricing fields
  final List<String> _validationWarnings;
// Enhanced validation and pricing fields
  @override
  @JsonKey()
  List<String> get validationWarnings {
    if (_validationWarnings is EqualUnmodifiableListView)
      return _validationWarnings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_validationWarnings);
  }

  @override
  final SubscriptionPricingResult? pricingDetails;
// Multi-vendor subscription fields
  final List<Vendor> _availableVendors;
// Multi-vendor subscription fields
  @override
  @JsonKey()
  List<Vendor> get availableVendors {
    if (_availableVendors is EqualUnmodifiableListView)
      return _availableVendors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableVendors);
  }

  final Map<int, Vendor> _selectedVendorsByWeek;
  @override
  @JsonKey()
  Map<int, Vendor> get selectedVendorsByWeek {
    if (_selectedVendorsByWeek is EqualUnmodifiableMapView)
      return _selectedVendorsByWeek;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_selectedVendorsByWeek);
  }

  final List<WeeklyVendorAssignment> _weeklyAssignments;
  @override
  @JsonKey()
  List<WeeklyVendorAssignment> get weeklyAssignments {
    if (_weeklyAssignments is EqualUnmodifiableListView)
      return _weeklyAssignments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weeklyAssignments);
  }

  @override
  @JsonKey()
  final double multiVendorCost;
  final Map<int, double> _weeklyVendorCosts;
  @override
  @JsonKey()
  Map<int, double> get weeklyVendorCosts {
    if (_weeklyVendorCosts is EqualUnmodifiableMapView)
      return _weeklyVendorCosts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_weeklyVendorCosts);
  }

  @override
  @JsonKey()
  final MonthlySubscriptionType currentSubscriptionType;
  @override
  @JsonKey()
  final AppStatus vendorLoadingStatus;
// Enhanced state management fields
  @override
  @JsonKey()
  final AppStatus validationStatus;
  @override
  @JsonKey()
  final AppStatus pricingStatus;

  /// Create a copy of VendorDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VendorDetailStateCopyWith<_VendorDetailState> get copyWith =>
      __$VendorDetailStateCopyWithImpl<_VendorDetailState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VendorDetailState &&
            (identical(other.vendor, vendor) || other.vendor == vendor) &&
            (identical(other.weeklyMenu, weeklyMenu) ||
                other.weeklyMenu == weeklyMenu) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.menuStatus, menuStatus) ||
                other.menuStatus == menuStatus) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.selectedDayIndex, selectedDayIndex) ||
                other.selectedDayIndex == selectedDayIndex) &&
            (identical(other.selectedMenuItem, selectedMenuItem) ||
                other.selectedMenuItem == selectedMenuItem) &&
            (identical(other.selectedSubscriptionStartDate,
                    selectedSubscriptionStartDate) ||
                other.selectedSubscriptionStartDate ==
                    selectedSubscriptionStartDate) &&
            const DeepCollectionEquality()
                .equals(other._selectedMeals, _selectedMeals) &&
            (identical(other.subscriptionCost, subscriptionCost) ||
                other.subscriptionCost == subscriptionCost) &&
            (identical(other.isCreatingSubscription, isCreatingSubscription) ||
                other.isCreatingSubscription == isCreatingSubscription) &&
            (identical(other.subscriptionError, subscriptionError) ||
                other.subscriptionError == subscriptionError) &&
            (identical(other.subscriptionCreatedSuccessfully,
                    subscriptionCreatedSuccessfully) ||
                other.subscriptionCreatedSuccessfully ==
                    subscriptionCreatedSuccessfully) &&
            const DeepCollectionEquality()
                .equals(other._validationWarnings, _validationWarnings) &&
            (identical(other.pricingDetails, pricingDetails) ||
                other.pricingDetails == pricingDetails) &&
            const DeepCollectionEquality()
                .equals(other._availableVendors, _availableVendors) &&
            const DeepCollectionEquality()
                .equals(other._selectedVendorsByWeek, _selectedVendorsByWeek) &&
            const DeepCollectionEquality()
                .equals(other._weeklyAssignments, _weeklyAssignments) &&
            (identical(other.multiVendorCost, multiVendorCost) ||
                other.multiVendorCost == multiVendorCost) &&
            const DeepCollectionEquality()
                .equals(other._weeklyVendorCosts, _weeklyVendorCosts) &&
            (identical(
                    other.currentSubscriptionType, currentSubscriptionType) ||
                other.currentSubscriptionType == currentSubscriptionType) &&
            (identical(other.vendorLoadingStatus, vendorLoadingStatus) ||
                other.vendorLoadingStatus == vendorLoadingStatus) &&
            (identical(other.validationStatus, validationStatus) ||
                other.validationStatus == validationStatus) &&
            (identical(other.pricingStatus, pricingStatus) ||
                other.pricingStatus == pricingStatus));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        vendor,
        weeklyMenu,
        status,
        menuStatus,
        errorMessage,
        selectedDayIndex,
        selectedMenuItem,
        selectedSubscriptionStartDate,
        const DeepCollectionEquality().hash(_selectedMeals),
        subscriptionCost,
        isCreatingSubscription,
        subscriptionError,
        subscriptionCreatedSuccessfully,
        const DeepCollectionEquality().hash(_validationWarnings),
        pricingDetails,
        const DeepCollectionEquality().hash(_availableVendors),
        const DeepCollectionEquality().hash(_selectedVendorsByWeek),
        const DeepCollectionEquality().hash(_weeklyAssignments),
        multiVendorCost,
        const DeepCollectionEquality().hash(_weeklyVendorCosts),
        currentSubscriptionType,
        vendorLoadingStatus,
        validationStatus,
        pricingStatus
      ]);

  @override
  String toString() {
    return 'VendorDetailState(vendor: $vendor, weeklyMenu: $weeklyMenu, status: $status, menuStatus: $menuStatus, errorMessage: $errorMessage, selectedDayIndex: $selectedDayIndex, selectedMenuItem: $selectedMenuItem, selectedSubscriptionStartDate: $selectedSubscriptionStartDate, selectedMeals: $selectedMeals, subscriptionCost: $subscriptionCost, isCreatingSubscription: $isCreatingSubscription, subscriptionError: $subscriptionError, subscriptionCreatedSuccessfully: $subscriptionCreatedSuccessfully, validationWarnings: $validationWarnings, pricingDetails: $pricingDetails, availableVendors: $availableVendors, selectedVendorsByWeek: $selectedVendorsByWeek, weeklyAssignments: $weeklyAssignments, multiVendorCost: $multiVendorCost, weeklyVendorCosts: $weeklyVendorCosts, currentSubscriptionType: $currentSubscriptionType, vendorLoadingStatus: $vendorLoadingStatus, validationStatus: $validationStatus, pricingStatus: $pricingStatus)';
  }
}

/// @nodoc
abstract mixin class _$VendorDetailStateCopyWith<$Res>
    implements $VendorDetailStateCopyWith<$Res> {
  factory _$VendorDetailStateCopyWith(
          _VendorDetailState value, $Res Function(_VendorDetailState) _then) =
      __$VendorDetailStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Vendor vendor,
      WeeklyMenu? weeklyMenu,
      AppStatus status,
      AppStatus menuStatus,
      String? errorMessage,
      int selectedDayIndex,
      MenuItem? selectedMenuItem,
      DateTime? selectedSubscriptionStartDate,
      List<SubscriptionMealSelection> selectedMeals,
      double subscriptionCost,
      bool isCreatingSubscription,
      String? subscriptionError,
      bool subscriptionCreatedSuccessfully,
      List<String> validationWarnings,
      SubscriptionPricingResult? pricingDetails,
      List<Vendor> availableVendors,
      Map<int, Vendor> selectedVendorsByWeek,
      List<WeeklyVendorAssignment> weeklyAssignments,
      double multiVendorCost,
      Map<int, double> weeklyVendorCosts,
      MonthlySubscriptionType currentSubscriptionType,
      AppStatus vendorLoadingStatus,
      AppStatus validationStatus,
      AppStatus pricingStatus});

  @override
  $VendorCopyWith<$Res> get vendor;
  @override
  $WeeklyMenuCopyWith<$Res>? get weeklyMenu;
  @override
  $MenuItemCopyWith<$Res>? get selectedMenuItem;
}

/// @nodoc
class __$VendorDetailStateCopyWithImpl<$Res>
    implements _$VendorDetailStateCopyWith<$Res> {
  __$VendorDetailStateCopyWithImpl(this._self, this._then);

  final _VendorDetailState _self;
  final $Res Function(_VendorDetailState) _then;

  /// Create a copy of VendorDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? vendor = null,
    Object? weeklyMenu = freezed,
    Object? status = null,
    Object? menuStatus = null,
    Object? errorMessage = freezed,
    Object? selectedDayIndex = null,
    Object? selectedMenuItem = freezed,
    Object? selectedSubscriptionStartDate = freezed,
    Object? selectedMeals = null,
    Object? subscriptionCost = null,
    Object? isCreatingSubscription = null,
    Object? subscriptionError = freezed,
    Object? subscriptionCreatedSuccessfully = null,
    Object? validationWarnings = null,
    Object? pricingDetails = freezed,
    Object? availableVendors = null,
    Object? selectedVendorsByWeek = null,
    Object? weeklyAssignments = null,
    Object? multiVendorCost = null,
    Object? weeklyVendorCosts = null,
    Object? currentSubscriptionType = null,
    Object? vendorLoadingStatus = null,
    Object? validationStatus = null,
    Object? pricingStatus = null,
  }) {
    return _then(_VendorDetailState(
      vendor: null == vendor
          ? _self.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as Vendor,
      weeklyMenu: freezed == weeklyMenu
          ? _self.weeklyMenu
          : weeklyMenu // ignore: cast_nullable_to_non_nullable
              as WeeklyMenu?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      menuStatus: null == menuStatus
          ? _self.menuStatus
          : menuStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedDayIndex: null == selectedDayIndex
          ? _self.selectedDayIndex
          : selectedDayIndex // ignore: cast_nullable_to_non_nullable
              as int,
      selectedMenuItem: freezed == selectedMenuItem
          ? _self.selectedMenuItem
          : selectedMenuItem // ignore: cast_nullable_to_non_nullable
              as MenuItem?,
      selectedSubscriptionStartDate: freezed == selectedSubscriptionStartDate
          ? _self.selectedSubscriptionStartDate
          : selectedSubscriptionStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      selectedMeals: null == selectedMeals
          ? _self._selectedMeals
          : selectedMeals // ignore: cast_nullable_to_non_nullable
              as List<SubscriptionMealSelection>,
      subscriptionCost: null == subscriptionCost
          ? _self.subscriptionCost
          : subscriptionCost // ignore: cast_nullable_to_non_nullable
              as double,
      isCreatingSubscription: null == isCreatingSubscription
          ? _self.isCreatingSubscription
          : isCreatingSubscription // ignore: cast_nullable_to_non_nullable
              as bool,
      subscriptionError: freezed == subscriptionError
          ? _self.subscriptionError
          : subscriptionError // ignore: cast_nullable_to_non_nullable
              as String?,
      subscriptionCreatedSuccessfully: null == subscriptionCreatedSuccessfully
          ? _self.subscriptionCreatedSuccessfully
          : subscriptionCreatedSuccessfully // ignore: cast_nullable_to_non_nullable
              as bool,
      validationWarnings: null == validationWarnings
          ? _self._validationWarnings
          : validationWarnings // ignore: cast_nullable_to_non_nullable
              as List<String>,
      pricingDetails: freezed == pricingDetails
          ? _self.pricingDetails
          : pricingDetails // ignore: cast_nullable_to_non_nullable
              as SubscriptionPricingResult?,
      availableVendors: null == availableVendors
          ? _self._availableVendors
          : availableVendors // ignore: cast_nullable_to_non_nullable
              as List<Vendor>,
      selectedVendorsByWeek: null == selectedVendorsByWeek
          ? _self._selectedVendorsByWeek
          : selectedVendorsByWeek // ignore: cast_nullable_to_non_nullable
              as Map<int, Vendor>,
      weeklyAssignments: null == weeklyAssignments
          ? _self._weeklyAssignments
          : weeklyAssignments // ignore: cast_nullable_to_non_nullable
              as List<WeeklyVendorAssignment>,
      multiVendorCost: null == multiVendorCost
          ? _self.multiVendorCost
          : multiVendorCost // ignore: cast_nullable_to_non_nullable
              as double,
      weeklyVendorCosts: null == weeklyVendorCosts
          ? _self._weeklyVendorCosts
          : weeklyVendorCosts // ignore: cast_nullable_to_non_nullable
              as Map<int, double>,
      currentSubscriptionType: null == currentSubscriptionType
          ? _self.currentSubscriptionType
          : currentSubscriptionType // ignore: cast_nullable_to_non_nullable
              as MonthlySubscriptionType,
      vendorLoadingStatus: null == vendorLoadingStatus
          ? _self.vendorLoadingStatus
          : vendorLoadingStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      validationStatus: null == validationStatus
          ? _self.validationStatus
          : validationStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      pricingStatus: null == pricingStatus
          ? _self.pricingStatus
          : pricingStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
    ));
  }

  /// Create a copy of VendorDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VendorCopyWith<$Res> get vendor {
    return $VendorCopyWith<$Res>(_self.vendor, (value) {
      return _then(_self.copyWith(vendor: value));
    });
  }

  /// Create a copy of VendorDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WeeklyMenuCopyWith<$Res>? get weeklyMenu {
    if (_self.weeklyMenu == null) {
      return null;
    }

    return $WeeklyMenuCopyWith<$Res>(_self.weeklyMenu!, (value) {
      return _then(_self.copyWith(weeklyMenu: value));
    });
  }

  /// Create a copy of VendorDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MenuItemCopyWith<$Res>? get selectedMenuItem {
    if (_self.selectedMenuItem == null) {
      return null;
    }

    return $MenuItemCopyWith<$Res>(_self.selectedMenuItem!, (value) {
      return _then(_self.copyWith(selectedMenuItem: value));
    });
  }
}

// dart format on
