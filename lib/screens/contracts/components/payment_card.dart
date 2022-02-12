import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ibiling/resources/assets_manager.dart';
import 'package:ibiling/resources/color_manager.dart';
import 'package:ibiling/resources/font_manager.dart';

class PaymentCard extends StatelessWidget {
  const PaymentCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 12.h,
        bottom: 12.h,
        left: 10.w,
        right: 12.w,
      ),
      decoration: BoxDecoration(
        color: ColorManager.dark,
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset(ImageAssets.paperIc),
                  SizedBox(width: 8.w),
                  Text(
                    "№ 154",
                    style: TextStyle(
                      fontSize: FontSize.s14.sp,
                      fontWeight: FontWeightManager.semiBold,
                      color: ColorManager.white,
                    ),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: ColorManager.green.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 2.w),
                child: Text(
                  "Paid",
                  style: TextStyle(
                    color: ColorManager.green,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          // PAYMENT USER INFO
          Text.rich(
            TextSpan(
              text: "Fish: ",
              style: TextStyle(
                color: ColorManager.white,
                fontWeight: FontWeightManager.regular,
                fontSize: FontSize.s14.sp,
              ),
              children: [
                TextSpan(
                  text: " Yoldosheva Ziyoda",
                  style: TextStyle(
                    color: ColorManager.darkGrey,
                    fontWeight: FontWeightManager.light,
                    fontSize: FontSize.s14.sp,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 4.h),
          // PAYMENT FEE INFO
          Text.rich(
            TextSpan(
              text: "Amount: ",
              style: TextStyle(
                color: ColorManager.white,
                fontWeight: FontWeightManager.regular,
                fontSize: FontSize.s14.sp,
              ),
              children: [
                TextSpan(
                  text: " 1,200,000 UZS",
                  style: TextStyle(
                    color: ColorManager.darkGrey,
                    fontWeight: FontWeightManager.light,
                    fontSize: FontSize.s14.sp,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 4.h),
          // PAYMENT ID
          Text.rich(
            TextSpan(
              text: "Last invoice: ",
              style: TextStyle(
                color: ColorManager.white,
                fontWeight: FontWeightManager.regular,
                fontSize: FontSize.s14.sp,
              ),
              children: [
                TextSpan(
                  text: " № 156",
                  style: TextStyle(
                    color: ColorManager.darkGrey,
                    fontWeight: FontWeightManager.light,
                    fontSize: FontSize.s14.sp,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 4.h),
          // PAYMENT INVOICE COUNT
          Row(
            children: [
              Expanded(
                child: Text.rich(
                  TextSpan(
                    text: "Number of invoices: ",
                    style: TextStyle(
                      color: ColorManager.white,
                      fontWeight: FontWeightManager.regular,
                      fontSize: FontSize.s14.sp,
                    ),
                    children: [
                      TextSpan(
                        text: " 6",
                        style: TextStyle(
                          color: ColorManager.darkGrey,
                          fontWeight: FontWeightManager.light,
                          fontSize: FontSize.s14.sp,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Text(
                "31.01.2021",
                style: TextStyle(
                  color: ColorManager.darkGrey,
                  fontWeight: FontWeightManager.semiBold,
                  fontSize: FontSize.s14.sp,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
