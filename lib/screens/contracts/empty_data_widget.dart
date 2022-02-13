import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ibiling/resources/assets_manager.dart';
import 'package:ibiling/resources/color_manager.dart';
import 'package:ibiling/resources/font_manager.dart';

class EmptyDataWidget extends StatelessWidget {
  final String label;
  final ImageAssets icon;
  const EmptyDataWidget({Key? key, required this.label, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              ImageAssets.documentIc,
              width: 63.w,
              height: 74.h,
              color: ColorManager.white.withOpacity(0.2),
            ),
            SizedBox(height: 15.h),
            Text(
              "No contracts are made",
              style: TextStyle(
                fontWeight: FontWeightManager.medium,
                fontSize: FontSize.s14.sp,
                color: ColorManager.white.withOpacity(0.2),
              ),
            )
          ],
        ),
      ),
    );
  }
}
