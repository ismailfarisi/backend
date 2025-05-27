// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vendor_menu.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VendorMenu {
  String get id;
  String get vendorId;
  MealType get mealType;
  MenuStatus get status;
  String get description;
  double get price;
  Map<String, DailyMenu> get weeklyMenu;

  /// Create a copy of VendorMenu
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VendorMenuCopyWith<VendorMenu> get copyWith =>
      _$VendorMenuCopyWithImpl<VendorMenu>(this as VendorMenu, _$identity);

  /// Serializes this VendorMenu to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VendorMenu &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.vendorId, vendorId) ||
                other.vendorId == vendorId) &&
            (identical(other.mealType, mealType) ||
                other.mealType == mealType) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality()
                .equals(other.weeklyMenu, weeklyMenu));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, vendorId, mealType, status,
      description, price, const DeepCollectionEquality().hash(weeklyMenu));

  @override
  String toString() {
    return 'VendorMenu(id: $id, vendorId: $vendorId, mealType: $mealType, status: $status, description: $description, price: $price, weeklyMenu: $weeklyMenu)';
  }
}

/// @nodoc
abstract mixin class $VendorMenuCopyWith<$Res> {
  factory $VendorMenuCopyWith(
          VendorMenu value, $Res Function(VendorMenu) _then) =
      _$VendorMenuCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String vendorId,
      MealType mealType,
      MenuStatus status,
      String description,
      double price,
      Map<String, DailyMenu> weeklyMenu});
}

/// @nodoc
class _$VendorMenuCopyWithImpl<$Res> implements $VendorMenuCopyWith<$Res> {
  _$VendorMenuCopyWithImpl(this._self, this._then);

  final VendorMenu _self;
  final $Res Function(VendorMenu) _then;

  /// Create a copy of VendorMenu
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? vendorId = null,
    Object? mealType = null,
    Object? status = null,
    Object? description = null,
    Object? price = null,
    Object? weeklyMenu = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      vendorId: null == vendorId
          ? _self.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String,
      mealType: null == mealType
          ? _self.mealType
          : mealType // ignore: cast_nullable_to_non_nullable
              as MealType,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as MenuStatus,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      weeklyMenu: null == weeklyMenu
          ? _self.weeklyMenu
          : weeklyMenu // ignore: cast_nullable_to_non_nullable
              as Map<String, DailyMenu>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _VendorMenu implements VendorMenu {
  const _VendorMenu(
      {required this.id,
      required this.vendorId,
      required this.mealType,
      required this.status,
      required this.description,
      required this.price,
      required final Map<String, DailyMenu> weeklyMenu})
      : _weeklyMenu = weeklyMenu;
  factory _VendorMenu.fromJson(Map<String, dynamic> json) =>
      _$VendorMenuFromJson(json);

  @override
  final String id;
  @override
  final String vendorId;
  @override
  final MealType mealType;
  @override
  final MenuStatus status;
  @override
  final String description;
  @override
  final double price;
  final Map<String, DailyMenu> _weeklyMenu;
  @override
  Map<String, DailyMenu> get weeklyMenu {
    if (_weeklyMenu is EqualUnmodifiableMapView) return _weeklyMenu;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_weeklyMenu);
  }

  /// Create a copy of VendorMenu
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VendorMenuCopyWith<_VendorMenu> get copyWith =>
      __$VendorMenuCopyWithImpl<_VendorMenu>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VendorMenuToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VendorMenu &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.vendorId, vendorId) ||
                other.vendorId == vendorId) &&
            (identical(other.mealType, mealType) ||
                other.mealType == mealType) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality()
                .equals(other._weeklyMenu, _weeklyMenu));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, vendorId, mealType, status,
      description, price, const DeepCollectionEquality().hash(_weeklyMenu));

  @override
  String toString() {
    return 'VendorMenu(id: $id, vendorId: $vendorId, mealType: $mealType, status: $status, description: $description, price: $price, weeklyMenu: $weeklyMenu)';
  }
}

/// @nodoc
abstract mixin class _$VendorMenuCopyWith<$Res>
    implements $VendorMenuCopyWith<$Res> {
  factory _$VendorMenuCopyWith(
          _VendorMenu value, $Res Function(_VendorMenu) _then) =
      __$VendorMenuCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String vendorId,
      MealType mealType,
      MenuStatus status,
      String description,
      double price,
      Map<String, DailyMenu> weeklyMenu});
}

/// @nodoc
class __$VendorMenuCopyWithImpl<$Res> implements _$VendorMenuCopyWith<$Res> {
  __$VendorMenuCopyWithImpl(this._self, this._then);

  final _VendorMenu _self;
  final $Res Function(_VendorMenu) _then;

  /// Create a copy of VendorMenu
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? vendorId = null,
    Object? mealType = null,
    Object? status = null,
    Object? description = null,
    Object? price = null,
    Object? weeklyMenu = null,
  }) {
    return _then(_VendorMenu(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      vendorId: null == vendorId
          ? _self.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String,
      mealType: null == mealType
          ? _self.mealType
          : mealType // ignore: cast_nullable_to_non_nullable
              as MealType,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as MenuStatus,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      weeklyMenu: null == weeklyMenu
          ? _self._weeklyMenu
          : weeklyMenu // ignore: cast_nullable_to_non_nullable
              as Map<String, DailyMenu>,
    ));
  }
}

/// @nodoc
mixin _$DailyMenu {
  List<String> get items;
  List<String>? get sideDishes;
  List<String>? get extras;

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
            const DeepCollectionEquality().equals(other.items, items) &&
            const DeepCollectionEquality()
                .equals(other.sideDishes, sideDishes) &&
            const DeepCollectionEquality().equals(other.extras, extras));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(items),
      const DeepCollectionEquality().hash(sideDishes),
      const DeepCollectionEquality().hash(extras));

  @override
  String toString() {
    return 'DailyMenu(items: $items, sideDishes: $sideDishes, extras: $extras)';
  }
}

/// @nodoc
abstract mixin class $DailyMenuCopyWith<$Res> {
  factory $DailyMenuCopyWith(DailyMenu value, $Res Function(DailyMenu) _then) =
      _$DailyMenuCopyWithImpl;
  @useResult
  $Res call(
      {List<String> items, List<String>? sideDishes, List<String>? extras});
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
    Object? items = null,
    Object? sideDishes = freezed,
    Object? extras = freezed,
  }) {
    return _then(_self.copyWith(
      items: null == items
          ? _self.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sideDishes: freezed == sideDishes
          ? _self.sideDishes
          : sideDishes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      extras: freezed == extras
          ? _self.extras
          : extras // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _DailyMenu implements DailyMenu {
  const _DailyMenu(
      {required final List<String> items,
      final List<String>? sideDishes,
      final List<String>? extras})
      : _items = items,
        _sideDishes = sideDishes,
        _extras = extras;
  factory _DailyMenu.fromJson(Map<String, dynamic> json) =>
      _$DailyMenuFromJson(json);

  final List<String> _items;
  @override
  List<String> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  final List<String>? _sideDishes;
  @override
  List<String>? get sideDishes {
    final value = _sideDishes;
    if (value == null) return null;
    if (_sideDishes is EqualUnmodifiableListView) return _sideDishes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _extras;
  @override
  List<String>? get extras {
    final value = _extras;
    if (value == null) return null;
    if (_extras is EqualUnmodifiableListView) return _extras;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
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
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality()
                .equals(other._sideDishes, _sideDishes) &&
            const DeepCollectionEquality().equals(other._extras, _extras));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(_sideDishes),
      const DeepCollectionEquality().hash(_extras));

  @override
  String toString() {
    return 'DailyMenu(items: $items, sideDishes: $sideDishes, extras: $extras)';
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
      {List<String> items, List<String>? sideDishes, List<String>? extras});
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
    Object? items = null,
    Object? sideDishes = freezed,
    Object? extras = freezed,
  }) {
    return _then(_DailyMenu(
      items: null == items
          ? _self._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sideDishes: freezed == sideDishes
          ? _self._sideDishes
          : sideDishes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      extras: freezed == extras
          ? _self._extras
          : extras // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

// dart format on
