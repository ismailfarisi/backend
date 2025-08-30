// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weekly_vendor_assignment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WeeklyVendorAssignment {
  /// Week number in the subscription cycle (1-4)
  @JsonKey(name: 'week_number')
  int get weekNumber;

  /// ID of the vendor assigned to this week
  @JsonKey(name: 'vendor_id')
  String get vendorId;

  /// Start date of the week
  @JsonKey(name: 'week_start_date')
  DateTime get weekStartDate;

  /// End date of the week
  @JsonKey(name: 'week_end_date')
  DateTime get weekEndDate;

  /// Create a copy of WeeklyVendorAssignment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WeeklyVendorAssignmentCopyWith<WeeklyVendorAssignment> get copyWith =>
      _$WeeklyVendorAssignmentCopyWithImpl<WeeklyVendorAssignment>(
          this as WeeklyVendorAssignment, _$identity);

  /// Serializes this WeeklyVendorAssignment to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WeeklyVendorAssignment &&
            (identical(other.weekNumber, weekNumber) ||
                other.weekNumber == weekNumber) &&
            (identical(other.vendorId, vendorId) ||
                other.vendorId == vendorId) &&
            (identical(other.weekStartDate, weekStartDate) ||
                other.weekStartDate == weekStartDate) &&
            (identical(other.weekEndDate, weekEndDate) ||
                other.weekEndDate == weekEndDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, weekNumber, vendorId, weekStartDate, weekEndDate);

  @override
  String toString() {
    return 'WeeklyVendorAssignment(weekNumber: $weekNumber, vendorId: $vendorId, weekStartDate: $weekStartDate, weekEndDate: $weekEndDate)';
  }
}

/// @nodoc
abstract mixin class $WeeklyVendorAssignmentCopyWith<$Res> {
  factory $WeeklyVendorAssignmentCopyWith(WeeklyVendorAssignment value,
          $Res Function(WeeklyVendorAssignment) _then) =
      _$WeeklyVendorAssignmentCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'week_number') int weekNumber,
      @JsonKey(name: 'vendor_id') String vendorId,
      @JsonKey(name: 'week_start_date') DateTime weekStartDate,
      @JsonKey(name: 'week_end_date') DateTime weekEndDate});
}

/// @nodoc
class _$WeeklyVendorAssignmentCopyWithImpl<$Res>
    implements $WeeklyVendorAssignmentCopyWith<$Res> {
  _$WeeklyVendorAssignmentCopyWithImpl(this._self, this._then);

  final WeeklyVendorAssignment _self;
  final $Res Function(WeeklyVendorAssignment) _then;

  /// Create a copy of WeeklyVendorAssignment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weekNumber = null,
    Object? vendorId = null,
    Object? weekStartDate = null,
    Object? weekEndDate = null,
  }) {
    return _then(_self.copyWith(
      weekNumber: null == weekNumber
          ? _self.weekNumber
          : weekNumber // ignore: cast_nullable_to_non_nullable
              as int,
      vendorId: null == vendorId
          ? _self.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String,
      weekStartDate: null == weekStartDate
          ? _self.weekStartDate
          : weekStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      weekEndDate: null == weekEndDate
          ? _self.weekEndDate
          : weekEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _WeeklyVendorAssignment implements WeeklyVendorAssignment {
  const _WeeklyVendorAssignment(
      {@JsonKey(name: 'week_number') required this.weekNumber,
      @JsonKey(name: 'vendor_id') required this.vendorId,
      @JsonKey(name: 'week_start_date') required this.weekStartDate,
      @JsonKey(name: 'week_end_date') required this.weekEndDate});
  factory _WeeklyVendorAssignment.fromJson(Map<String, dynamic> json) =>
      _$WeeklyVendorAssignmentFromJson(json);

  /// Week number in the subscription cycle (1-4)
  @override
  @JsonKey(name: 'week_number')
  final int weekNumber;

  /// ID of the vendor assigned to this week
  @override
  @JsonKey(name: 'vendor_id')
  final String vendorId;

  /// Start date of the week
  @override
  @JsonKey(name: 'week_start_date')
  final DateTime weekStartDate;

  /// End date of the week
  @override
  @JsonKey(name: 'week_end_date')
  final DateTime weekEndDate;

  /// Create a copy of WeeklyVendorAssignment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WeeklyVendorAssignmentCopyWith<_WeeklyVendorAssignment> get copyWith =>
      __$WeeklyVendorAssignmentCopyWithImpl<_WeeklyVendorAssignment>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WeeklyVendorAssignmentToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeeklyVendorAssignment &&
            (identical(other.weekNumber, weekNumber) ||
                other.weekNumber == weekNumber) &&
            (identical(other.vendorId, vendorId) ||
                other.vendorId == vendorId) &&
            (identical(other.weekStartDate, weekStartDate) ||
                other.weekStartDate == weekStartDate) &&
            (identical(other.weekEndDate, weekEndDate) ||
                other.weekEndDate == weekEndDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, weekNumber, vendorId, weekStartDate, weekEndDate);

  @override
  String toString() {
    return 'WeeklyVendorAssignment(weekNumber: $weekNumber, vendorId: $vendorId, weekStartDate: $weekStartDate, weekEndDate: $weekEndDate)';
  }
}

/// @nodoc
abstract mixin class _$WeeklyVendorAssignmentCopyWith<$Res>
    implements $WeeklyVendorAssignmentCopyWith<$Res> {
  factory _$WeeklyVendorAssignmentCopyWith(_WeeklyVendorAssignment value,
          $Res Function(_WeeklyVendorAssignment) _then) =
      __$WeeklyVendorAssignmentCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'week_number') int weekNumber,
      @JsonKey(name: 'vendor_id') String vendorId,
      @JsonKey(name: 'week_start_date') DateTime weekStartDate,
      @JsonKey(name: 'week_end_date') DateTime weekEndDate});
}

/// @nodoc
class __$WeeklyVendorAssignmentCopyWithImpl<$Res>
    implements _$WeeklyVendorAssignmentCopyWith<$Res> {
  __$WeeklyVendorAssignmentCopyWithImpl(this._self, this._then);

  final _WeeklyVendorAssignment _self;
  final $Res Function(_WeeklyVendorAssignment) _then;

  /// Create a copy of WeeklyVendorAssignment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? weekNumber = null,
    Object? vendorId = null,
    Object? weekStartDate = null,
    Object? weekEndDate = null,
  }) {
    return _then(_WeeklyVendorAssignment(
      weekNumber: null == weekNumber
          ? _self.weekNumber
          : weekNumber // ignore: cast_nullable_to_non_nullable
              as int,
      vendorId: null == vendorId
          ? _self.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String,
      weekStartDate: null == weekStartDate
          ? _self.weekStartDate
          : weekStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      weekEndDate: null == weekEndDate
          ? _self.weekEndDate
          : weekEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

// dart format on
