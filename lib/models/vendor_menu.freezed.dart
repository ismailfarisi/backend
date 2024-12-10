// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vendor_menu.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VendorMenu _$VendorMenuFromJson(Map<String, dynamic> json) {
  return _VendorMenu.fromJson(json);
}

/// @nodoc
mixin _$VendorMenu {
  String get id => throw _privateConstructorUsedError;
  String get vendorId => throw _privateConstructorUsedError;
  MealType get mealType => throw _privateConstructorUsedError;
  MenuStatus get status => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  Map<String, DailyMenu> get weeklyMenu => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VendorMenuCopyWith<VendorMenu> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorMenuCopyWith<$Res> {
  factory $VendorMenuCopyWith(
          VendorMenu value, $Res Function(VendorMenu) then) =
      _$VendorMenuCopyWithImpl<$Res, VendorMenu>;
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
class _$VendorMenuCopyWithImpl<$Res, $Val extends VendorMenu>
    implements $VendorMenuCopyWith<$Res> {
  _$VendorMenuCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String,
      mealType: null == mealType
          ? _value.mealType
          : mealType // ignore: cast_nullable_to_non_nullable
              as MealType,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MenuStatus,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      weeklyMenu: null == weeklyMenu
          ? _value.weeklyMenu
          : weeklyMenu // ignore: cast_nullable_to_non_nullable
              as Map<String, DailyMenu>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VendorMenuImplCopyWith<$Res>
    implements $VendorMenuCopyWith<$Res> {
  factory _$$VendorMenuImplCopyWith(
          _$VendorMenuImpl value, $Res Function(_$VendorMenuImpl) then) =
      __$$VendorMenuImplCopyWithImpl<$Res>;
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
class __$$VendorMenuImplCopyWithImpl<$Res>
    extends _$VendorMenuCopyWithImpl<$Res, _$VendorMenuImpl>
    implements _$$VendorMenuImplCopyWith<$Res> {
  __$$VendorMenuImplCopyWithImpl(
      _$VendorMenuImpl _value, $Res Function(_$VendorMenuImpl) _then)
      : super(_value, _then);

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
    return _then(_$VendorMenuImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String,
      mealType: null == mealType
          ? _value.mealType
          : mealType // ignore: cast_nullable_to_non_nullable
              as MealType,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MenuStatus,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      weeklyMenu: null == weeklyMenu
          ? _value._weeklyMenu
          : weeklyMenu // ignore: cast_nullable_to_non_nullable
              as Map<String, DailyMenu>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VendorMenuImpl implements _VendorMenu {
  const _$VendorMenuImpl(
      {required this.id,
      required this.vendorId,
      required this.mealType,
      required this.status,
      required this.description,
      required this.price,
      required final Map<String, DailyMenu> weeklyMenu})
      : _weeklyMenu = weeklyMenu;

  factory _$VendorMenuImpl.fromJson(Map<String, dynamic> json) =>
      _$$VendorMenuImplFromJson(json);

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

  @override
  String toString() {
    return 'VendorMenu(id: $id, vendorId: $vendorId, mealType: $mealType, status: $status, description: $description, price: $price, weeklyMenu: $weeklyMenu)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendorMenuImpl &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, vendorId, mealType, status,
      description, price, const DeepCollectionEquality().hash(_weeklyMenu));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VendorMenuImplCopyWith<_$VendorMenuImpl> get copyWith =>
      __$$VendorMenuImplCopyWithImpl<_$VendorMenuImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VendorMenuImplToJson(
      this,
    );
  }
}

abstract class _VendorMenu implements VendorMenu {
  const factory _VendorMenu(
      {required final String id,
      required final String vendorId,
      required final MealType mealType,
      required final MenuStatus status,
      required final String description,
      required final double price,
      required final Map<String, DailyMenu> weeklyMenu}) = _$VendorMenuImpl;

  factory _VendorMenu.fromJson(Map<String, dynamic> json) =
      _$VendorMenuImpl.fromJson;

  @override
  String get id;
  @override
  String get vendorId;
  @override
  MealType get mealType;
  @override
  MenuStatus get status;
  @override
  String get description;
  @override
  double get price;
  @override
  Map<String, DailyMenu> get weeklyMenu;
  @override
  @JsonKey(ignore: true)
  _$$VendorMenuImplCopyWith<_$VendorMenuImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DailyMenu _$DailyMenuFromJson(Map<String, dynamic> json) {
  return _DailyMenu.fromJson(json);
}

/// @nodoc
mixin _$DailyMenu {
  List<String> get items => throw _privateConstructorUsedError;
  List<String>? get sideDishes => throw _privateConstructorUsedError;
  List<String>? get extras => throw _privateConstructorUsedError;

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
      {List<String> items, List<String>? sideDishes, List<String>? extras});
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
    Object? items = null,
    Object? sideDishes = freezed,
    Object? extras = freezed,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sideDishes: freezed == sideDishes
          ? _value.sideDishes
          : sideDishes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      extras: freezed == extras
          ? _value.extras
          : extras // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
      {List<String> items, List<String>? sideDishes, List<String>? extras});
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
    Object? items = null,
    Object? sideDishes = freezed,
    Object? extras = freezed,
  }) {
    return _then(_$DailyMenuImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sideDishes: freezed == sideDishes
          ? _value._sideDishes
          : sideDishes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      extras: freezed == extras
          ? _value._extras
          : extras // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyMenuImpl implements _DailyMenu {
  const _$DailyMenuImpl(
      {required final List<String> items,
      final List<String>? sideDishes,
      final List<String>? extras})
      : _items = items,
        _sideDishes = sideDishes,
        _extras = extras;

  factory _$DailyMenuImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyMenuImplFromJson(json);

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

  @override
  String toString() {
    return 'DailyMenu(items: $items, sideDishes: $sideDishes, extras: $extras)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyMenuImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality()
                .equals(other._sideDishes, _sideDishes) &&
            const DeepCollectionEquality().equals(other._extras, _extras));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(_sideDishes),
      const DeepCollectionEquality().hash(_extras));

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
      {required final List<String> items,
      final List<String>? sideDishes,
      final List<String>? extras}) = _$DailyMenuImpl;

  factory _DailyMenu.fromJson(Map<String, dynamic> json) =
      _$DailyMenuImpl.fromJson;

  @override
  List<String> get items;
  @override
  List<String>? get sideDishes;
  @override
  List<String>? get extras;
  @override
  @JsonKey(ignore: true)
  _$$DailyMenuImplCopyWith<_$DailyMenuImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
