// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'multi_vendor_subscription_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MultiVendorSubscriptionEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MultiVendorSubscriptionEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MultiVendorSubscriptionEvent()';
  }
}

/// @nodoc
class $MultiVendorSubscriptionEventCopyWith<$Res> {
  $MultiVendorSubscriptionEventCopyWith(MultiVendorSubscriptionEvent _,
      $Res Function(MultiVendorSubscriptionEvent) __);
}

/// @nodoc

class AddVendorToWeek implements MultiVendorSubscriptionEvent {
  const AddVendorToWeek({required this.weekNumber, required this.vendor});

  final int weekNumber;
  final Vendor vendor;

  /// Create a copy of MultiVendorSubscriptionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddVendorToWeekCopyWith<AddVendorToWeek> get copyWith =>
      _$AddVendorToWeekCopyWithImpl<AddVendorToWeek>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddVendorToWeek &&
            (identical(other.weekNumber, weekNumber) ||
                other.weekNumber == weekNumber) &&
            (identical(other.vendor, vendor) || other.vendor == vendor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weekNumber, vendor);

  @override
  String toString() {
    return 'MultiVendorSubscriptionEvent.addVendorToWeek(weekNumber: $weekNumber, vendor: $vendor)';
  }
}

/// @nodoc
abstract mixin class $AddVendorToWeekCopyWith<$Res>
    implements $MultiVendorSubscriptionEventCopyWith<$Res> {
  factory $AddVendorToWeekCopyWith(
          AddVendorToWeek value, $Res Function(AddVendorToWeek) _then) =
      _$AddVendorToWeekCopyWithImpl;
  @useResult
  $Res call({int weekNumber, Vendor vendor});

  $VendorCopyWith<$Res> get vendor;
}

/// @nodoc
class _$AddVendorToWeekCopyWithImpl<$Res>
    implements $AddVendorToWeekCopyWith<$Res> {
  _$AddVendorToWeekCopyWithImpl(this._self, this._then);

  final AddVendorToWeek _self;
  final $Res Function(AddVendorToWeek) _then;

  /// Create a copy of MultiVendorSubscriptionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? weekNumber = null,
    Object? vendor = null,
  }) {
    return _then(AddVendorToWeek(
      weekNumber: null == weekNumber
          ? _self.weekNumber
          : weekNumber // ignore: cast_nullable_to_non_nullable
              as int,
      vendor: null == vendor
          ? _self.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as Vendor,
    ));
  }

  /// Create a copy of MultiVendorSubscriptionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VendorCopyWith<$Res> get vendor {
    return $VendorCopyWith<$Res>(_self.vendor, (value) {
      return _then(_self.copyWith(vendor: value));
    });
  }
}

/// @nodoc

class RemoveVendorFromWeek implements MultiVendorSubscriptionEvent {
  const RemoveVendorFromWeek({required this.weekNumber});

  final int weekNumber;

  /// Create a copy of MultiVendorSubscriptionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RemoveVendorFromWeekCopyWith<RemoveVendorFromWeek> get copyWith =>
      _$RemoveVendorFromWeekCopyWithImpl<RemoveVendorFromWeek>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemoveVendorFromWeek &&
            (identical(other.weekNumber, weekNumber) ||
                other.weekNumber == weekNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weekNumber);

  @override
  String toString() {
    return 'MultiVendorSubscriptionEvent.removeVendorFromWeek(weekNumber: $weekNumber)';
  }
}

/// @nodoc
abstract mixin class $RemoveVendorFromWeekCopyWith<$Res>
    implements $MultiVendorSubscriptionEventCopyWith<$Res> {
  factory $RemoveVendorFromWeekCopyWith(RemoveVendorFromWeek value,
          $Res Function(RemoveVendorFromWeek) _then) =
      _$RemoveVendorFromWeekCopyWithImpl;
  @useResult
  $Res call({int weekNumber});
}

/// @nodoc
class _$RemoveVendorFromWeekCopyWithImpl<$Res>
    implements $RemoveVendorFromWeekCopyWith<$Res> {
  _$RemoveVendorFromWeekCopyWithImpl(this._self, this._then);

  final RemoveVendorFromWeek _self;
  final $Res Function(RemoveVendorFromWeek) _then;

  /// Create a copy of MultiVendorSubscriptionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? weekNumber = null,
  }) {
    return _then(RemoveVendorFromWeek(
      weekNumber: null == weekNumber
          ? _self.weekNumber
          : weekNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class ClearAllSelections implements MultiVendorSubscriptionEvent {
  const ClearAllSelections();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ClearAllSelections);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MultiVendorSubscriptionEvent.clearAllSelections()';
  }
}

/// @nodoc

class SetStartDate implements MultiVendorSubscriptionEvent {
  const SetStartDate({required this.startDate});

  final DateTime startDate;

  /// Create a copy of MultiVendorSubscriptionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SetStartDateCopyWith<SetStartDate> get copyWith =>
      _$SetStartDateCopyWithImpl<SetStartDate>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SetStartDate &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startDate);

  @override
  String toString() {
    return 'MultiVendorSubscriptionEvent.setStartDate(startDate: $startDate)';
  }
}

/// @nodoc
abstract mixin class $SetStartDateCopyWith<$Res>
    implements $MultiVendorSubscriptionEventCopyWith<$Res> {
  factory $SetStartDateCopyWith(
          SetStartDate value, $Res Function(SetStartDate) _then) =
      _$SetStartDateCopyWithImpl;
  @useResult
  $Res call({DateTime startDate});
}

/// @nodoc
class _$SetStartDateCopyWithImpl<$Res> implements $SetStartDateCopyWith<$Res> {
  _$SetStartDateCopyWithImpl(this._self, this._then);

  final SetStartDate _self;
  final $Res Function(SetStartDate) _then;

  /// Create a copy of MultiVendorSubscriptionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? startDate = null,
  }) {
    return _then(SetStartDate(
      startDate: null == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
mixin _$MultiVendorSubscriptionState {
  Map<int, Vendor> get selectedVendorsByWeek;
  DateTime? get startDate;

  /// Create a copy of MultiVendorSubscriptionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MultiVendorSubscriptionStateCopyWith<MultiVendorSubscriptionState>
      get copyWith => _$MultiVendorSubscriptionStateCopyWithImpl<
              MultiVendorSubscriptionState>(
          this as MultiVendorSubscriptionState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MultiVendorSubscriptionState &&
            const DeepCollectionEquality()
                .equals(other.selectedVendorsByWeek, selectedVendorsByWeek) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(selectedVendorsByWeek), startDate);

  @override
  String toString() {
    return 'MultiVendorSubscriptionState(selectedVendorsByWeek: $selectedVendorsByWeek, startDate: $startDate)';
  }
}

/// @nodoc
abstract mixin class $MultiVendorSubscriptionStateCopyWith<$Res> {
  factory $MultiVendorSubscriptionStateCopyWith(
          MultiVendorSubscriptionState value,
          $Res Function(MultiVendorSubscriptionState) _then) =
      _$MultiVendorSubscriptionStateCopyWithImpl;
  @useResult
  $Res call({Map<int, Vendor> selectedVendorsByWeek, DateTime? startDate});
}

/// @nodoc
class _$MultiVendorSubscriptionStateCopyWithImpl<$Res>
    implements $MultiVendorSubscriptionStateCopyWith<$Res> {
  _$MultiVendorSubscriptionStateCopyWithImpl(this._self, this._then);

  final MultiVendorSubscriptionState _self;
  final $Res Function(MultiVendorSubscriptionState) _then;

  /// Create a copy of MultiVendorSubscriptionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedVendorsByWeek = null,
    Object? startDate = freezed,
  }) {
    return _then(_self.copyWith(
      selectedVendorsByWeek: null == selectedVendorsByWeek
          ? _self.selectedVendorsByWeek
          : selectedVendorsByWeek // ignore: cast_nullable_to_non_nullable
              as Map<int, Vendor>,
      startDate: freezed == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _MultiVendorSubscriptionState implements MultiVendorSubscriptionState {
  const _MultiVendorSubscriptionState(
      {final Map<int, Vendor> selectedVendorsByWeek = const <int, Vendor>{},
      this.startDate})
      : _selectedVendorsByWeek = selectedVendorsByWeek;

  final Map<int, Vendor> _selectedVendorsByWeek;
  @override
  @JsonKey()
  Map<int, Vendor> get selectedVendorsByWeek {
    if (_selectedVendorsByWeek is EqualUnmodifiableMapView)
      return _selectedVendorsByWeek;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_selectedVendorsByWeek);
  }

  @override
  final DateTime? startDate;

  /// Create a copy of MultiVendorSubscriptionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MultiVendorSubscriptionStateCopyWith<_MultiVendorSubscriptionState>
      get copyWith => __$MultiVendorSubscriptionStateCopyWithImpl<
          _MultiVendorSubscriptionState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MultiVendorSubscriptionState &&
            const DeepCollectionEquality()
                .equals(other._selectedVendorsByWeek, _selectedVendorsByWeek) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_selectedVendorsByWeek), startDate);

  @override
  String toString() {
    return 'MultiVendorSubscriptionState(selectedVendorsByWeek: $selectedVendorsByWeek, startDate: $startDate)';
  }
}

/// @nodoc
abstract mixin class _$MultiVendorSubscriptionStateCopyWith<$Res>
    implements $MultiVendorSubscriptionStateCopyWith<$Res> {
  factory _$MultiVendorSubscriptionStateCopyWith(
          _MultiVendorSubscriptionState value,
          $Res Function(_MultiVendorSubscriptionState) _then) =
      __$MultiVendorSubscriptionStateCopyWithImpl;
  @override
  @useResult
  $Res call({Map<int, Vendor> selectedVendorsByWeek, DateTime? startDate});
}

/// @nodoc
class __$MultiVendorSubscriptionStateCopyWithImpl<$Res>
    implements _$MultiVendorSubscriptionStateCopyWith<$Res> {
  __$MultiVendorSubscriptionStateCopyWithImpl(this._self, this._then);

  final _MultiVendorSubscriptionState _self;
  final $Res Function(_MultiVendorSubscriptionState) _then;

  /// Create a copy of MultiVendorSubscriptionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? selectedVendorsByWeek = null,
    Object? startDate = freezed,
  }) {
    return _then(_MultiVendorSubscriptionState(
      selectedVendorsByWeek: null == selectedVendorsByWeek
          ? _self._selectedVendorsByWeek
          : selectedVendorsByWeek // ignore: cast_nullable_to_non_nullable
              as Map<int, Vendor>,
      startDate: freezed == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

// dart format on
