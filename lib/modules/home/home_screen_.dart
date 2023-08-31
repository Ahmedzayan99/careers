import 'package:careers/shared/nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/colors.dart';
import '../career/career_screen.dart';
import 'cubit/home_cubit.dart';


class HomePageScreen extends StatelessWidget {
  HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
        builder: (context, state) {
          var cubit = HomeCubit.get(context);
          return Center(child:  MaterialButton(
            onPressed: () {
              navigateTo((context), CareerScreen());
            },
            minWidth: 40.w,
            shape: LinearBorder(
              side: BorderSide(
                color: AppColors.colorPrimary,
                width: 3.sp,
              ),),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.menu,
                  color: AppColors.colorBlack,
                  size: 25.r,
                ),
                SizedBox(height: 5.h),
                Text(
                  "المزيد",
                  style: TextStyle(
                      color: AppColors.colorGrey,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),);
        },
        listener: (context, state) {});
  }
}
