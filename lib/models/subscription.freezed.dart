// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Subscription {
  String? get id;
  String get userId;
  double get price;
  List<MealVendorSelection> get mealSelections;
  DateTime get startDate;
  DateTime get endDate;
  SubscriptionStatus get status;
  bool get isAutoRenewal;

  /// Create a copy of Subscription
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SubscriptionCopyWith<Subscription> get copyWith =>
      _$SubscriptionCopyWithImpl<Subscription>(
          this as Subscription, _$identity);

  /// Serializes this Subscription to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Subscription &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality()
                .equals(other.mealSelections, mealSelections) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isAutoRenewal, isAutoRenewal) ||
                other.isAutoRenewal == isAutoRenewal));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      price,
      const DeepCollectionEquality().hash(mealSelections),
      startDate,
      endDate,
      status,
      isAutoRenewal);

  @override
  String toString() {
    return 'Subscription(id: $id, userId: $userId, price: $price, mealSelections: $mealSelections, startDate: $startDate, endDate: $endDate, status: $status, isAutoRenewal: $isAutoRenewal)';
  }
}

/// @nodoc
abstract mixin class $SubscriptionCopyWith<$Res> {
  factory $SubscriptionCopyWith(
          Subscription value, $Res Function(Subscription) _then) =
      _$SubscriptionCopyWithImpl;
  @useResult
  $Res call(
      {String? id,
      String userId,
      double price,
      List<MealVendorSelection> mealSelections,
      DateTime startDate,
      DateTime endDate,
      SubscriptionStatus status,
      bool isAutoRenewal});
}

/// @nodoc
class _$SubscriptionCopyWithImpl<$Res> implements $SubscriptionCopyWith<$Res> {
  _$SubscriptionCopyWithImpl(this._self, this._then);

  final Subscription _self;
  final $Res Function(Subscription) _then;

  /// Create a copy of Subscription
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = null,
    Object? price = null,
    Object? mealSelections = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? status = null,
    Object? isAutoRenewal = null,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      mealSelections: null == mealSelections
          ? _self.mealSelections
          : mealSelections // ignore: cast_nullable_to_non_nullable
              as List<MealVendorSelection>,
      startDate: null == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as SubscriptionStatus,
      isAutoRenewal: null == isAutoRenewal
          ? _self.isAutoRenewal
          : isAutoRenewal // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Subscription implements Subscription {
  const _Subscription(
      {this.id,
      required this.userId,
      required this.price,
      required final List<MealVendorSelection> mealSelections,
      required this.startDate,
      required this.endDate,
      required this.status,
      this.isAutoRenewal = false})
      : _mealSelections = mealSelections;
  factory _Subscription.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionFromJson(json);

  @override
  final String? id;
  @override
  final String userId;
  @override
  final double price;
  final List<MealVendorSelection> _mealSelections;
  @override
  List<MealVendorSelection> get mealSelections {
    if (_mealSelections is EqualUnmodifiableListView) return _mealSelections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mealSelections);
  }

  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final SubscriptionStatus status;
  @override
  @JsonKey()
  final bool isAutoRenewal;

  /// Create a copy of Subscription
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SubscriptionCopyWith<_Subscription> get copyWith =>
      __$SubscriptionCopyWithImpl<_Subscription>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SubscriptionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Subscription &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality()
                .equals(other._mealSelections, _mealSelections) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isAutoRenewal, isAutoRenewal) ||
                other.isAutoRenewal == isAutoRenewal));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      price,
      const DeepCollectionEquality().hash(_mealSelections),
      startDate,
      endDate,
      status,
      isAutoRenewal);

  @override
  String toString() {
    return 'Subscription(id: $id, userId: $userId, price: $price, mealSelections: $mealSelections, startDate: $startDate, endDate: $endDate, status: $status, isAutoRenewal: $isAutoRenewal)';
  }
}

/// @nodoc
abstract mixin class _$SubscriptionCopyWith<$Res>
    implements $SubscriptionCopyWith<$Res> {
  factory _$SubscriptionCopyWith(
          _Subscription value, $Res Function(_Subscription) _then) =
      __$SubscriptionCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? id,
      String userId,
      double price,
      List<MealVendorSelection> mealSelections,
      DateTime startDate,
      DateTime endDate,
      SubscriptionStatus status,
      bool isAutoRenewal});
}

/// @nodoc
class __$SubscriptionCopyWithImpl<$Res>
    implements _$SubscriptionCopyWith<$Res> {
  __$SubscriptionCopyWithImpl(this._self, this._then);

  final _Subscription _self;
  final $Res Function(_Subscription) _then;

  /// Create a copy of Subscription
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? userId = null,
    Object? price = null,
    Object? mealSelections = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? status = null,
    Object? isAutoRenewal = null,
  }) {
    return _then(_Subscription(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      mealSelections: null == mealSelections
          ? _self._mealSelections
          : mealSelections // ignore: cast_nullable_to_non_nullable
              as List<MealVendorSelection>,
      startDate: null == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as SubscriptionStatus,
      isAutoRenewal: null == isAutoRenewal
          ? _self.isAutoRenewal
          : isAutoRenewal // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
mixin _$MealVendorSelection {
  MealType get mealType;
  List<String> get vendorIds;

  /// Create a copy of MealVendorSelection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MealVendorSelectionCopyWith<MealVendorSelection> get copyWith =>
      _$MealVendorSelectionCopyWithImpl<MealVendorSelection>(
          this as MealVendorSelection, _$identity);

  /// Serializes this MealVendorSelection to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MealVendorSelection &&
            (identical(other.mealType, mealType) ||
                other.mealType == mealType) &&
            const DeepCollectionEquality().equals(other.vendorIds, vendorIds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, mealType, const DeepCollectionEquality().hash(vendorIds));

  @override
  String toString() {
    return 'MealVendorSelection(mealType: $mealType, vendorIds: $vendorIds)';
  }
}

/// @nodoc
abstract mixin class $MealVendorSelectionCopyWith<$Res> {
  factory $MealVendorSelectionCopyWith(
          MealVendorSelection value, $Res Function(MealVendorSelection) _then) =
      _$MealVendorSelectionCopyWithImpl;
  @useResult
  $Res call({MealType mealType, List<String> vendorIds});
}

/// @nodoc
class _$MealVendorSelectionCopyWithImpl<$Res>
    implements $MealVendorSelectionCopyWith<$Res> {
  _$MealVendorSelectionCopyWithImpl(this._self, this._then);

  final MealVendorSelection _self;
  final $Res Function(MealVendorSelection) _then;

  /// Create a copy of MealVendorSelection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mealType = null,
    Object? vendorIds = null,
  }) {
    return _then(_self.copyWith(
      mealType: null == mealType
          ? _self.mealType
          : mealType // ignore: cast_nullable_to_non_nullable
              as MealType,
      vendorIds: null == vendorIds
          ? _self.vendorIds
          : vendorIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _MealVendorSelection implements MealVendorSelection {
  const _MealVendorSelection(
      {required this.mealType, final List<String> vendorIds = const []})
      : _vendorIds = vendorIds;
  factory _MealVendorSelection.fromJson(Map<String, dynamic> json) =>
      _$MealVendorSelectionFromJson(json);

  @override
  final MealType mealType;
  final List<String> _vendorIds;
  @override
  @JsonKey()
  List<String> get vendorIds {
    if (_vendorIds is EqualUnmodifiableListView) return _vendorIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vendorIds);
  }

  /// Create a copy of MealVendorSelection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MealVendorSelectionCopyWith<_MealVendorSelection> get copyWith =>
      __$MealVendorSelectionCopyWithImpl<_MealVendorSelection>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MealVendorSelectionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MealVendorSelection &&
            (identical(other.mealType, mealType) ||
                other.mealType == mealType) &&
            const DeepCollectionEquality()
                .equals(other._vendorIds, _vendorIds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, mealType, const DeepCollectionEquality().hash(_vendorIds));

  @override
  String toString() {
    return 'MealVendorSelection(mealType: $mealType, vendorIds: $vendorIds)';
  }
}

/// @nodoc
abstract mixin class _$MealVendorSelectionCopyWith<$Res>
    implements $MealVendorSelectionCopyWith<$Res> {
  factory _$MealVendorSelectionCopyWith(_MealVendorSelection value,
          $Res Function(_MealVendorSelection) _then) =
      __$MealVendorSelectionCopyWithImpl;
  @override
  @useResult
  $Res call({MealType mealType, List<String> vendorIds});
}

/// @nodoc
class __$MealVendorSelectionCopyWithImpl<$Res>
    implements _$MealVendorSelectionCopyWith<$Res> {
  __$MealVendorSelectionCopyWithImpl(this._self, this._then);

  final _MealVendorSelection _self;
  final $Res Function(_MealVendorSelection) _then;

  /// Create a copy of MealVendorSelection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? mealType = null,
    Object? vendorIds = null,
  }) {
    return _then(_MealVendorSelection(
      mealType: null == mealType
          ? _self.mealType
          : mealType // ignore: cast_nullable_to_non_nullable
              as MealType,
      vendorIds: null == vendorIds
          ? _self._vendorIds
          : vendorIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

// dart format on
