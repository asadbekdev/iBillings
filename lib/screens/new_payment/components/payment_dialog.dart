import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ibiling/resources/assets_manager.dart';
import 'package:ibiling/resources/color_manager.dart';
import 'package:ibiling/resources/font_manager.dart';
import 'package:ibiling/screens/app/app_screen.dart';
import 'package:ibiling/screens/new_payment/new_screen.dart';

class PaymentDialog extends StatelessWidget {
  const PaymentDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      backgroundColor: ColorManager.dark,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      content: Container(
        width: 327.w,
        height: 192.h,
        padding:
            EdgeInsets.only(left: 20.w, right: 20.w, top: 16.h, bottom: 24.h),
        child: Column(
          children: [
            Text(
              "Что вы хотите создать?",
              style: TextStyle(
                color: ColorManager.white,
                fontWeight: FontWeightManager.semiBold,
                fontSize: FontSize.s16.sp,
              ),
            ),
            SizedBox(height: 28.h),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                NewScreen.routeIndex = 1;
                bottomNavCubit.changeScreen(2);
              },
              child: Row(
                children: [
                  SvgPicture.asset(ImageAssets.paperIc,
                      width: 26.w, height: 26.w),
                  SizedBox(width: 12.w),
                  Text(
                    "Contract",
                    style: TextStyle(
                      color: ColorManager.lightGrey1,
                      fontSize: FontSize.s16.sp,
                      fontWeight: FontWeightManager.regular,
                    ),
                  )
                ],
              ),
              style: OutlinedButton.styleFrom(
                backgroundColor: ColorManager.lightDark,
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                elevation: 0.0,
                fixedSize: Size.fromHeight(46.h),
              ),
            ),
            SizedBox(height: 12.h),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                NewScreen.routeIndex = 2;
                bottomNavCubit.changeScreen(2);
              },
              child: Row(
                children: [
                  SvgPicture.asset(ImageAssets.invoiceIc,
                      width: 26.w, height: 26.w),
                  SizedBox(width: 12.w),
                  Text(
                    "Invoice",
                    style: TextStyle(
                      color: ColorManager.lightGrey1,
                      fontSize: FontSize.s16.sp,
                      fontWeight: FontWeightManager.regular,
                    ),
                  )
                ],
              ),
              style: OutlinedButton.styleFrom(
                backgroundColor: ColorManager.lightDark,
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                elevation: 0.0,
                fixedSize: Size.fromHeight(46.h),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
