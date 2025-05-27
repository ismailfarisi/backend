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
