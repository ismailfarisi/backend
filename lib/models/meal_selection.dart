import 'package:freezed_annotation/freezed_annotation.dart';

import 'menu_item.dart';
import 'subscription.dart';

part 'meal_selection.freezed.dart';
part 'meal_selection.g.dart';

@freezed
class MealSelection with _$MealSelection {
  const factory MealSelection({
    required DateTime date,
    required Map<MealType, MenuItem> selectedMeals,
    @Default(DeliveryStatus.scheduled) DeliveryStatus deliveryStatus,
    DateTime? deliveredAt,
    String? deliveryNote,
    String? feedbackId,
  }) = _MealSelection;

  factory MealSelection.fromJson(Map<String, dynamic> json) =>
      _$MealSelectionFromJson(json);
}

enum DeliveryStatus {
  scheduled,
  preparing,
  outForDelivery,
  delivered,
  missed,
  cancelled;

  String get displayName {
    switch (this) {
      case DeliveryStatus.scheduled:
        return 'Scheduled';
      case DeliveryStatus.preparing:
        return 'Preparing';
      case DeliveryStatus.outForDelivery:
        return 'Out for Delivery';
      case DeliveryStatus.delivered:
        return 'Delivered';
      case DeliveryStatus.missed:
        return 'Missed';
      case DeliveryStatus.cancelled:
        return 'Cancelled';
    }
  }
}
