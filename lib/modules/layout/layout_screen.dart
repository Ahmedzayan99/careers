import 'package:careers/modules/layout/cubit/layout_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../shared/colors.dart';
import '../home/home_screen_.dart';
class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
 //   LayoutCubit.get(context).current = 0;
 //  LayoutCubit.get(context).currentScreen = HomePageScreen();
    return BlocBuilder<LayoutCubit, LayoutState>(
      builder: (context, state) {

        LayoutCubit cubit = LayoutCubit.get(context);
        return Scaffold(
          body: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
          PageStorage(
          bucket: cubit.bucket,
          child: cubit.currentScreen,
           ),
          Material(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            color: Colors.transparent,
            elevation: 20.0,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,),
              height: 75.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                    onPressed: () {
                      cubit.changeIndex(0);
                    },
                    minWidth: 40.w,
                    shape: LinearBorder.top(
                      side: BorderSide(
                        color: AppColors.colorPrimary,
                        width: cubit.current == 0 ? 3.0 : 0,
                      ),),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home,
                          color: cubit.current == 0
                              ? AppColors.colorBlack
                              : AppColors.colorGrey,
                          size: 25.r,
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          "الرئيسية",
                          style: TextStyle(
                              color: AppColors.colorGrey,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      cubit.changeIndex(1);
                    },
                    shape: LinearBorder.top(
                      side: BorderSide(
                        color: AppColors.colorPrimary,
                        width: cubit.current ==1 ? 3.0 : 0,
                      ),),
                    minWidth: 40.w,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/images/arrows-vertical.svg',width: 17.sp
                          ,color: cubit.current == 1
                              ? AppColors.colorBlack
                              : AppColors.colorGrey,
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          "المعاملات",
                          style: TextStyle(
                              color: AppColors.colorGrey,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      cubit.changeIndex(2);
                    },
                    minWidth: 40.w,
                    shape: LinearBorder.top(
                      side: BorderSide(
                        color: AppColors.colorPrimary,
                        width: cubit.current == 2 ? 3.0 : 0,
                      ),),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/images/heart.svg',width: 17.sp
                        ,color: cubit.current == 2
                              ? AppColors.colorBlack
                              : AppColors.colorGrey,
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          "المفضله",
                          style: TextStyle(
                              color: AppColors.colorGrey,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      cubit.changeIndex(3);
                    },
                    minWidth: 40.w,
                    shape: LinearBorder.top(
                      side: BorderSide(
                        color: AppColors.colorPrimary,
                        width: cubit.current == 3 ? 3.0 : 0,
                      ),),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/images/menu.svg',width: 17.sp,
                          color: cubit.current == 3
                              ? AppColors.colorBlack
                              : AppColors.colorGrey,
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
                  ),

                ],
              ),
            ),
          ),
      ]
        ),);
      },
    );
  }
}
