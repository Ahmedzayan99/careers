
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../home/home_screen_.dart';
import '../../transactions/transactions_screen.dart';
 part 'layout_states.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutInitial());
  static LayoutCubit get(context) => BlocProvider.of(context);
  int current = 0;
  final PageStorageBucket bucket = PageStorageBucket();
  List<Widget> screen = [
    HomePageScreen(),
    TransactionsScreen(),
    HomePageScreen(),
    HomePageScreen(),
  ];
  Widget currentScreen =  HomePageScreen();

  void changeIndex(int index) {
    current = index;
    currentScreen=screen[index];
    emit(AppChangeBottomNavBarState());
  }
}