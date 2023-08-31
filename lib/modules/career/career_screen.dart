import 'package:careers/main.dart';
import 'package:careers/modules/career/widget/item_career_widget.dart';
import 'package:careers/shared/nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../main.dart';
import '../../shared/colors.dart';
import '../../shared/components.dart';
import '../home/home_screen_.dart';
import 'cubit/career_cubit.dart';

class CareerScreen extends StatelessWidget {
  CareerScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CareerCubit, CareerState>(
        builder: (context, state) {
          var cubit = CareerCubit.get(context);
          return Scaffold(
            backgroundColor: AppColors.colorWhite,
            appBar: AppBar(
              backgroundColor: AppColors.colorPrimary,
              scrolledUnderElevation: 0,
              centerTitle: true,
              elevation: 0,
              leading: IconButton(
                  onPressed: () {
                    navigateBack(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: AppColors.colorWhite,
                  )),
              title: Text('الوظائف',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.colorWhite,
                  )),
            ),
            body: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: CustomDropdownButton2(
                        hint: cubit.hintValueCountry,
                        value: cubit.selectedValueCountry,
                        dropdownItems: cubit.listCountry,
                        onChanged: (String? typeName) {
                          cubit.selectDropDownValueCountry(typeName: typeName!);
                        },
                        icon: Icon(Icons.keyboard_arrow_down,
                            color: AppColors.colorWhite),
                        dropdownWidth: 120.w,
                        dropdownHeight: 600.h,
                        iconSize: 15.sp,
                        buttonDecoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                          color: AppColors.colorPrimary,
                        ),
                        dropdownDecoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                          color: AppColors.colorPrimary,
                        ),
                      ),
                    ),
                    Expanded(
                      child: CustomDropdownButton2(
                        hint: cubit.hintValueCity,
                        hintColor: cubit.selectedValueCountry == null
                            ? AppColors.colorGrey
                            : AppColors.colorWhite,
                        value: cubit.selectedValueCity,
                        dropdownItems: cubit.selectedValueCountry == null
                            ? []
                            : cubit.listCity,
                        onChanged: (String? typeName) {
                          cubit.selectDropDownValueCity(typeName: typeName!);
                        },
                        icon: Icon(Icons.keyboard_arrow_down,
                            color: cubit.selectedValueCountry == null
                                ? AppColors.colorGrey
                                : AppColors.colorWhite),
                        dropdownWidth: 120.w,
                        dropdownHeight: 600.h,
                        iconSize: 15.sp,
                        buttonDecoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                          color: AppColors.colorPrimary,
                        ),
                        dropdownDecoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                          color: AppColors.colorPrimary,
                        ),
                      ),
                    ),
                    Expanded(
                      child: CustomDropdownButton2(
                        hint: cubit.hintValueProfitValue,
                        value: cubit.selectedValueProfitValue,
                        dropdownItems: cubit.listProfitValue,
                        onChanged: (String? typeName) {
                          cubit.selectDropDownValueProfitValue(
                              typeName: typeName!);
                        },
                        icon: Icon(Icons.keyboard_arrow_down,
                            color: AppColors.colorWhite),
                        dropdownWidth: 120.w,
                        dropdownHeight: 600.h,
                        iconSize: 15.sp,
                        buttonDecoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                          color: AppColors.colorPrimary,
                        ),
                        dropdownDecoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                          color: AppColors.colorPrimary,
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.all(5.sp),
                    child: ListView.separated(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return ItemCareerWidget();
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 10.h,);
                      },
                      itemCount: 4,

                    )
                  ),
                ),
              ],
            ),
          );
        },
        listener: (context, state) {});
  }
}
