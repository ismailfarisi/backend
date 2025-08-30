// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_meal_selection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SubscriptionMealSelection {
  /// ID of the menu item being selected
  String get menuItemId;

  /// Day of the week for this meal selection
  String get dayOfWeek;

  /// Quantity of this meal for the day
  int get quantity;

  /// Create a copy of SubscriptionMealSelection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SubscriptionMealSelectionCopyWith<SubscriptionMealSelection> get copyWith =>
      _$SubscriptionMealSelectionCopyWithImpl<SubscriptionMealSelection>(
          this as SubscriptionMealSelection, _$identity);

  /// Serializes this SubscriptionMealSelection to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SubscriptionMealSelection &&
            (identical(other.menuItemId, menuItemId) ||
                other.menuItemId == menuItemId) &&
            (identical(other.dayOfWeek, dayOfWeek) ||
                other.dayOfWeek == dayOfWeek) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, menuItemId, dayOfWeek, quantity);

  @override
  String toString() {
    return 'SubscriptionMealSelection(menuItemId: $menuItemId, dayOfWeek: $dayOfWeek, quantity: $quantity)';
  }
}

/// @nodoc
abstract mixin class $SubscriptionMealSelectionCopyWith<$Res> {
  factory $SubscriptionMealSelectionCopyWith(SubscriptionMealSelection value,
          $Res Function(SubscriptionMealSelection) _then) =
      _$SubscriptionMealSelectionCopyWithImpl;
  @useResult
  $Res call({String menuItemId, String dayOfWeek, int quantity});
}

/// @nodoc
class _$SubscriptionMealSelectionCopyWithImpl<$Res>
    implements $SubscriptionMealSelectionCopyWith<$Res> {
  _$SubscriptionMealSelectionCopyWithImpl(this._self, this._then);

  final SubscriptionMealSelection _self;
  final $Res Function(SubscriptionMealSelection) _then;

  /// Create a copy of SubscriptionMealSelection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? menuItemId = null,
    Object? dayOfWeek = null,
    Object? quantity = null,
  }) {
    return _then(_self.copyWith(
      menuItemId: null == menuItemId
          ? _self.menuItemId
          : menuItemId // ignore: cast_nullable_to_non_nullable
              as String,
      dayOfWeek: null == dayOfWeek
          ? _self.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _SubscriptionMealSelection implements SubscriptionMealSelection {
  const _SubscriptionMealSelection(
      {required this.menuItemId, required this.dayOfWeek, this.quantity = 1});
  factory _SubscriptionMealSelection.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionMealSelectionFromJson(json);

  /// ID of the menu item being selected
  @override
  final String menuItemId;

  /// Day of the week for this meal selection
  @override
  final String dayOfWeek;

  /// Quantity of this meal for the day
  @override
  @JsonKey()
  final int quantity;

  /// Create a copy of SubscriptionMealSelection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SubscriptionMealSelectionCopyWith<_SubscriptionMealSelection>
      get copyWith =>
          __$SubscriptionMealSelectionCopyWithImpl<_SubscriptionMealSelection>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SubscriptionMealSelectionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SubscriptionMealSelection &&
            (identical(other.menuItemId, menuItemId) ||
                other.menuItemId == menuItemId) &&
            (identical(other.dayOfWeek, dayOfWeek) ||
                other.dayOfWeek == dayOfWeek) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, menuItemId, dayOfWeek, quantity);

  @override
  String toString() {
    return 'SubscriptionMealSelection(menuItemId: $menuItemId, dayOfWeek: $dayOfWeek, quantity: $quantity)';
  }
}

/// @nodoc
abstract mixin class _$SubscriptionMealSelectionCopyWith<$Res>
    implements $SubscriptionMealSelectionCopyWith<$Res> {
  factory _$SubscriptionMealSelectionCopyWith(_SubscriptionMealSelection value,
          $Res Function(_SubscriptionMealSelection) _then) =
      __$SubscriptionMealSelectionCopyWithImpl;
  @override
  @useResult
  $Res call({String menuItemId, String dayOfWeek, int quantity});
}

/// @nodoc
class __$SubscriptionMealSelectionCopyWithImpl<$Res>
    implements _$SubscriptionMealSelectionCopyWith<$Res> {
  __$SubscriptionMealSelectionCopyWithImpl(this._self, this._then);

  final _SubscriptionMealSelection _self;
  final $Res Function(_SubscriptionMealSelection) _then;

  /// Create a copy of SubscriptionMealSelection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? menuItemId = null,
    Object? dayOfWeek = null,
    Object? quantity = null,
  }) {
    return _then(_SubscriptionMealSelection(
      menuItemId: null == menuItemId
          ? _self.menuItemId
          : menuItemId // ignore: cast_nullable_to_non_nullable
              as String,
      dayOfWeek: null == dayOfWeek
          ? _self.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
