// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_feedback.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubscriptionFeedback _$SubscriptionFeedbackFromJson(Map<String, dynamic> json) {
  return _SubscriptionFeedback.fromJson(json);
}

/// @nodoc
mixin _$SubscriptionFeedback {
  String get id => throw _privateConstructorUsedError;
  String get orderId => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;
  FeedbackType get type => throw _privateConstructorUsedError;
  String? get vendorResponse => throw _privateConstructorUsedError;
  DateTime? get vendorResponseDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscriptionFeedbackCopyWith<SubscriptionFeedback> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionFeedbackCopyWith<$Res> {
  factory $SubscriptionFeedbackCopyWith(SubscriptionFeedback value,
          $Res Function(SubscriptionFeedback) then) =
      _$SubscriptionFeedbackCopyWithImpl<$Res, SubscriptionFeedback>;
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
class _$SubscriptionFeedbackCopyWithImpl<$Res,
        $Val extends SubscriptionFeedback>
    implements $SubscriptionFeedbackCopyWith<$Res> {
  _$SubscriptionFeedbackCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FeedbackType,
      vendorResponse: freezed == vendorResponse
          ? _value.vendorResponse
          : vendorResponse // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorResponseDate: freezed == vendorResponseDate
          ? _value.vendorResponseDate
          : vendorResponseDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubscriptionFeedbackImplCopyWith<$Res>
    implements $SubscriptionFeedbackCopyWith<$Res> {
  factory _$$SubscriptionFeedbackImplCopyWith(_$SubscriptionFeedbackImpl value,
          $Res Function(_$SubscriptionFeedbackImpl) then) =
      __$$SubscriptionFeedbackImplCopyWithImpl<$Res>;
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
class __$$SubscriptionFeedbackImplCopyWithImpl<$Res>
    extends _$SubscriptionFeedbackCopyWithImpl<$Res, _$SubscriptionFeedbackImpl>
    implements _$$SubscriptionFeedbackImplCopyWith<$Res> {
  __$$SubscriptionFeedbackImplCopyWithImpl(_$SubscriptionFeedbackImpl _value,
      $Res Function(_$SubscriptionFeedbackImpl) _then)
      : super(_value, _then);

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
    return _then(_$SubscriptionFeedbackImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FeedbackType,
      vendorResponse: freezed == vendorResponse
          ? _value.vendorResponse
          : vendorResponse // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorResponseDate: freezed == vendorResponseDate
          ? _value.vendorResponseDate
          : vendorResponseDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscriptionFeedbackImpl implements _SubscriptionFeedback {
  const _$SubscriptionFeedbackImpl(
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

  factory _$SubscriptionFeedbackImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubscriptionFeedbackImplFromJson(json);

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

  @override
  String toString() {
    return 'SubscriptionFeedback(id: $id, orderId: $orderId, date: $date, rating: $rating, comment: $comment, tags: $tags, images: $images, type: $type, vendorResponse: $vendorResponse, vendorResponseDate: $vendorResponseDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionFeedbackImpl &&
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

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionFeedbackImplCopyWith<_$SubscriptionFeedbackImpl>
      get copyWith =>
          __$$SubscriptionFeedbackImplCopyWithImpl<_$SubscriptionFeedbackImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionFeedbackImplToJson(
      this,
    );
  }
}

abstract class _SubscriptionFeedback implements SubscriptionFeedback {
  const factory _SubscriptionFeedback(
      {required final String id,
      required final String orderId,
      required final DateTime date,
      required final int rating,
      final String? comment,
      final List<String> tags,
      final List<String>? images,
      required final FeedbackType type,
      final String? vendorResponse,
      final DateTime? vendorResponseDate}) = _$SubscriptionFeedbackImpl;

  factory _SubscriptionFeedback.fromJson(Map<String, dynamic> json) =
      _$SubscriptionFeedbackImpl.fromJson;

  @override
  String get id;
  @override
  String get orderId;
  @override
  DateTime get date;
  @override
  int get rating;
  @override
  String? get comment;
  @override
  List<String> get tags;
  @override
  List<String>? get images;
  @override
  FeedbackType get type;
  @override
  String? get vendorResponse;
  @override
  DateTime? get vendorResponseDate;
  @override
  @JsonKey(ignore: true)
  _$$SubscriptionFeedbackImplCopyWith<_$SubscriptionFeedbackImpl>
      get copyWith => throw _privateConstructorUsedError;
}
