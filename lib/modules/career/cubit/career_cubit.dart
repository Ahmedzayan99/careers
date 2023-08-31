import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../home/home_screen_.dart';

part 'career_states.dart';

class CareerCubit extends Cubit<CareerState> {
  CareerCubit() : super(CareerInitial());

  static CareerCubit get(context) => BlocProvider.of(context);
  String hintValueCountry = 'الدولة';
  String? selectedValueCountry;
  List<String> listCountry = [
    'الكل',
    'مصر',
    'السعوديه',
    'الكويت',
  ];

  void selectDropDownValueCountry({required String typeName}) {
    selectedValueCountry = typeName;
    emit(SelectDropDownValueCountryState());
  }

  String hintValueCity = 'المدينة';
  String? selectedValueCity;
  List<String> listCity = [
    "القليوبيه",
    "الجيزه",
    "القاهره",
    'الكل',
    'مصر',
    'السعوديه',
    'الكويت',
    'الاعلي ربحا',
    'الاقل ربحا',
    "ببب",
    "سي",
    "لب",
    "سش",
    "لل",
    "سص",
    "ات",
    "في",
    "من",
    "كنم",
    "يبيب",
  ];

  void selectDropDownValueCity({required String typeName}) {
    selectedValueCity = typeName;
    emit(SelectDropDownValueCityState());
  }

  String hintValueProfitValue = 'قيمة الربح';
  String? selectedValueProfitValue;
  List<String> listProfitValue = [
    'الاعلي ربحا',
    'الاقل ربحا',
  ];

  void selectDropDownValueProfitValue({required String typeName}) {
    selectedValueProfitValue = typeName;
    emit(SelectDropDownValueProfitValueState());
  }
}
