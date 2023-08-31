import 'package:careers/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemCareerWidget extends StatelessWidget {
   ItemCareerWidget({super.key});
  String photo =
      'https://images.unsplash.com/photo-1531804055935-76f44d7c3621?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1376&q=80';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: .23.sh,
      decoration: BoxDecoration(
          color: AppColors.colorBlur,
          border:
          Border.all(color: AppColors.colorGrey, width: 2.w),
          borderRadius: BorderRadius.all(
            Radius.circular(10.r),
          )),
      padding: EdgeInsetsDirectional.all(10.sp),
      child: Stack(
        alignment: AlignmentDirectional.topEnd,
        children: [
          Row(
            children: [
              Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadiusDirectional.all(Radius.circular(10.r)),
                      child: Image(
                        image: NetworkImage(photo),
                        fit: BoxFit.fill,
                        height: 125.h,
                        width: 75.w,
                        color: AppColors.colorPrimary,
                        colorBlendMode: BlendMode.dstIn,
                      ),
                    )
                  ]),
              SizedBox( width: 15.w),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'زظيفه عامل',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.sp,
                        color: AppColors.colorBlack,
                      ),
                    ),
                    Text(
                      'الراتب:3000 ج.م',
                      style: TextStyle(
                        fontSize: 15.sp,
                        color: AppColors.colorGrey,
                      ),
                    ),
                    Text(
                      'الفرص المتاحه: 3',
                      style: TextStyle(
                        fontSize: 15.sp,
                        color: AppColors.colorGrey,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'مصر-القاهره',
                          style: TextStyle(
                            fontSize: 15.sp,
                            color: AppColors.colorGrey,
                          ),
                        ),
                        Text(
                          'العموله 100 ج.م',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.sp,
                            color: AppColors.colorYellow,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          InkWell(
              onTap: () {
                print('object');
              },
              child: SvgPicture.asset('assets/images/heart.svg',width: 20.sp,color: AppColors.colorPrimary)),

        ],
      ),
    );
  }
}
