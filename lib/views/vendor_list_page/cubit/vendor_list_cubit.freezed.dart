// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vendor_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VendorListState {
  List<Vendor> get vendors;
  List<Vendor> get filteredVendors;
  AppStatus get status;
  String? get errorMessage;
  String get searchQuery;
  String? get selectedCuisineFilter;
  VendorSortOption get sortOption;

  /// Create a copy of VendorListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VendorListStateCopyWith<VendorListState> get copyWith =>
      _$VendorListStateCopyWithImpl<VendorListState>(
          this as VendorListState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VendorListState &&
            const DeepCollectionEquality().equals(other.vendors, vendors) &&
            const DeepCollectionEquality()
                .equals(other.filteredVendors, filteredVendors) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.selectedCuisineFilter, selectedCuisineFilter) ||
                other.selectedCuisineFilter == selectedCuisineFilter) &&
            (identical(other.sortOption, sortOption) ||
                other.sortOption == sortOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(vendors),
      const DeepCollectionEquality().hash(filteredVendors),
      status,
      errorMessage,
      searchQuery,
      selectedCuisineFilter,
      sortOption);

  @override
  String toString() {
    return 'VendorListState(vendors: $vendors, filteredVendors: $filteredVendors, status: $status, errorMessage: $errorMessage, searchQuery: $searchQuery, selectedCuisineFilter: $selectedCuisineFilter, sortOption: $sortOption)';
  }
}

/// @nodoc
abstract mixin class $VendorListStateCopyWith<$Res> {
  factory $VendorListStateCopyWith(
          VendorListState value, $Res Function(VendorListState) _then) =
      _$VendorListStateCopyWithImpl;
  @useResult
  $Res call(
      {List<Vendor> vendors,
      List<Vendor> filteredVendors,
      AppStatus status,
      String? errorMessage,
      String searchQuery,
      String? selectedCuisineFilter,
      VendorSortOption sortOption});
}

/// @nodoc
class _$VendorListStateCopyWithImpl<$Res>
    implements $VendorListStateCopyWith<$Res> {
  _$VendorListStateCopyWithImpl(this._self, this._then);

  final VendorListState _self;
  final $Res Function(VendorListState) _then;

  /// Create a copy of VendorListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vendors = null,
    Object? filteredVendors = null,
    Object? status = null,
    Object? errorMessage = freezed,
    Object? searchQuery = null,
    Object? selectedCuisineFilter = freezed,
    Object? sortOption = null,
  }) {
    return _then(_self.copyWith(
      vendors: null == vendors
          ? _self.vendors
          : vendors // ignore: cast_nullable_to_non_nullable
              as List<Vendor>,
      filteredVendors: null == filteredVendors
          ? _self.filteredVendors
          : filteredVendors // ignore: cast_nullable_to_non_nullable
              as List<Vendor>,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      searchQuery: null == searchQuery
          ? _self.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      selectedCuisineFilter: freezed == selectedCuisineFilter
          ? _self.selectedCuisineFilter
          : selectedCuisineFilter // ignore: cast_nullable_to_non_nullable
              as String?,
      sortOption: null == sortOption
          ? _self.sortOption
          : sortOption // ignore: cast_nullable_to_non_nullable
              as VendorSortOption,
    ));
  }
}

/// @nodoc

class _VendorListState implements VendorListState {
  const _VendorListState(
      {final List<Vendor> vendors = const [],
      final List<Vendor> filteredVendors = const [],
      this.status = AppStatus.init,
      this.errorMessage,
      this.searchQuery = '',
      this.selectedCuisineFilter,
      this.sortOption = VendorSortOption.rating})
      : _vendors = vendors,
        _filteredVendors = filteredVendors;

  final List<Vendor> _vendors;
  @override
  @JsonKey()
  List<Vendor> get vendors {
    if (_vendors is EqualUnmodifiableListView) return _vendors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vendors);
  }

  final List<Vendor> _filteredVendors;
  @override
  @JsonKey()
  List<Vendor> get filteredVendors {
    if (_filteredVendors is EqualUnmodifiableListView) return _filteredVendors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredVendors);
  }

  @override
  @JsonKey()
  final AppStatus status;
  @override
  final String? errorMessage;
  @override
  @JsonKey()
  final String searchQuery;
  @override
  final String? selectedCuisineFilter;
  @override
  @JsonKey()
  final VendorSortOption sortOption;

  /// Create a copy of VendorListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VendorListStateCopyWith<_VendorListState> get copyWith =>
      __$VendorListStateCopyWithImpl<_VendorListState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VendorListState &&
            const DeepCollectionEquality().equals(other._vendors, _vendors) &&
            const DeepCollectionEquality()
                .equals(other._filteredVendors, _filteredVendors) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.selectedCuisineFilter, selectedCuisineFilter) ||
                other.selectedCuisineFilter == selectedCuisineFilter) &&
            (identical(other.sortOption, sortOption) ||
                other.sortOption == sortOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_vendors),
      const DeepCollectionEquality().hash(_filteredVendors),
      status,
      errorMessage,
      searchQuery,
      selectedCuisineFilter,
      sortOption);

  @override
  String toString() {
    return 'VendorListState(vendors: $vendors, filteredVendors: $filteredVendors, status: $status, errorMessage: $errorMessage, searchQuery: $searchQuery, selectedCuisineFilter: $selectedCuisineFilter, sortOption: $sortOption)';
  }
}

/// @nodoc
abstract mixin class _$VendorListStateCopyWith<$Res>
    implements $VendorListStateCopyWith<$Res> {
  factory _$VendorListStateCopyWith(
          _VendorListState value, $Res Function(_VendorListState) _then) =
      __$VendorListStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<Vendor> vendors,
      List<Vendor> filteredVendors,
      AppStatus status,
      String? errorMessage,
      String searchQuery,
      String? selectedCuisineFilter,
      VendorSortOption sortOption});
}

/// @nodoc
class __$VendorListStateCopyWithImpl<$Res>
    implements _$VendorListStateCopyWith<$Res> {
  __$VendorListStateCopyWithImpl(this._self, this._then);

  final _VendorListState _self;
  final $Res Function(_VendorListState) _then;

  /// Create a copy of VendorListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? vendors = null,
    Object? filteredVendors = null,
    Object? status = null,
    Object? errorMessage = freezed,
    Object? searchQuery = null,
    Object? selectedCuisineFilter = freezed,
    Object? sortOption = null,
  }) {
    return _then(_VendorListState(
      vendors: null == vendors
          ? _self._vendors
          : vendors // ignore: cast_nullable_to_non_nullable
              as List<Vendor>,
      filteredVendors: null == filteredVendors
          ? _self._filteredVendors
          : filteredVendors // ignore: cast_nullable_to_non_nullable
              as List<Vendor>,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      searchQuery: null == searchQuery
          ? _self.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      selectedCuisineFilter: freezed == selectedCuisineFilter
          ? _self.selectedCuisineFilter
          : selectedCuisineFilter // ignore: cast_nullable_to_non_nullable
              as String?,
      sortOption: null == sortOption
          ? _self.sortOption
          : sortOption // ignore: cast_nullable_to_non_nullable
              as VendorSortOption,
    ));
  }
}

// dart format on
