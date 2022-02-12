import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ibiling/resources/color_manager.dart';
import 'package:ibiling/resources/font_manager.dart';
import 'package:ibiling/screens/widgets/custom_calendar.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.black,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // DATE SECTION
            Text(
              "Date",
              style: TextStyle(
                fontWeight: FontWeightManager.semiBold,
                fontSize: FontSize.s14.sp,
                color: ColorManager.darkGrey,
              ),
            ),
            SizedBox(height: 16.h),
            Row(
              children: [
                const CustomCalendarWidget(label: 'From'),
                Container(
                  width: 8.w,
                  height: 2.h,
                  decoration: BoxDecoration(
                    color: ColorManager.grey2,
                  ),
                  margin: EdgeInsets.symmetric(
                    horizontal: 12.w,
                  ),
                ),
                const CustomCalendarWidget(label: 'To'),
              ],
            ),

            SizedBox(height: 20.h),
            // PAYMENT HISTORY DATAS
          ],
        ),
      ),
    );
  }
}
