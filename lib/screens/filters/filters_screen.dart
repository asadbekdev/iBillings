import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ibiling/blocs/cubit/bottom_nav_cubit.dart';
import 'package:ibiling/resources/assets_manager.dart';
import 'package:ibiling/resources/color_manager.dart';
import 'package:ibiling/resources/font_manager.dart';
import 'package:ibiling/screens/widgets/custom_calendar.dart';
import 'package:ibiling/screens/filters/components/status_item.dart';

class FiltersScreen extends StatelessWidget {
  FiltersScreen({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List _statusLabels = [
      'Paid',
      'Rejected by IQ',
      'In process',
      'Rejected by Payme'
    ];
    return Scaffold(
      backgroundColor: ColorManager.black,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(ImageAssets.backIc),
        ),
        title: Text(
          "Filters",
          style: TextStyle(
            fontWeight: FontWeightManager.regular,
            fontSize: FontSize.s20.sp,
          ),
        ),
        centerTitle: true,
        backgroundColor: ColorManager.darkest,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: ColorManager.darkest,
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          vertical: 28.h,
          horizontal: 16.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // STATUS PROCESSES LABEL SECTION
            Text(
              "Status",
              style: TextStyle(
                fontWeight: FontWeightManager.semiBold,
                fontSize: FontSize.s14.sp,
                color: ColorManager.darkGrey,
              ),
            ),
            SizedBox(height: 16.h),
            // STATUS PROCESSES
            SizedBox(
              height: 68.h,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20.h,
                  mainAxisExtent: 24.h,
                ),
                itemCount: 4,
                itemBuilder: (context, index) {
                  String _statusLabel = _statusLabels[index];
                  return StatusItem(statusLabel: _statusLabel);
                },
              ),
            ),
            SizedBox(height: 32.h),

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

            const Spacer(),
            // FILTER BUTTONS
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Cancel',
                      style: TextStyle(
                        fontWeight: FontWeightManager.semiBold,
                        color: ColorManager.darkGreen,
                        fontSize: FontSize.s14.sp,
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                        backgroundColor:
                            ColorManager.darkGreen.withOpacity(0.3),
                        padding: EdgeInsets.symmetric(
                          vertical: 12.h,
                          horizontal: 60.w,
                        )),
                  ),
                ),
                SizedBox(width: 16.w),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Apply',
                      style: TextStyle(
                        fontWeight: FontWeightManager.semiBold,
                        color: ColorManager.white,
                        fontSize: FontSize.s14.sp,
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                        backgroundColor: ColorManager.darkGreen,
                        padding: EdgeInsets.symmetric(
                          vertical: 12.h,
                          horizontal: 60.w,
                        )),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
