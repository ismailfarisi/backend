// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SubscriptionSummary {
  int get totalOrders;
  int get activeSubscriptions;
  int get completedSubscriptions;
  double get totalSpent;
  int get missedDeliveries;
  Map<MealType, int> get mealTypeDistribution;
  double get averageRating;
  List<String> get frequentMeals;
  Map<String, int> get vendorDistribution;

  /// Create a copy of SubscriptionSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SubscriptionSummaryCopyWith<SubscriptionSummary> get copyWith =>
      _$SubscriptionSummaryCopyWithImpl<SubscriptionSummary>(
          this as SubscriptionSummary, _$identity);

  /// Serializes this SubscriptionSummary to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SubscriptionSummary &&
            (identical(other.totalOrders, totalOrders) ||
                other.totalOrders == totalOrders) &&
            (identical(other.activeSubscriptions, activeSubscriptions) ||
                other.activeSubscriptions == activeSubscriptions) &&
            (identical(other.completedSubscriptions, completedSubscriptions) ||
                other.completedSubscriptions == completedSubscriptions) &&
            (identical(other.totalSpent, totalSpent) ||
                other.totalSpent == totalSpent) &&
            (identical(other.missedDeliveries, missedDeliveries) ||
                other.missedDeliveries == missedDeliveries) &&
            const DeepCollectionEquality()
                .equals(other.mealTypeDistribution, mealTypeDistribution) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            const DeepCollectionEquality()
                .equals(other.frequentMeals, frequentMeals) &&
            const DeepCollectionEquality()
                .equals(other.vendorDistribution, vendorDistribution));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      totalOrders,
      activeSubscriptions,
      completedSubscriptions,
      totalSpent,
      missedDeliveries,
      const DeepCollectionEquality().hash(mealTypeDistribution),
      averageRating,
      const DeepCollectionEquality().hash(frequentMeals),
      const DeepCollectionEquality().hash(vendorDistribution));

  @override
  String toString() {
    return 'SubscriptionSummary(totalOrders: $totalOrders, activeSubscriptions: $activeSubscriptions, completedSubscriptions: $completedSubscriptions, totalSpent: $totalSpent, missedDeliveries: $missedDeliveries, mealTypeDistribution: $mealTypeDistribution, averageRating: $averageRating, frequentMeals: $frequentMeals, vendorDistribution: $vendorDistribution)';
  }
}

/// @nodoc
abstract mixin class $SubscriptionSummaryCopyWith<$Res> {
  factory $SubscriptionSummaryCopyWith(
          SubscriptionSummary value, $Res Function(SubscriptionSummary) _then) =
      _$SubscriptionSummaryCopyWithImpl;
  @useResult
  $Res call(
      {int totalOrders,
      int activeSubscriptions,
      int completedSubscriptions,
      double totalSpent,
      int missedDeliveries,
      Map<MealType, int> mealTypeDistribution,
      double averageRating,
      List<String> frequentMeals,
      Map<String, int> vendorDistribution});
}

/// @nodoc
class _$SubscriptionSummaryCopyWithImpl<$Res>
    implements $SubscriptionSummaryCopyWith<$Res> {
  _$SubscriptionSummaryCopyWithImpl(this._self, this._then);

  final SubscriptionSummary _self;
  final $Res Function(SubscriptionSummary) _then;

  /// Create a copy of SubscriptionSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalOrders = null,
    Object? activeSubscriptions = null,
    Object? completedSubscriptions = null,
    Object? totalSpent = null,
    Object? missedDeliveries = null,
    Object? mealTypeDistribution = null,
    Object? averageRating = null,
    Object? frequentMeals = null,
    Object? vendorDistribution = null,
  }) {
    return _then(_self.copyWith(
      totalOrders: null == totalOrders
          ? _self.totalOrders
          : totalOrders // ignore: cast_nullable_to_non_nullable
              as int,
      activeSubscriptions: null == activeSubscriptions
          ? _self.activeSubscriptions
          : activeSubscriptions // ignore: cast_nullable_to_non_nullable
              as int,
      completedSubscriptions: null == completedSubscriptions
          ? _self.completedSubscriptions
          : completedSubscriptions // ignore: cast_nullable_to_non_nullable
              as int,
      totalSpent: null == totalSpent
          ? _self.totalSpent
          : totalSpent // ignore: cast_nullable_to_non_nullable
              as double,
      missedDeliveries: null == missedDeliveries
          ? _self.missedDeliveries
          : missedDeliveries // ignore: cast_nullable_to_non_nullable
              as int,
      mealTypeDistribution: null == mealTypeDistribution
          ? _self.mealTypeDistribution
          : mealTypeDistribution // ignore: cast_nullable_to_non_nullable
              as Map<MealType, int>,
      averageRating: null == averageRating
          ? _self.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
      frequentMeals: null == frequentMeals
          ? _self.frequentMeals
          : frequentMeals // ignore: cast_nullable_to_non_nullable
              as List<String>,
      vendorDistribution: null == vendorDistribution
          ? _self.vendorDistribution
          : vendorDistribution // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _SubscriptionSummary implements SubscriptionSummary {
  const _SubscriptionSummary(
      {required this.totalOrders,
      required this.activeSubscriptions,
      required this.completedSubscriptions,
      required this.totalSpent,
      required this.missedDeliveries,
      required final Map<MealType, int> mealTypeDistribution,
      required this.averageRating,
      required final List<String> frequentMeals,
      required final Map<String, int> vendorDistribution})
      : _mealTypeDistribution = mealTypeDistribution,
        _frequentMeals = frequentMeals,
        _vendorDistribution = vendorDistribution;
  factory _SubscriptionSummary.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionSummaryFromJson(json);

  @override
  final int totalOrders;
  @override
  final int activeSubscriptions;
  @override
  final int completedSubscriptions;
  @override
  final double totalSpent;
  @override
  final int missedDeliveries;
  final Map<MealType, int> _mealTypeDistribution;
  @override
  Map<MealType, int> get mealTypeDistribution {
    if (_mealTypeDistribution is EqualUnmodifiableMapView)
      return _mealTypeDistribution;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_mealTypeDistribution);
  }

  @override
  final double averageRating;
  final List<String> _frequentMeals;
  @override
  List<String> get frequentMeals {
    if (_frequentMeals is EqualUnmodifiableListView) return _frequentMeals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_frequentMeals);
  }

  final Map<String, int> _vendorDistribution;
  @override
  Map<String, int> get vendorDistribution {
    if (_vendorDistribution is EqualUnmodifiableMapView)
      return _vendorDistribution;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_vendorDistribution);
  }

  /// Create a copy of SubscriptionSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SubscriptionSummaryCopyWith<_SubscriptionSummary> get copyWith =>
      __$SubscriptionSummaryCopyWithImpl<_SubscriptionSummary>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SubscriptionSummaryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SubscriptionSummary &&
            (identical(other.totalOrders, totalOrders) ||
                other.totalOrders == totalOrders) &&
            (identical(other.activeSubscriptions, activeSubscriptions) ||
                other.activeSubscriptions == activeSubscriptions) &&
            (identical(other.completedSubscriptions, completedSubscriptions) ||
                other.completedSubscriptions == completedSubscriptions) &&
            (identical(other.totalSpent, totalSpent) ||
                other.totalSpent == totalSpent) &&
            (identical(other.missedDeliveries, missedDeliveries) ||
                other.missedDeliveries == missedDeliveries) &&
            const DeepCollectionEquality()
                .equals(other._mealTypeDistribution, _mealTypeDistribution) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            const DeepCollectionEquality()
                .equals(other._frequentMeals, _frequentMeals) &&
            const DeepCollectionEquality()
                .equals(other._vendorDistribution, _vendorDistribution));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      totalOrders,
      activeSubscriptions,
      completedSubscriptions,
      totalSpent,
      missedDeliveries,
      const DeepCollectionEquality().hash(_mealTypeDistribution),
      averageRating,
      const DeepCollectionEquality().hash(_frequentMeals),
      const DeepCollectionEquality().hash(_vendorDistribution));

  @override
  String toString() {
    return 'SubscriptionSummary(totalOrders: $totalOrders, activeSubscriptions: $activeSubscriptions, completedSubscriptions: $completedSubscriptions, totalSpent: $totalSpent, missedDeliveries: $missedDeliveries, mealTypeDistribution: $mealTypeDistribution, averageRating: $averageRating, frequentMeals: $frequentMeals, vendorDistribution: $vendorDistribution)';
  }
}

/// @nodoc
abstract mixin class _$SubscriptionSummaryCopyWith<$Res>
    implements $SubscriptionSummaryCopyWith<$Res> {
  factory _$SubscriptionSummaryCopyWith(_SubscriptionSummary value,
          $Res Function(_SubscriptionSummary) _then) =
      __$SubscriptionSummaryCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int totalOrders,
      int activeSubscriptions,
      int completedSubscriptions,
      double totalSpent,
      int missedDeliveries,
      Map<MealType, int> mealTypeDistribution,
      double averageRating,
      List<String> frequentMeals,
      Map<String, int> vendorDistribution});
}

/// @nodoc
class __$SubscriptionSummaryCopyWithImpl<$Res>
    implements _$SubscriptionSummaryCopyWith<$Res> {
  __$SubscriptionSummaryCopyWithImpl(this._self, this._then);

  final _SubscriptionSummary _self;
  final $Res Function(_SubscriptionSummary) _then;

  /// Create a copy of SubscriptionSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? totalOrders = null,
    Object? activeSubscriptions = null,
    Object? completedSubscriptions = null,
    Object? totalSpent = null,
    Object? missedDeliveries = null,
    Object? mealTypeDistribution = null,
    Object? averageRating = null,
    Object? frequentMeals = null,
    Object? vendorDistribution = null,
  }) {
    return _then(_SubscriptionSummary(
      totalOrders: null == totalOrders
          ? _self.totalOrders
          : totalOrders // ignore: cast_nullable_to_non_nullable
              as int,
      activeSubscriptions: null == activeSubscriptions
          ? _self.activeSubscriptions
          : activeSubscriptions // ignore: cast_nullable_to_non_nullable
              as int,
      completedSubscriptions: null == completedSubscriptions
          ? _self.completedSubscriptions
          : completedSubscriptions // ignore: cast_nullable_to_non_nullable
              as int,
      totalSpent: null == totalSpent
          ? _self.totalSpent
          : totalSpent // ignore: cast_nullable_to_non_nullable
              as double,
      missedDeliveries: null == missedDeliveries
          ? _self.missedDeliveries
          : missedDeliveries // ignore: cast_nullable_to_non_nullable
              as int,
      mealTypeDistribution: null == mealTypeDistribution
          ? _self._mealTypeDistribution
          : mealTypeDistribution // ignore: cast_nullable_to_non_nullable
              as Map<MealType, int>,
      averageRating: null == averageRating
          ? _self.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
      frequentMeals: null == frequentMeals
          ? _self._frequentMeals
          : frequentMeals // ignore: cast_nullable_to_non_nullable
              as List<String>,
      vendorDistribution: null == vendorDistribution
          ? _self._vendorDistribution
          : vendorDistribution // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ));
  }
}

// dart format on
