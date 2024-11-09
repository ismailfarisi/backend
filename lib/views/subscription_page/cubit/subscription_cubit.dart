import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meal_app/models/vendor.dart';

import '../../../models/subscription.dart';

part 'subscription_state.dart';
part 'subscription_cubit.freezed.dart';

class SubscriptionCubit extends Cubit<SubscriptionState> {
  SubscriptionCubit() : super(SubscriptionState.initial());
}
