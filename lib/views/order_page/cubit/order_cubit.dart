import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../models/meal_selection.dart';
import '../../../models/menu_item.dart';
import '../../../models/subscription.dart';
import '../../../models/subscription_change.dart';
import '../../../models/subscription_feedback.dart';
import '../../../models/subscription_order.dart';
import '../../../models/subscription_summary.dart';
import '../../../utils/enums.dart';

part 'order_state.dart';
part 'order_cubit.freezed.dart';

@injectable
class OrderCubit extends Cubit<OrderState> {
  OrderCubit() : super(const OrderState()) {
    loadOrders();
  }

  Future<void> loadOrders() async {
    try {
      emit(state.copyWith(status: AppStatus.loading));

      // Simulate API call
      await Future.delayed(const Duration(seconds: 1));

      // Mock active subscription
      final activeSubscription = SubscriptionOrder(
        id: '123',
        userId: 'user123',
        vendorId: 'vendor123',
        startDate: DateTime.now().subtract(const Duration(days: 15)),
        endDate: DateTime.now().add(const Duration(days: 15)),
        monthlyAmount: 2999,
        subscribedMeals: [MealType.breakfast, MealType.dinner],
        status: SubscriptionStatus.active,
        paymentStatus: PaymentStatus.completed,
        mealSelections: List.generate(
          30,
          (index) => MealSelection(
            date: DateTime.now().add(Duration(days: index - 15)),
            selectedMeals: {
              MealType.breakfast: const MenuItem(
                id: '1',
                name: 'Masala Dosa',
                description: 'Crispy dosa with potato filling',
                price: 80,
              ),
              MealType.dinner: const MenuItem(
                id: '2',
                name: 'Chapathi Curry',
                description: 'Whole wheat chapathi with curry',
                price: 120,
              ),
            },
            deliveryStatus: index < 0
                ? DeliveryStatus.delivered
                : index == 0
                    ? DeliveryStatus.preparing
                    : DeliveryStatus.scheduled,
          ),
        ),
      );

      // Mock past subscriptions
      final pastSubscriptions = List.generate(
        3,
        (index) => SubscriptionOrder(
          id: 'past$index',
          userId: 'user123',
          vendorId: 'vendor${index + 1}',
          startDate: DateTime.now().subtract(Duration(days: (index + 2) * 30)),
          endDate: DateTime.now().subtract(Duration(days: (index + 1) * 30)),
          monthlyAmount: 2999,
          subscribedMeals: [MealType.breakfast, MealType.dinner],
          status: SubscriptionStatus.expired,
          paymentStatus: PaymentStatus.completed,
          mealSelections: [],
        ),
      );

      // Mock subscription summary
      final summary = SubscriptionSummary(
        totalOrders: 120,
        activeSubscriptions: 1,
        completedSubscriptions: 3,
        totalSpent: 11996,
        missedDeliveries: 2,
        mealTypeDistribution: {
          MealType.breakfast: 45,
          MealType.lunch: 30,
          MealType.dinner: 45,
        },
        averageRating: 4.5,
        frequentMeals: [
          'Masala Dosa',
          'Chapathi Curry',
          'Idli Sambar',
        ],
        vendorDistribution: {
          'Healthy Bites': 60,
          'Home Kitchen': 40,
          'Fresh Meals': 20,
        },
      );

      emit(state.copyWith(
        status: AppStatus.success,
        orders: [activeSubscription, ...pastSubscriptions],
        activeSubscription: activeSubscription,
        summary: summary,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: AppStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }

  Future<void> pauseSubscription(
    String orderId, {
    required DateTime pauseFrom,
    required DateTime pauseUntil,
    String? reason,
  }) async {
    try {
      emit(state.copyWith(actionStatus: AppStatus.loading));

      // Simulate API call
      await Future.delayed(const Duration(seconds: 1));

      final updatedOrder = state.activeSubscription?.copyWith(
        status: SubscriptionStatus.paused,
        pausedFrom: pauseFrom,
        pausedUntil: pauseUntil,
        pauseReason: reason,
        changes: [
          ...?state.activeSubscription?.changes,
          SubscriptionChange(
            id: DateTime.now().millisecondsSinceEpoch.toString(),
            changeDate: DateTime.now(),
            type: ChangeType.pause,
            description: 'Subscription paused',
            reason: reason,
          ),
        ],
      );

      if (updatedOrder != null) {
        final updatedOrders = state.orders
            .map(
              (order) => order.id == orderId ? updatedOrder : order,
            )
            .toList();

        emit(state.copyWith(
          actionStatus: AppStatus.success,
          orders: updatedOrders,
          activeSubscription: updatedOrder,
        ));
      }
    } catch (e) {
      emit(state.copyWith(
        actionStatus: AppStatus.failure,
        actionError: e.toString(),
      ));
    }
  }

  Future<void> resumeSubscription(String orderId) async {
    try {
      emit(state.copyWith(actionStatus: AppStatus.loading));

      // Simulate API call
      await Future.delayed(const Duration(seconds: 1));

      final updatedOrder = state.activeSubscription?.copyWith(
        status: SubscriptionStatus.active,
        pausedFrom: null,
        pausedUntil: null,
        pauseReason: null,
        changes: [
          ...?state.activeSubscription?.changes,
          SubscriptionChange(
            id: DateTime.now().millisecondsSinceEpoch.toString(),
            changeDate: DateTime.now(),
            type: ChangeType.resume,
            description: 'Subscription resumed',
          ),
        ],
      );

      if (updatedOrder != null) {
        final updatedOrders = state.orders
            .map(
              (order) => order.id == orderId ? updatedOrder : order,
            )
            .toList();

        emit(state.copyWith(
          actionStatus: AppStatus.success,
          orders: updatedOrders,
          activeSubscription: updatedOrder,
        ));
      }
    } catch (e) {
      emit(state.copyWith(
        actionStatus: AppStatus.failure,
        actionError: e.toString(),
      ));
    }
  }

  Future<void> cancelSubscription(String orderId,
      {required String reason}) async {
    try {
      emit(state.copyWith(actionStatus: AppStatus.loading));

      // Simulate API call
      await Future.delayed(const Duration(seconds: 1));

      final updatedOrder = state.activeSubscription?.copyWith(
        status: SubscriptionStatus.cancelled,
        cancelReason: reason,
        cancelledAt: DateTime.now(),
        changes: [
          ...?state.activeSubscription?.changes,
          SubscriptionChange(
            id: DateTime.now().millisecondsSinceEpoch.toString(),
            changeDate: DateTime.now(),
            type: ChangeType.cancellation,
            description: 'Subscription cancelled',
            reason: reason,
          ),
        ],
      );

      if (updatedOrder != null) {
        final updatedOrders = state.orders
            .map(
              (order) => order.id == orderId ? updatedOrder : order,
            )
            .toList();

        emit(state.copyWith(
          actionStatus: AppStatus.success,
          orders: updatedOrders,
          activeSubscription: updatedOrder,
        ));
      }
    } catch (e) {
      emit(state.copyWith(
        actionStatus: AppStatus.failure,
        actionError: e.toString(),
      ));
    }
  }

  Future<void> submitFeedback(SubscriptionFeedback feedback) async {
    try {
      emit(state.copyWith(actionStatus: AppStatus.loading));

      // Simulate API call
      await Future.delayed(const Duration(seconds: 1));

      // Update meal selection with feedback ID
      final updatedMealSelections = state.activeSubscription?.mealSelections
          .map(
            (selection) => selection.date.day == feedback.date.day
                ? selection.copyWith(feedbackId: feedback.id)
                : selection,
          )
          .toList();

      final updatedOrder = state.activeSubscription?.copyWith(
        mealSelections: updatedMealSelections ?? [],
      );

      if (updatedOrder != null) {
        final updatedOrders = state.orders
            .map(
              (order) => order.id == updatedOrder.id ? updatedOrder : order,
            )
            .toList();

        emit(state.copyWith(
          actionStatus: AppStatus.success,
          orders: updatedOrders,
          activeSubscription: updatedOrder,
        ));
      }
    } catch (e) {
      emit(state.copyWith(
        actionStatus: AppStatus.failure,
        actionError: e.toString(),
      ));
    }
  }
}
