import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ibiling/resources/color_manager.dart';
import 'package:ibiling/resources/font_manager.dart';
import 'package:jiffy/jiffy.dart';

class DateBtn extends StatelessWidget {
  final Jiffy jiffy;
  final int index;
  final int selectedDate;
  final void Function()? onPressed;
  const DateBtn(
      {Key? key,
      required this.jiffy,
      required this.index,
      required this.selectedDate,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Column(
        children: [
          Text(
            Jiffy([jiffy.year, jiffy.month, index + 1]).E,
            style: TextStyle(
              color: index == selectedDate
                  ? ColorManager.white
                  : ColorManager.grey2,
              fontWeight: FontWeightManager.semiBold,
              fontSize: FontSize.s14.sp,
              height: 1.3,
            ),
          ),
          SizedBox(height: 7.h),
          Text(
            '${index + 1}',
            style: TextStyle(
              color: index == selectedDate
                  ? ColorManager.white
                  : ColorManager.grey2,
              fontWeight: FontWeightManager.semiBold,
              fontSize: FontSize.s14.sp,
              height: 1.3,
            ),
          ),
          SizedBox(height: 4.h),
          Container(
            width: 17.w,
            height: 1.h,
            color: ColorManager.grey2,
          )
        ],
      ),
      style: OutlinedButton.styleFrom(
        backgroundColor: index == selectedDate
            ? ColorManager.lightGreen
            : Colors.transparent,
        padding: EdgeInsets.symmetric(
          horizontal: 14.w,
          vertical: 12.h,
        ),
        primary: ColorManager.white,
      ),
    );
  }
}
