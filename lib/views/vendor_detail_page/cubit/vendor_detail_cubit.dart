import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../models/menu_item.dart';
import '../../../models/vendor.dart';
import '../../../utils/enums.dart';

part 'vendor_detail_state.dart';
part 'vendor_detail_cubit.freezed.dart';

@injectable
class VendorDetailCubit extends Cubit<VendorDetailState> {
  VendorDetailCubit({required Vendor vendor})
      : super(VendorDetailState(vendor: vendor)) {
    loadWeeklyMenu();
  }

  Future<void> loadWeeklyMenu() async {
    try {
      emit(state.copyWith(menuStatus: AppStatus.loading));

      // Simulate API call
      await Future.delayed(const Duration(seconds: 1));

      // Mock weekly menu data
      final weeklyMenu = WeeklyMenu(
        id: '1',
        startDate: DateTime.now(),
        endDate: DateTime.now().add(const Duration(days: 7)),
        dailyMenus: List.generate(7, (index) {
          return DailyMenu(
            date: DateTime.now().add(Duration(days: index)),
            breakfastOptions: [
              const MenuItem(
                id: '1',
                name: 'Idli Sambar',
                price: 60,
                isVegetarian: true,
              ),
              const MenuItem(
                id: '2',
                name: 'Masala Dosa',
                price: 80,
                isVegetarian: true,
              ),
            ],
            lunchOptions: [
              const MenuItem(
                id: '3',
                name: 'Chicken Biryani',
                price: 160,
              ),
              const MenuItem(
                id: '4',
                name: 'Rice and Curry',
                price: 120,
                isVegetarian: true,
              ),
              const MenuItem(
                id: '5',
                name: 'Ghee Rice and Beef Curry',
                price: 180,
              ),
            ],
            dinnerOptions: [
              const MenuItem(
                id: '6',
                name: 'Chapathi and Curry',
                price: 100,
                isVegetarian: true,
              ),
              const MenuItem(
                id: '7',
                name: 'Porotta and Beef Fry',
                price: 140,
              ),
            ],
          );
        }),
      );

      emit(state.copyWith(
        weeklyMenu: weeklyMenu,
        menuStatus: AppStatus.success,
      ));
    } catch (e) {
      emit(state.copyWith(
        menuStatus: AppStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }

  void selectDay(int index) {
    emit(state.copyWith(selectedDayIndex: index));
  }

  void selectMenuItem(MenuItem item) {
    emit(state.copyWith(selectedMenuItem: item));
  }
}
