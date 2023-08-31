import 'package:careers/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/components.dart';
import 'cubit/transactions_cubit.dart';

class TransactionsScreen extends StatelessWidget {
  const TransactionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TransactionsCubit, TransactionsState>(
        builder: (context, state) {
          var cubit = TransactionsCubit.get(context);
          return Scaffold(
            backgroundColor: AppColors.colorWhite,
            appBar: AppBar(
              backgroundColor: AppColors.colorPrimary,
              scrolledUnderElevation: 0,
              centerTitle: true,
              elevation: 0,
              title: Text('المعاملات',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.colorWhite,
                  )),
            ),
            body: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 60.h,
                      color: AppColors.colorPrimary,
                      child: Column(
                        children: [
                          Divider(
                            height: 0.8.h,
                            thickness: 0.1.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 7.w,
                              ),
                              Expanded(
                                child: MaterialButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadiusDirectional.all(
                                          Radius.circular(15.r))),
                                  onPressed: () {
                                    cubit.changeIndex(0);
                                  },
                                  elevation: 0,
                                  color: cubit.current == 0
                                      ? AppColors.colorLightBlue
                                      : Colors.transparent,
                                  child: Text(
                                    "قيد التنفيذ",
                                    maxLines: 1,
                                    style: TextStyle(
                                        color: AppColors.colorWhite,
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: MaterialButton(
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadiusDirectional.all(
                                          Radius.circular(15.r))),
                                  onPressed: () {
                                    cubit.changeIndex(1);
                                  },
                                  color: cubit.current == 1
                                      ? AppColors.colorLightBlue
                                      : Colors.transparent,
                                  child: Text(
                                    "تمت بنجاح",
                                    maxLines: 1,
                                    style: TextStyle(
                                        color: AppColors.colorWhite,
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: MaterialButton(
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadiusDirectional.all(
                                          Radius.circular(15.r))),
                                  onPressed: () {
                                    cubit.changeIndex(2);
                                  },
                                  color: cubit.current == 2
                                      ? AppColors.colorLightBlue
                                      : Colors.transparent,
                                  child: Text(
                                    "تم الالغاء",
                                    maxLines: 1,
                                    style: TextStyle(
                                        color: AppColors.colorWhite,
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: MaterialButton(
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadiusDirectional.all(
                                          Radius.circular(15.r))),
                                  onPressed: () {
                                    cubit.changeIndex(3);
                                  },
                                  color: cubit.current == 3
                                      ? AppColors.colorLightBlue
                                      : Colors.transparent,
                                  child: Text(
                                    "الكل",
                                    maxLines: 1,
                                    style: TextStyle(
                                        color: AppColors.colorWhite,
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 7.w,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.h,),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal:10.w, ),
                      child: CustomScreenTransactions(
                          isBack: true,
                          serviceName: 'اسم الخدمة',
                          transactionNumber: 'رقم المعاملة',
                          profitSystem: 'نظام الربح',
                          customerName: 'اسم العميل',
                          commission: 'العمولة',
                          isActive: false),
                    ),
                    Expanded(
                      child: Padding(
                        padding:  EdgeInsets.all(10.sp),
                        child: SingleChildScrollView(
                          child: ListView.separated(
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            physics: BouncingScrollPhysics(),
                            itemBuilder: (context, index) {
                              return CustomScreenTransactions(
                                serviceName: 'تعاقد انترنت منزلي',
                                transactionNumber: '3750790',
                                profitSystem: 'وظاىف',
                                customerName: 'MR bishi',
                                commission:'${'120.5'}ح.م',
                                isActive:true,
                                isBack: index.isEven?false:true,
                              );
                            },
                            separatorBuilder: (context, index) {
                              return SizedBox(height: 10.h,);
                            },
                            itemCount: 10,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:  EdgeInsets.only(bottom: .11.sh),
                  child: Container(
                    height: 35.h,
                    width: 25.h,
                    alignment: AlignmentDirectional.center,
                    color: AppColors.colorPrimary,
                    child: Text('${cubit.current + 1}',
                        style: TextStyle(
                          color: AppColors.colorWhite,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ),
              ],
            ),
          );
        },
        listener: (context, state) {});
  }
}
