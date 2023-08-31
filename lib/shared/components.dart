import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'colors.dart';

class MusterButton extends StatelessWidget {
  MusterButton({
    required this.title,
    required this.onTap,
    this.width = double.infinity,
    this.isActive = true,
    this.height = 55,
    super.key,
  });

  final String title;
  final int height;
  final void Function()? onTap;
  double? width;
  bool isActive;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isActive ? onTap : null,
      child: Container(
          height: height.h,
          width: width,
          decoration: BoxDecoration(
            color: isActive ? AppColors.colorPrimary : AppColors.colorGrey,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(color: AppColors.colorWhite, fontSize: 18.sp),
            ),
          )),
    );
  }
}

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator.adaptive(
        valueColor: AlwaysStoppedAnimation<Color>(AppColors.colorPrimary),
      ),
    );
  }
}

class CustomDropdownButton2 extends StatelessWidget {
  const CustomDropdownButton2({
    required this.hint,
    required this.value,
    required this.dropdownItems,
    required this.onChanged,
    this.selectedItemBuilder,
    this.hintAlignment,
    this.valueAlignment,
    this.buttonHeight,
    this.buttonWidth,
    this.buttonPadding,
    this.buttonDecoration,
    this.buttonElevation,
    this.icon,
    this.iconSize,
    this.iconEnabledColor,
    this.iconDisabledColor,
    this.itemHeight,
    this.itemPadding,
    this.dropdownHeight,
    this.dropdownWidth,
    this.dropdownPadding,
    this.dropdownDecoration,
    this.dropdownElevation,
    this.scrollbarRadius,
    this.scrollbarThickness,
    this.scrollbarAlwaysShow,
    this.offset = Offset.zero,
    this.hintColor = Colors.white,
    super.key,
  });

  final String hint;
  final String? value;
  final List<String> dropdownItems;
  final void Function(String?)? onChanged;
  final DropdownButtonBuilder? selectedItemBuilder;
  final Alignment? hintAlignment;
  final Alignment? valueAlignment;
  final double? buttonHeight, buttonWidth;
  final EdgeInsetsGeometry? buttonPadding;
  final BoxDecoration? buttonDecoration;
  final int? buttonElevation;
  final Widget? icon;
  final double? iconSize;
  final Color? iconEnabledColor;
  final Color? iconDisabledColor;
  final double? itemHeight;
  final EdgeInsetsGeometry? itemPadding;
  final double? dropdownHeight, dropdownWidth;
  final EdgeInsetsGeometry? dropdownPadding;
  final BoxDecoration? dropdownDecoration;
  final int? dropdownElevation;
  final Radius? scrollbarRadius;
  final double? scrollbarThickness;
  final bool? scrollbarAlwaysShow;
  final Offset offset;
  final Color hintColor;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2<String>(
        isDense: true,
        isExpanded: true,
        hint: Container(
          alignment: hintAlignment,
          child: Text(
            hint,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: TextStyle(
              fontSize: 15.sp,
              color: hintColor,
            ),
          ),
        ),
        value: value,
        style: TextStyle(
          fontSize: 14.sp,
          color: Theme.of(context).hintColor,
        ),
        items: dropdownItems
            .map((String item) => DropdownMenuItem<String>(
                  value: item,
                  child: Container(
                    alignment: valueAlignment,
                    child: Text(
                      item,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                          fontSize: 14.sp, color: AppColors.colorWhite),
                    ),
                  ),
                ))
            .toList(),
        onChanged: onChanged,
        selectedItemBuilder: selectedItemBuilder,
        buttonStyleData: ButtonStyleData(
          height: buttonHeight ?? 40,
          width: buttonWidth ?? 140,
          padding: buttonPadding ?? const EdgeInsets.only(left: 14, right: 14),
          decoration: buttonDecoration ??
              BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  border: Border.all(style: BorderStyle.none)),
          elevation: buttonElevation,
        ),
        iconStyleData: IconStyleData(
          icon: icon ??
              Icon(Icons.keyboard_arrow_down_outlined,
                  color: AppColors.colorWhite),
          iconSize: iconSize ?? 15.sp,
          iconEnabledColor: iconEnabledColor,
          iconDisabledColor: iconDisabledColor,
        ),
        dropdownStyleData: DropdownStyleData(
          isOverButton: true,
          maxHeight: dropdownHeight ?? 200,
          width: dropdownWidth ?? 140,
          padding: dropdownPadding,
          decoration: dropdownDecoration ??
              BoxDecoration(
                borderRadius: BorderRadius.circular(13),
              ),
          elevation: dropdownElevation ?? 8,
          //Null or Offset(0, 0) will open just under the button. You can edit as you want.
          offset: offset,
          useRootNavigator: true,
          scrollbarTheme: ScrollbarThemeData(
            radius: scrollbarRadius ?? const Radius.circular(13),
            thickness: scrollbarThickness != null
                ? MaterialStateProperty.all<double>(scrollbarThickness!)
                : null,
            thumbVisibility: scrollbarAlwaysShow != null
                ? MaterialStateProperty.all<bool>(scrollbarAlwaysShow!)
                : null,
          ),
        ),
        menuItemStyleData: MenuItemStyleData(
          height: itemHeight ?? 40,
          padding: itemPadding ?? const EdgeInsets.only(left: 14, right: 14),
        ),
      ),
    );
  }
}

class CustomScreenTransactions extends StatelessWidget {
  const CustomScreenTransactions({
    super.key,
    required this.serviceName,
    required this.transactionNumber,
    required this.profitSystem,
    required this.customerName,
    required this.commission,
    required this.isActive,
     this.isBack=false,
  });

  final String serviceName;
  final String transactionNumber;
  final String profitSystem;
  final String customerName;
  final String commission;
  final bool isActive;
  final bool isBack;

  Widget build(BuildContext context) {
    return Container(
      height: 75.h,
      decoration: BoxDecoration(
        color:isBack?AppColors.colorPrimaryBlur:Colors.transparent,
        borderRadius: BorderRadius.circular(15.r),
      ),
      padding: EdgeInsetsDirectional.all(
        10.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: isActive
                ? Container(
                    alignment: AlignmentDirectional.center,
                    decoration: BoxDecoration(
                        color: AppColors.colorLightBlue,
                        borderRadius:
                            BorderRadiusDirectional.all(Radius.circular(15.r))),
                    child: Text(
                      transactionNumber,
                      maxLines: 1,
                      style: TextStyle(
                        color: AppColors.colorWhite,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  )
                : Text(
                    transactionNumber,
                    style: TextStyle(
                      color: AppColors.colorPrimary,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
          ),
          Expanded(
            flex: 2,
            child: Column(mainAxisAlignment: MainAxisAlignment.start,
                children: [
              Expanded(
                flex: 1,
                child: Text(
                  profitSystem,
                  maxLines: 1,
                  style: TextStyle(
                    color: isActive
                        ? AppColors.colorYellow
                        : AppColors.colorPrimary,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Divider(
                thickness: 1.h,
                endIndent: 25.w,
                indent: 25.w,
                height: 1.h,
              ),
              Expanded(
                child: Text(
                  serviceName,
                  maxLines: 1,
                  style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    color:
                        isActive ? AppColors.colorGrey : AppColors.colorPrimary,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ]),
          ),
          Expanded(
            child: Text(
              customerName,
              maxLines: 1,
              style: TextStyle(
                color: isActive ? AppColors.colorGrey : AppColors.colorPrimary,
                fontSize: 15.sp,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          Expanded(
            child: Text(
              commission,
              maxLines: 1,
              textAlign: TextAlign.end,
              style: TextStyle(
                color:
                    isActive ? AppColors.colorYellow : AppColors.colorPrimary,
                fontSize: 15.sp,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
