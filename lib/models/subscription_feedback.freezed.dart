// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_feedback.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SubscriptionFeedback {
  String get id;
  String get orderId;
  DateTime get date;
  int get rating;
  String? get comment;
  List<String> get tags;
  List<String>? get images;
  FeedbackType get type;
  String? get vendorResponse;
  DateTime? get vendorResponseDate;

  /// Create a copy of SubscriptionFeedback
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SubscriptionFeedbackCopyWith<SubscriptionFeedback> get copyWith =>
      _$SubscriptionFeedbackCopyWithImpl<SubscriptionFeedback>(
          this as SubscriptionFeedback, _$identity);

  /// Serializes this SubscriptionFeedback to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SubscriptionFeedback &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            const DeepCollectionEquality().equals(other.tags, tags) &&
            const DeepCollectionEquality().equals(other.images, images) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.vendorResponse, vendorResponse) ||
                other.vendorResponse == vendorResponse) &&
            (identical(other.vendorResponseDate, vendorResponseDate) ||
                other.vendorResponseDate == vendorResponseDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      orderId,
      date,
      rating,
      comment,
      const DeepCollectionEquality().hash(tags),
      const DeepCollectionEquality().hash(images),
      type,
      vendorResponse,
      vendorResponseDate);

  @override
  String toString() {
    return 'SubscriptionFeedback(id: $id, orderId: $orderId, date: $date, rating: $rating, comment: $comment, tags: $tags, images: $images, type: $type, vendorResponse: $vendorResponse, vendorResponseDate: $vendorResponseDate)';
  }
}

/// @nodoc
abstract mixin class $SubscriptionFeedbackCopyWith<$Res> {
  factory $SubscriptionFeedbackCopyWith(SubscriptionFeedback value,
          $Res Function(SubscriptionFeedback) _then) =
      _$SubscriptionFeedbackCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String orderId,
      DateTime date,
      int rating,
      String? comment,
      List<String> tags,
      List<String>? images,
      FeedbackType type,
      String? vendorResponse,
      DateTime? vendorResponseDate});
}

/// @nodoc
class _$SubscriptionFeedbackCopyWithImpl<$Res>
    implements $SubscriptionFeedbackCopyWith<$Res> {
  _$SubscriptionFeedbackCopyWithImpl(this._self, this._then);

  final SubscriptionFeedback _self;
  final $Res Function(SubscriptionFeedback) _then;

  /// Create a copy of SubscriptionFeedback
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderId = null,
    Object? date = null,
    Object? rating = null,
    Object? comment = freezed,
    Object? tags = null,
    Object? images = freezed,
    Object? type = null,
    Object? vendorResponse = freezed,
    Object? vendorResponseDate = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      rating: null == rating
          ? _self.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      comment: freezed == comment
          ? _self.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: null == tags
          ? _self.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      images: freezed == images
          ? _self.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as FeedbackType,
      vendorResponse: freezed == vendorResponse
          ? _self.vendorResponse
          : vendorResponse // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorResponseDate: freezed == vendorResponseDate
          ? _self.vendorResponseDate
          : vendorResponseDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _SubscriptionFeedback implements SubscriptionFeedback {
  const _SubscriptionFeedback(
      {required this.id,
      required this.orderId,
      required this.date,
      required this.rating,
      this.comment,
      final List<String> tags = const [],
      final List<String>? images,
      required this.type,
      this.vendorResponse,
      this.vendorResponseDate})
      : _tags = tags,
        _images = images;
  factory _SubscriptionFeedback.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionFeedbackFromJson(json);

  @override
  final String id;
  @override
  final String orderId;
  @override
  final DateTime date;
  @override
  final int rating;
  @override
  final String? comment;
  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  final List<String>? _images;
  @override
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final FeedbackType type;
  @override
  final String? vendorResponse;
  @override
  final DateTime? vendorResponseDate;

  /// Create a copy of SubscriptionFeedback
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SubscriptionFeedbackCopyWith<_SubscriptionFeedback> get copyWith =>
      __$SubscriptionFeedbackCopyWithImpl<_SubscriptionFeedback>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SubscriptionFeedbackToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SubscriptionFeedback &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.vendorResponse, vendorResponse) ||
                other.vendorResponse == vendorResponse) &&
            (identical(other.vendorResponseDate, vendorResponseDate) ||
                other.vendorResponseDate == vendorResponseDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      orderId,
      date,
      rating,
      comment,
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_images),
      type,
      vendorResponse,
      vendorResponseDate);

  @override
  String toString() {
    return 'SubscriptionFeedback(id: $id, orderId: $orderId, date: $date, rating: $rating, comment: $comment, tags: $tags, images: $images, type: $type, vendorResponse: $vendorResponse, vendorResponseDate: $vendorResponseDate)';
  }
}

/// @nodoc
abstract mixin class _$SubscriptionFeedbackCopyWith<$Res>
    implements $SubscriptionFeedbackCopyWith<$Res> {
  factory _$SubscriptionFeedbackCopyWith(_SubscriptionFeedback value,
          $Res Function(_SubscriptionFeedback) _then) =
      __$SubscriptionFeedbackCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String orderId,
      DateTime date,
      int rating,
      String? comment,
      List<String> tags,
      List<String>? images,
      FeedbackType type,
      String? vendorResponse,
      DateTime? vendorResponseDate});
}

/// @nodoc
class __$SubscriptionFeedbackCopyWithImpl<$Res>
    implements _$SubscriptionFeedbackCopyWith<$Res> {
  __$SubscriptionFeedbackCopyWithImpl(this._self, this._then);

  final _SubscriptionFeedback _self;
  final $Res Function(_SubscriptionFeedback) _then;

  /// Create a copy of SubscriptionFeedback
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? orderId = null,
    Object? date = null,
    Object? rating = null,
    Object? comment = freezed,
    Object? tags = null,
    Object? images = freezed,
    Object? type = null,
    Object? vendorResponse = freezed,
    Object? vendorResponseDate = freezed,
  }) {
    return _then(_SubscriptionFeedback(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      rating: null == rating
          ? _self.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      comment: freezed == comment
          ? _self.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: null == tags
          ? _self._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      images: freezed == images
          ? _self._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as FeedbackType,
      vendorResponse: freezed == vendorResponse
          ? _self.vendorResponse
          : vendorResponse // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorResponseDate: freezed == vendorResponseDate
          ? _self.vendorResponseDate
          : vendorResponseDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

// dart format on
