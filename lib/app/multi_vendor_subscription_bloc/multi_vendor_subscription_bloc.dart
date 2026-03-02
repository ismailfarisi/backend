import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../models/vendor.dart';

part 'multi_vendor_subscription_event.dart';
part 'multi_vendor_subscription_state.dart';
part 'multi_vendor_subscription_bloc.freezed.dart';

@singleton
class MultiVendorSubscriptionBloc
    extends Bloc<MultiVendorSubscriptionEvent, MultiVendorSubscriptionState> {
  MultiVendorSubscriptionBloc() : super(const MultiVendorSubscriptionState()) {
    on<AddVendorToWeek>(_onAddVendorToWeek);
    on<RemoveVendorFromWeek>(_onRemoveVendorFromWeek);
    on<ClearAllSelections>(_onClearAllSelections);
    on<SetStartDate>(_onSetStartDate);
  }

  void _onAddVendorToWeek(
    AddVendorToWeek event,
    Emitter<MultiVendorSubscriptionState> emit,
  ) {
    final updatedSelections = Map<int, Vendor>.from(state.selectedVendorsByWeek);
    updatedSelections[event.weekNumber] = event.vendor;

    emit(state.copyWith(selectedVendorsByWeek: updatedSelections));
  }

  void _onRemoveVendorFromWeek(
    RemoveVendorFromWeek event,
    Emitter<MultiVendorSubscriptionState> emit,
  ) {
    final updatedSelections = Map<int, Vendor>.from(state.selectedVendorsByWeek);
    updatedSelections.remove(event.weekNumber);

    emit(state.copyWith(selectedVendorsByWeek: updatedSelections));
  }

  void _onClearAllSelections(
    ClearAllSelections event,
    Emitter<MultiVendorSubscriptionState> emit,
  ) {
    emit(const MultiVendorSubscriptionState());
  }

  void _onSetStartDate(
    SetStartDate event,
    Emitter<MultiVendorSubscriptionState> emit,
  ) {
    emit(state.copyWith(startDate: event.startDate));
  }

  bool get isComplete => state.selectedVendorsByWeek.length == 4;

  int get remainingWeeks => 4 - state.selectedVendorsByWeek.length;

  List<int> get availableWeeks {
    return List.generate(4, (index) => index + 1)
        .where((week) => !state.selectedVendorsByWeek.containsKey(week))
        .toList();
  }
}
