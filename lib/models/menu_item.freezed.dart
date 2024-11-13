// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MenuItem _$MenuItemFromJson(Map<String, dynamic> json) {
  return _MenuItem.fromJson(json);
}

/// @nodoc
mixin _$MenuItem {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  Vendor? get vendor => throw _privateConstructorUsedError;
  MealType? get type => throw _privateConstructorUsedError;
  bool get isVegetarian => throw _privateConstructorUsedError;
  List<String> get allergens => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MenuItemCopyWith<MenuItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuItemCopyWith<$Res> {
  factory $MenuItemCopyWith(MenuItem value, $Res Function(MenuItem) then) =
      _$MenuItemCopyWithImpl<$Res, MenuItem>;
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
class _$MenuItemCopyWithImpl<$Res, $Val extends MenuItem>
    implements $MenuItemCopyWith<$Res> {
  _$MenuItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      vendor: freezed == vendor
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as Vendor?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MealType?,
      isVegetarian: null == isVegetarian
          ? _value.isVegetarian
          : isVegetarian // ignore: cast_nullable_to_non_nullable
              as bool,
      allergens: null == allergens
          ? _value.allergens
          : allergens // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VendorCopyWith<$Res>? get vendor {
    if (_value.vendor == null) {
      return null;
    }

    return $VendorCopyWith<$Res>(_value.vendor!, (value) {
      return _then(_value.copyWith(vendor: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MenuItemImplCopyWith<$Res>
    implements $MenuItemCopyWith<$Res> {
  factory _$$MenuItemImplCopyWith(
          _$MenuItemImpl value, $Res Function(_$MenuItemImpl) then) =
      __$$MenuItemImplCopyWithImpl<$Res>;
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
class __$$MenuItemImplCopyWithImpl<$Res>
    extends _$MenuItemCopyWithImpl<$Res, _$MenuItemImpl>
    implements _$$MenuItemImplCopyWith<$Res> {
  __$$MenuItemImplCopyWithImpl(
      _$MenuItemImpl _value, $Res Function(_$MenuItemImpl) _then)
      : super(_value, _then);

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
    return _then(_$MenuItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      vendor: freezed == vendor
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as Vendor?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MealType?,
      isVegetarian: null == isVegetarian
          ? _value.isVegetarian
          : isVegetarian // ignore: cast_nullable_to_non_nullable
              as bool,
      allergens: null == allergens
          ? _value._allergens
          : allergens // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MenuItemImpl implements _MenuItem {
  const _$MenuItemImpl(
      {required this.id,
      required this.name,
      required this.price,
      this.imageUrl,
      this.vendor,
      this.type,
      this.isVegetarian = false,
      final List<String> allergens = const []})
      : _allergens = allergens;

  factory _$MenuItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$MenuItemImplFromJson(json);

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

  @override
  String toString() {
    return 'MenuItem(id: $id, name: $name, price: $price, imageUrl: $imageUrl, vendor: $vendor, type: $type, isVegetarian: $isVegetarian, allergens: $allergens)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MenuItemImpl &&
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

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MenuItemImplCopyWith<_$MenuItemImpl> get copyWith =>
      __$$MenuItemImplCopyWithImpl<_$MenuItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MenuItemImplToJson(
      this,
    );
  }
}

abstract class _MenuItem implements MenuItem {
  const factory _MenuItem(
      {required final String id,
      required final String name,
      required final double price,
      final String? imageUrl,
      final Vendor? vendor,
      final MealType? type,
      final bool isVegetarian,
      final List<String> allergens}) = _$MenuItemImpl;

  factory _MenuItem.fromJson(Map<String, dynamic> json) =
      _$MenuItemImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  double get price;
  @override
  String? get imageUrl;
  @override
  Vendor? get vendor;
  @override
  MealType? get type;
  @override
  bool get isVegetarian;
  @override
  List<String> get allergens;
  @override
  @JsonKey(ignore: true)
  _$$MenuItemImplCopyWith<_$MenuItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DailyMenu _$DailyMenuFromJson(Map<String, dynamic> json) {
  return _DailyMenu.fromJson(json);
}

/// @nodoc
mixin _$DailyMenu {
  DateTime get date => throw _privateConstructorUsedError;
  List<MenuItem> get breakfastOptions => throw _privateConstructorUsedError;
  List<MenuItem> get lunchOptions => throw _privateConstructorUsedError;
  List<MenuItem> get dinnerOptions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DailyMenuCopyWith<DailyMenu> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyMenuCopyWith<$Res> {
  factory $DailyMenuCopyWith(DailyMenu value, $Res Function(DailyMenu) then) =
      _$DailyMenuCopyWithImpl<$Res, DailyMenu>;
  @useResult
  $Res call(
      {DateTime date,
      List<MenuItem> breakfastOptions,
      List<MenuItem> lunchOptions,
      List<MenuItem> dinnerOptions});
}

/// @nodoc
class _$DailyMenuCopyWithImpl<$Res, $Val extends DailyMenu>
    implements $DailyMenuCopyWith<$Res> {
  _$DailyMenuCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? breakfastOptions = null,
    Object? lunchOptions = null,
    Object? dinnerOptions = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      breakfastOptions: null == breakfastOptions
          ? _value.breakfastOptions
          : breakfastOptions // ignore: cast_nullable_to_non_nullable
              as List<MenuItem>,
      lunchOptions: null == lunchOptions
          ? _value.lunchOptions
          : lunchOptions // ignore: cast_nullable_to_non_nullable
              as List<MenuItem>,
      dinnerOptions: null == dinnerOptions
          ? _value.dinnerOptions
          : dinnerOptions // ignore: cast_nullable_to_non_nullable
              as List<MenuItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DailyMenuImplCopyWith<$Res>
    implements $DailyMenuCopyWith<$Res> {
  factory _$$DailyMenuImplCopyWith(
          _$DailyMenuImpl value, $Res Function(_$DailyMenuImpl) then) =
      __$$DailyMenuImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime date,
      List<MenuItem> breakfastOptions,
      List<MenuItem> lunchOptions,
      List<MenuItem> dinnerOptions});
}

/// @nodoc
class __$$DailyMenuImplCopyWithImpl<$Res>
    extends _$DailyMenuCopyWithImpl<$Res, _$DailyMenuImpl>
    implements _$$DailyMenuImplCopyWith<$Res> {
  __$$DailyMenuImplCopyWithImpl(
      _$DailyMenuImpl _value, $Res Function(_$DailyMenuImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? breakfastOptions = null,
    Object? lunchOptions = null,
    Object? dinnerOptions = null,
  }) {
    return _then(_$DailyMenuImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      breakfastOptions: null == breakfastOptions
          ? _value._breakfastOptions
          : breakfastOptions // ignore: cast_nullable_to_non_nullable
              as List<MenuItem>,
      lunchOptions: null == lunchOptions
          ? _value._lunchOptions
          : lunchOptions // ignore: cast_nullable_to_non_nullable
              as List<MenuItem>,
      dinnerOptions: null == dinnerOptions
          ? _value._dinnerOptions
          : dinnerOptions // ignore: cast_nullable_to_non_nullable
              as List<MenuItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyMenuImpl implements _DailyMenu {
  const _$DailyMenuImpl(
      {required this.date,
      final List<MenuItem> breakfastOptions = const [],
      final List<MenuItem> lunchOptions = const [],
      final List<MenuItem> dinnerOptions = const []})
      : _breakfastOptions = breakfastOptions,
        _lunchOptions = lunchOptions,
        _dinnerOptions = dinnerOptions;

  factory _$DailyMenuImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyMenuImplFromJson(json);

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

  @override
  String toString() {
    return 'DailyMenu(date: $date, breakfastOptions: $breakfastOptions, lunchOptions: $lunchOptions, dinnerOptions: $dinnerOptions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyMenuImpl &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality()
                .equals(other._breakfastOptions, _breakfastOptions) &&
            const DeepCollectionEquality()
                .equals(other._lunchOptions, _lunchOptions) &&
            const DeepCollectionEquality()
                .equals(other._dinnerOptions, _dinnerOptions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      date,
      const DeepCollectionEquality().hash(_breakfastOptions),
      const DeepCollectionEquality().hash(_lunchOptions),
      const DeepCollectionEquality().hash(_dinnerOptions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyMenuImplCopyWith<_$DailyMenuImpl> get copyWith =>
      __$$DailyMenuImplCopyWithImpl<_$DailyMenuImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyMenuImplToJson(
      this,
    );
  }
}

abstract class _DailyMenu implements DailyMenu {
  const factory _DailyMenu(
      {required final DateTime date,
      final List<MenuItem> breakfastOptions,
      final List<MenuItem> lunchOptions,
      final List<MenuItem> dinnerOptions}) = _$DailyMenuImpl;

  factory _DailyMenu.fromJson(Map<String, dynamic> json) =
      _$DailyMenuImpl.fromJson;

  @override
  DateTime get date;
  @override
  List<MenuItem> get breakfastOptions;
  @override
  List<MenuItem> get lunchOptions;
  @override
  List<MenuItem> get dinnerOptions;
  @override
  @JsonKey(ignore: true)
  _$$DailyMenuImplCopyWith<_$DailyMenuImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeeklyMenu _$WeeklyMenuFromJson(Map<String, dynamic> json) {
  return _WeeklyMenu.fromJson(json);
}

/// @nodoc
mixin _$WeeklyMenu {
  String get id => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  List<DailyMenu> get dailyMenus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeeklyMenuCopyWith<WeeklyMenu> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeeklyMenuCopyWith<$Res> {
  factory $WeeklyMenuCopyWith(
          WeeklyMenu value, $Res Function(WeeklyMenu) then) =
      _$WeeklyMenuCopyWithImpl<$Res, WeeklyMenu>;
  @useResult
  $Res call(
      {String id,
      DateTime startDate,
      DateTime endDate,
      List<DailyMenu> dailyMenus});
}

/// @nodoc
class _$WeeklyMenuCopyWithImpl<$Res, $Val extends WeeklyMenu>
    implements $WeeklyMenuCopyWith<$Res> {
  _$WeeklyMenuCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? dailyMenus = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dailyMenus: null == dailyMenus
          ? _value.dailyMenus
          : dailyMenus // ignore: cast_nullable_to_non_nullable
              as List<DailyMenu>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeeklyMenuImplCopyWith<$Res>
    implements $WeeklyMenuCopyWith<$Res> {
  factory _$$WeeklyMenuImplCopyWith(
          _$WeeklyMenuImpl value, $Res Function(_$WeeklyMenuImpl) then) =
      __$$WeeklyMenuImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime startDate,
      DateTime endDate,
      List<DailyMenu> dailyMenus});
}

/// @nodoc
class __$$WeeklyMenuImplCopyWithImpl<$Res>
    extends _$WeeklyMenuCopyWithImpl<$Res, _$WeeklyMenuImpl>
    implements _$$WeeklyMenuImplCopyWith<$Res> {
  __$$WeeklyMenuImplCopyWithImpl(
      _$WeeklyMenuImpl _value, $Res Function(_$WeeklyMenuImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? dailyMenus = null,
  }) {
    return _then(_$WeeklyMenuImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dailyMenus: null == dailyMenus
          ? _value._dailyMenus
          : dailyMenus // ignore: cast_nullable_to_non_nullable
              as List<DailyMenu>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeeklyMenuImpl implements _WeeklyMenu {
  const _$WeeklyMenuImpl(
      {required this.id,
      required this.startDate,
      required this.endDate,
      final List<DailyMenu> dailyMenus = const []})
      : _dailyMenus = dailyMenus;

  factory _$WeeklyMenuImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeeklyMenuImplFromJson(json);

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

  @override
  String toString() {
    return 'WeeklyMenu(id: $id, startDate: $startDate, endDate: $endDate, dailyMenus: $dailyMenus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeeklyMenuImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            const DeepCollectionEquality()
                .equals(other._dailyMenus, _dailyMenus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, startDate, endDate,
      const DeepCollectionEquality().hash(_dailyMenus));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeeklyMenuImplCopyWith<_$WeeklyMenuImpl> get copyWith =>
      __$$WeeklyMenuImplCopyWithImpl<_$WeeklyMenuImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeeklyMenuImplToJson(
      this,
    );
  }
}

abstract class _WeeklyMenu implements WeeklyMenu {
  const factory _WeeklyMenu(
      {required final String id,
      required final DateTime startDate,
      required final DateTime endDate,
      final List<DailyMenu> dailyMenus}) = _$WeeklyMenuImpl;

  factory _WeeklyMenu.fromJson(Map<String, dynamic> json) =
      _$WeeklyMenuImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  List<DailyMenu> get dailyMenus;
  @override
  @JsonKey(ignore: true)
  _$$WeeklyMenuImplCopyWith<_$WeeklyMenuImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VendorDetailState {
  Vendor get vendor => throw _privateConstructorUsedError;
  WeeklyMenu? get weeklyMenu => throw _privateConstructorUsedError;
  AppStatus get status => throw _privateConstructorUsedError;
  AppStatus get menuStatus => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  int get selectedDayIndex => throw _privateConstructorUsedError;
  MenuItem? get selectedMenuItem => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VendorDetailStateCopyWith<VendorDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorDetailStateCopyWith<$Res> {
  factory $VendorDetailStateCopyWith(
          VendorDetailState value, $Res Function(VendorDetailState) then) =
      _$VendorDetailStateCopyWithImpl<$Res, VendorDetailState>;
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
class _$VendorDetailStateCopyWithImpl<$Res, $Val extends VendorDetailState>
    implements $VendorDetailStateCopyWith<$Res> {
  _$VendorDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      vendor: null == vendor
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as Vendor,
      weeklyMenu: freezed == weeklyMenu
          ? _value.weeklyMenu
          : weeklyMenu // ignore: cast_nullable_to_non_nullable
              as WeeklyMenu?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      menuStatus: null == menuStatus
          ? _value.menuStatus
          : menuStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedDayIndex: null == selectedDayIndex
          ? _value.selectedDayIndex
          : selectedDayIndex // ignore: cast_nullable_to_non_nullable
              as int,
      selectedMenuItem: freezed == selectedMenuItem
          ? _value.selectedMenuItem
          : selectedMenuItem // ignore: cast_nullable_to_non_nullable
              as MenuItem?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VendorCopyWith<$Res> get vendor {
    return $VendorCopyWith<$Res>(_value.vendor, (value) {
      return _then(_value.copyWith(vendor: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WeeklyMenuCopyWith<$Res>? get weeklyMenu {
    if (_value.weeklyMenu == null) {
      return null;
    }

    return $WeeklyMenuCopyWith<$Res>(_value.weeklyMenu!, (value) {
      return _then(_value.copyWith(weeklyMenu: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MenuItemCopyWith<$Res>? get selectedMenuItem {
    if (_value.selectedMenuItem == null) {
      return null;
    }

    return $MenuItemCopyWith<$Res>(_value.selectedMenuItem!, (value) {
      return _then(_value.copyWith(selectedMenuItem: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VendorDetailStateImplCopyWith<$Res>
    implements $VendorDetailStateCopyWith<$Res> {
  factory _$$VendorDetailStateImplCopyWith(_$VendorDetailStateImpl value,
          $Res Function(_$VendorDetailStateImpl) then) =
      __$$VendorDetailStateImplCopyWithImpl<$Res>;
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
class __$$VendorDetailStateImplCopyWithImpl<$Res>
    extends _$VendorDetailStateCopyWithImpl<$Res, _$VendorDetailStateImpl>
    implements _$$VendorDetailStateImplCopyWith<$Res> {
  __$$VendorDetailStateImplCopyWithImpl(_$VendorDetailStateImpl _value,
      $Res Function(_$VendorDetailStateImpl) _then)
      : super(_value, _then);

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
    return _then(_$VendorDetailStateImpl(
      vendor: null == vendor
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as Vendor,
      weeklyMenu: freezed == weeklyMenu
          ? _value.weeklyMenu
          : weeklyMenu // ignore: cast_nullable_to_non_nullable
              as WeeklyMenu?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      menuStatus: null == menuStatus
          ? _value.menuStatus
          : menuStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedDayIndex: null == selectedDayIndex
          ? _value.selectedDayIndex
          : selectedDayIndex // ignore: cast_nullable_to_non_nullable
              as int,
      selectedMenuItem: freezed == selectedMenuItem
          ? _value.selectedMenuItem
          : selectedMenuItem // ignore: cast_nullable_to_non_nullable
              as MenuItem?,
    ));
  }
}

/// @nodoc

class _$VendorDetailStateImpl implements _VendorDetailState {
  const _$VendorDetailStateImpl(
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

  @override
  String toString() {
    return 'VendorDetailState(vendor: $vendor, weeklyMenu: $weeklyMenu, status: $status, menuStatus: $menuStatus, errorMessage: $errorMessage, selectedDayIndex: $selectedDayIndex, selectedMenuItem: $selectedMenuItem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendorDetailStateImpl &&
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VendorDetailStateImplCopyWith<_$VendorDetailStateImpl> get copyWith =>
      __$$VendorDetailStateImplCopyWithImpl<_$VendorDetailStateImpl>(
          this, _$identity);
}

abstract class _VendorDetailState implements VendorDetailState {
  const factory _VendorDetailState(
      {required final Vendor vendor,
      final WeeklyMenu? weeklyMenu,
      final AppStatus status,
      final AppStatus menuStatus,
      final String? errorMessage,
      final int selectedDayIndex,
      final MenuItem? selectedMenuItem}) = _$VendorDetailStateImpl;

  @override
  Vendor get vendor;
  @override
  WeeklyMenu? get weeklyMenu;
  @override
  AppStatus get status;
  @override
  AppStatus get menuStatus;
  @override
  String? get errorMessage;
  @override
  int get selectedDayIndex;
  @override
  MenuItem? get selectedMenuItem;
  @override
  @JsonKey(ignore: true)
  _$$VendorDetailStateImplCopyWith<_$VendorDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
