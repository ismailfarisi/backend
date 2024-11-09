import 'package:freezed_annotation/freezed_annotation.dart';
part 'subscription_feedback.freezed.dart';
part 'subscription_feedback.g.dart';

@freezed
class SubscriptionFeedback with _$SubscriptionFeedback {
  const factory SubscriptionFeedback({
    required String id,
    required String orderId,
    required DateTime date,
    required int rating,
    String? comment,
    @Default([]) List<String> tags,
    List<String>? images,
    required FeedbackType type,
    String? vendorResponse,
    DateTime? vendorResponseDate,
  }) = _SubscriptionFeedback;

  factory SubscriptionFeedback.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionFeedbackFromJson(json);
}

enum FeedbackType {
  meal,
  delivery,
  overall;

  String get displayName {
    switch (this) {
      case FeedbackType.meal:
        return 'Meal Quality';
      case FeedbackType.delivery:
        return 'Delivery Service';
      case FeedbackType.overall:
        return 'Overall Experience';
    }
  }
}
