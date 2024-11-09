// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vendor_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
