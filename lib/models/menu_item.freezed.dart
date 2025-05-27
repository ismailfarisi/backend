// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MenuItem {
  String get id;
  String get name;
  double get price;
  String? get imageUrl;
  Vendor? get vendor;
  MealType? get type;
  bool get isVegetarian;
  List<String> get allergens;

  /// Create a copy of MenuItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MenuItemCopyWith<MenuItem> get copyWith =>
      _$MenuItemCopyWithImpl<MenuItem>(this as MenuItem, _$identity);

  /// Serializes this MenuItem to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MenuItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.vendor, vendor) || other.vendor == vendor) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.isVegetarian, isVegetarian) ||
                other.isVegetarian == isVegetarian) &&
            const DeepCollectionEquality().equals(other.allergens, allergens));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      price,
      imageUrl,
      vendor,
      type,
      isVegetarian,
      const DeepCollectionEquality().hash(allergens));

  @override
  String toString() {
    return 'MenuItem(id: $id, name: $name, price: $price, imageUrl: $imageUrl, vendor: $vendor, type: $type, isVegetarian: $isVegetarian, allergens: $allergens)';
  }
}

/// @nodoc
abstract mixin class $MenuItemCopyWith<$Res> {
  factory $MenuItemCopyWith(MenuItem value, $Res Function(MenuItem) _then) =
      _$MenuItemCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      double price,
      String? imageUrl,
      Vendor? vendor,
      MealType? type,
      bool isVegetarian,
      List<String> allergens});

  $VendorCopyWith<$Res>? get vendor;
}

/// @nodoc
class _$MenuItemCopyWithImpl<$Res> implements $MenuItemCopyWith<$Res> {
  _$MenuItemCopyWithImpl(this._self, this._then);

  final MenuItem _self;
  final $Res Function(MenuItem) _then;

  /// Create a copy of MenuItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? imageUrl = freezed,
    Object? vendor = freezed,
    Object? type = freezed,
    Object? isVegetarian = null,
    Object? allergens = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      imageUrl: freezed == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      vendor: freezed == vendor
          ? _self.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as Vendor?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as MealType?,
      isVegetarian: null == isVegetarian
          ? _self.isVegetarian
          : isVegetarian // ignore: cast_nullable_to_non_nullable
              as bool,
      allergens: null == allergens
          ? _self.allergens
          : allergens // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }

  /// Create a copy of MenuItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VendorCopyWith<$Res>? get vendor {
    if (_self.vendor == null) {
      return null;
    }

    return $VendorCopyWith<$Res>(_self.vendor!, (value) {
      return _then(_self.copyWith(vendor: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _MenuItem implements MenuItem {
  const _MenuItem(
      {required this.id,
      required this.name,
      required this.price,
      this.imageUrl,
      this.vendor,
      this.type,
      this.isVegetarian = false,
      final List<String> allergens = const []})
      : _allergens = allergens;
  factory _MenuItem.fromJson(Map<String, dynamic> json) =>
      _$MenuItemFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final double price;
  @override
  final String? imageUrl;
  @override
  final Vendor? vendor;
  @override
  final MealType? type;
  @override
  @JsonKey()
  final bool isVegetarian;
  final List<String> _allergens;
  @override
  @JsonKey()
  List<String> get allergens {
    if (_allergens is EqualUnmodifiableListView) return _allergens;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allergens);
  }

  /// Create a copy of MenuItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MenuItemCopyWith<_MenuItem> get copyWith =>
      __$MenuItemCopyWithImpl<_MenuItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MenuItemToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MenuItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.vendor, vendor) || other.vendor == vendor) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.isVegetarian, isVegetarian) ||
                other.isVegetarian == isVegetarian) &&
            const DeepCollectionEquality()
                .equals(other._allergens, _allergens));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      price,
      imageUrl,
      vendor,
      type,
      isVegetarian,
      const DeepCollectionEquality().hash(_allergens));

  @override
  String toString() {
    return 'MenuItem(id: $id, name: $name, price: $price, imageUrl: $imageUrl, vendor: $vendor, type: $type, isVegetarian: $isVegetarian, allergens: $allergens)';
  }
}

/// @nodoc
abstract mixin class _$MenuItemCopyWith<$Res>
    implements $MenuItemCopyWith<$Res> {
  factory _$MenuItemCopyWith(_MenuItem value, $Res Function(_MenuItem) _then) =
      __$MenuItemCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      double price,
      String? imageUrl,
      Vendor? vendor,
      MealType? type,
      bool isVegetarian,
      List<String> allergens});

  @override
  $VendorCopyWith<$Res>? get vendor;
}

/// @nodoc
class __$MenuItemCopyWithImpl<$Res> implements _$MenuItemCopyWith<$Res> {
  __$MenuItemCopyWithImpl(this._self, this._then);

  final _MenuItem _self;
  final $Res Function(_MenuItem) _then;

  /// Create a copy of MenuItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? imageUrl = freezed,
    Object? vendor = freezed,
    Object? type = freezed,
    Object? isVegetarian = null,
    Object? allergens = null,
  }) {
    return _then(_MenuItem(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      imageUrl: freezed == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      vendor: freezed == vendor
          ? _self.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as Vendor?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as MealType?,
      isVegetarian: null == isVegetarian
          ? _self.isVegetarian
          : isVegetarian // ignore: cast_nullable_to_non_nullable
              as bool,
      allergens: null == allergens
          ? _self._allergens
          : allergens // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }

  /// Create a copy of MenuItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VendorCopyWith<$Res>? get vendor {
    if (_self.vendor == null) {
      return null;
    }

    return $VendorCopyWith<$Res>(_self.vendor!, (value) {
      return _then(_self.copyWith(vendor: value));
    });
  }
}

/// @nodoc
mixin _$DailyMenu {
  DateTime get date;
  List<MenuItem> get breakfastOptions;
  List<MenuItem> get lunchOptions;
  List<MenuItem> get dinnerOptions;

  /// Create a copy of DailyMenu
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DailyMenuCopyWith<DailyMenu> get copyWith =>
      _$DailyMenuCopyWithImpl<DailyMenu>(this as DailyMenu, _$identity);

  /// Serializes this DailyMenu to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DailyMenu &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality()
                .equals(other.breakfastOptions, breakfastOptions) &&
            const DeepCollectionEquality()
                .equals(other.lunchOptions, lunchOptions) &&
            const DeepCollectionEquality()
                .equals(other.dinnerOptions, dinnerOptions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      date,
      const DeepCollectionEquality().hash(breakfastOptions),
      const DeepCollectionEquality().hash(lunchOptions),
      const DeepCollectionEquality().hash(dinnerOptions));

  @override
  String toString() {
    return 'DailyMenu(date: $date, breakfastOptions: $breakfastOptions, lunchOptions: $lunchOptions, dinnerOptions: $dinnerOptions)';
  }
}

/// @nodoc
abstract mixin class $DailyMenuCopyWith<$Res> {
  factory $DailyMenuCopyWith(DailyMenu value, $Res Function(DailyMenu) _then) =
      _$DailyMenuCopyWithImpl;
  @useResult
  $Res call(
      {DateTime date,
      List<MenuItem> breakfastOptions,
      List<MenuItem> lunchOptions,
      List<MenuItem> dinnerOptions});
}

/// @nodoc
class _$DailyMenuCopyWithImpl<$Res> implements $DailyMenuCopyWith<$Res> {
  _$DailyMenuCopyWithImpl(this._self, this._then);

  final DailyMenu _self;
  final $Res Function(DailyMenu) _then;

  /// Create a copy of DailyMenu
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? breakfastOptions = null,
    Object? lunchOptions = null,
    Object? dinnerOptions = null,
  }) {
    return _then(_self.copyWith(
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      breakfastOptions: null == breakfastOptions
          ? _self.breakfastOptions
          : breakfastOptions // ignore: cast_nullable_to_non_nullable
              as List<MenuItem>,
      lunchOptions: null == lunchOptions
          ? _self.lunchOptions
          : lunchOptions // ignore: cast_nullable_to_non_nullable
              as List<MenuItem>,
      dinnerOptions: null == dinnerOptions
          ? _self.dinnerOptions
          : dinnerOptions // ignore: cast_nullable_to_non_nullable
              as List<MenuItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _DailyMenu implements DailyMenu {
  const _DailyMenu(
      {required this.date,
      final List<MenuItem> breakfastOptions = const [],
      final List<MenuItem> lunchOptions = const [],
      final List<MenuItem> dinnerOptions = const []})
      : _breakfastOptions = breakfastOptions,
        _lunchOptions = lunchOptions,
        _dinnerOptions = dinnerOptions;
  factory _DailyMenu.fromJson(Map<String, dynamic> json) =>
      _$DailyMenuFromJson(json);

  @override
  final DateTime date;
  final List<MenuItem> _breakfastOptions;
  @override
  @JsonKey()
  List<MenuItem> get breakfastOptions {
    if (_breakfastOptions is EqualUnmodifiableListView)
      return _breakfastOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_breakfastOptions);
  }

  final List<MenuItem> _lunchOptions;
  @override
  @JsonKey()
  List<MenuItem> get lunchOptions {
    if (_lunchOptions is EqualUnmodifiableListView) return _lunchOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lunchOptions);
  }

  final List<MenuItem> _dinnerOptions;
  @override
  @JsonKey()
  List<MenuItem> get dinnerOptions {
    if (_dinnerOptions is EqualUnmodifiableListView) return _dinnerOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dinnerOptions);
  }

  /// Create a copy of DailyMenu
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DailyMenuCopyWith<_DailyMenu> get copyWith =>
      __$DailyMenuCopyWithImpl<_DailyMenu>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DailyMenuToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DailyMenu &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality()
                .equals(other._breakfastOptions, _breakfastOptions) &&
            const DeepCollectionEquality()
                .equals(other._lunchOptions, _lunchOptions) &&
            const DeepCollectionEquality()
                .equals(other._dinnerOptions, _dinnerOptions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      date,
      const DeepCollectionEquality().hash(_breakfastOptions),
      const DeepCollectionEquality().hash(_lunchOptions),
      const DeepCollectionEquality().hash(_dinnerOptions));

  @override
  String toString() {
    return 'DailyMenu(date: $date, breakfastOptions: $breakfastOptions, lunchOptions: $lunchOptions, dinnerOptions: $dinnerOptions)';
  }
}

/// @nodoc
abstract mixin class _$DailyMenuCopyWith<$Res>
    implements $DailyMenuCopyWith<$Res> {
  factory _$DailyMenuCopyWith(
          _DailyMenu value, $Res Function(_DailyMenu) _then) =
      __$DailyMenuCopyWithImpl;
  @override
  @useResult
  $Res call(
      {DateTime date,
      List<MenuItem> breakfastOptions,
      List<MenuItem> lunchOptions,
      List<MenuItem> dinnerOptions});
}

/// @nodoc
class __$DailyMenuCopyWithImpl<$Res> implements _$DailyMenuCopyWith<$Res> {
  __$DailyMenuCopyWithImpl(this._self, this._then);

  final _DailyMenu _self;
  final $Res Function(_DailyMenu) _then;

  /// Create a copy of DailyMenu
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? date = null,
    Object? breakfastOptions = null,
    Object? lunchOptions = null,
    Object? dinnerOptions = null,
  }) {
    return _then(_DailyMenu(
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      breakfastOptions: null == breakfastOptions
          ? _self._breakfastOptions
          : breakfastOptions // ignore: cast_nullable_to_non_nullable
              as List<MenuItem>,
      lunchOptions: null == lunchOptions
          ? _self._lunchOptions
          : lunchOptions // ignore: cast_nullable_to_non_nullable
              as List<MenuItem>,
      dinnerOptions: null == dinnerOptions
          ? _self._dinnerOptions
          : dinnerOptions // ignore: cast_nullable_to_non_nullable
              as List<MenuItem>,
    ));
  }
}

/// @nodoc
mixin _$WeeklyMenu {
  String get id;
  DateTime get startDate;
  DateTime get endDate;
  List<DailyMenu> get dailyMenus;

  /// Create a copy of WeeklyMenu
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WeeklyMenuCopyWith<WeeklyMenu> get copyWith =>
      _$WeeklyMenuCopyWithImpl<WeeklyMenu>(this as WeeklyMenu, _$identity);

  /// Serializes this WeeklyMenu to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WeeklyMenu &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            const DeepCollectionEquality()
                .equals(other.dailyMenus, dailyMenus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, startDate, endDate,
      const DeepCollectionEquality().hash(dailyMenus));

  @override
  String toString() {
    return 'WeeklyMenu(id: $id, startDate: $startDate, endDate: $endDate, dailyMenus: $dailyMenus)';
  }
}

/// @nodoc
abstract mixin class $WeeklyMenuCopyWith<$Res> {
  factory $WeeklyMenuCopyWith(
          WeeklyMenu value, $Res Function(WeeklyMenu) _then) =
      _$WeeklyMenuCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      DateTime startDate,
      DateTime endDate,
      List<DailyMenu> dailyMenus});
}

/// @nodoc
class _$WeeklyMenuCopyWithImpl<$Res> implements $WeeklyMenuCopyWith<$Res> {
  _$WeeklyMenuCopyWithImpl(this._self, this._then);

  final WeeklyMenu _self;
  final $Res Function(WeeklyMenu) _then;

  /// Create a copy of WeeklyMenu
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? dailyMenus = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dailyMenus: null == dailyMenus
          ? _self.dailyMenus
          : dailyMenus // ignore: cast_nullable_to_non_nullable
              as List<DailyMenu>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _WeeklyMenu implements WeeklyMenu {
  const _WeeklyMenu(
      {required this.id,
      required this.startDate,
      required this.endDate,
      final List<DailyMenu> dailyMenus = const []})
      : _dailyMenus = dailyMenus;
  factory _WeeklyMenu.fromJson(Map<String, dynamic> json) =>
      _$WeeklyMenuFromJson(json);

  @override
  final String id;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  final List<DailyMenu> _dailyMenus;
  @override
  @JsonKey()
  List<DailyMenu> get dailyMenus {
    if (_dailyMenus is EqualUnmodifiableListView) return _dailyMenus;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dailyMenus);
  }

  /// Create a copy of WeeklyMenu
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WeeklyMenuCopyWith<_WeeklyMenu> get copyWith =>
      __$WeeklyMenuCopyWithImpl<_WeeklyMenu>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WeeklyMenuToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeeklyMenu &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            const DeepCollectionEquality()
                .equals(other._dailyMenus, _dailyMenus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, startDate, endDate,
      const DeepCollectionEquality().hash(_dailyMenus));

  @override
  String toString() {
    return 'WeeklyMenu(id: $id, startDate: $startDate, endDate: $endDate, dailyMenus: $dailyMenus)';
  }
}

/// @nodoc
abstract mixin class _$WeeklyMenuCopyWith<$Res>
    implements $WeeklyMenuCopyWith<$Res> {
  factory _$WeeklyMenuCopyWith(
          _WeeklyMenu value, $Res Function(_WeeklyMenu) _then) =
      __$WeeklyMenuCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime startDate,
      DateTime endDate,
      List<DailyMenu> dailyMenus});
}

/// @nodoc
class __$WeeklyMenuCopyWithImpl<$Res> implements _$WeeklyMenuCopyWith<$Res> {
  __$WeeklyMenuCopyWithImpl(this._self, this._then);

  final _WeeklyMenu _self;
  final $Res Function(_WeeklyMenu) _then;

  /// Create a copy of WeeklyMenu
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? dailyMenus = null,
  }) {
    return _then(_WeeklyMenu(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dailyMenus: null == dailyMenus
          ? _self._dailyMenus
          : dailyMenus // ignore: cast_nullable_to_non_nullable
              as List<DailyMenu>,
    ));
  }
}

/// @nodoc
mixin _$VendorDetailState {
  Vendor get vendor;
  WeeklyMenu? get weeklyMenu;
  AppStatus get status;
  AppStatus get menuStatus;
  String? get errorMessage;
  int get selectedDayIndex;
  MenuItem? get selectedMenuItem;

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
                other.selectedMenuItem == selectedMenuItem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, vendor, weeklyMenu, status,
      menuStatus, errorMessage, selectedDayIndex, selectedMenuItem);

  @override
  String toString() {
    return 'VendorDetailState(vendor: $vendor, weeklyMenu: $weeklyMenu, status: $status, menuStatus: $menuStatus, errorMessage: $errorMessage, selectedDayIndex: $selectedDayIndex, selectedMenuItem: $selectedMenuItem)';
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
      MenuItem? selectedMenuItem});

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
      this.selectedMenuItem});

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
                other.selectedMenuItem == selectedMenuItem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, vendor, weeklyMenu, status,
      menuStatus, errorMessage, selectedDayIndex, selectedMenuItem);

  @override
  String toString() {
    return 'VendorDetailState(vendor: $vendor, weeklyMenu: $weeklyMenu, status: $status, menuStatus: $menuStatus, errorMessage: $errorMessage, selectedDayIndex: $selectedDayIndex, selectedMenuItem: $selectedMenuItem)';
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
      MenuItem? selectedMenuItem});

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
