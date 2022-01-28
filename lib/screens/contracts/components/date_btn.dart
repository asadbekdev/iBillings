import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ibiling/resources/color_manager.dart';
import 'package:ibiling/resources/font_manager.dart';

class DateBtn extends StatelessWidget {
  final String? wday;
  final String? day;
  const DateBtn({Key? key, required this.wday, required this.day})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Column(
        children: [
          Text(
            '$wday',
            style: TextStyle(
              color: ColorManager.grey2,
              fontWeight: FontWeightManager.semiBold,
              fontSize: FontSize.s14.sp,
              height: 1.3,
            ),
          ),
          SizedBox(height: 7.h),
          Text(
            '$day',
            style: TextStyle(
              color: ColorManager.grey2,
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
        backgroundColor: Colors.transparent,
        padding: EdgeInsets.symmetric(
          horizontal: 14.w,
          vertical: 12.h,
        ),
        primary: ColorManager.white,
      ),
    );
  }
}
