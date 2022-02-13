import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ibiling/resources/assets_manager.dart';
import 'package:ibiling/resources/color_manager.dart';
import 'package:ibiling/resources/font_manager.dart';
import 'package:ibiling/screens/widgets/custom_app_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool _selectedLang = true;
    return Scaffold(
      backgroundColor: ColorManager.black,
      appBar: CustomAppBar(
        title: 'Profile',
        backgroundColor: ColorManager.darkest,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            SizedBox(height: 20.h),
            // USER INFO CARD
            Container(
              padding: EdgeInsets.only(top: 16.h, left: 16.w, bottom: 20.h),
              decoration: BoxDecoration(
                color: ColorManager.dark,
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(ImageAssets.accountCircleIc),
                      SizedBox(width: 12.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Otabek Abdusamatov",
                            style: TextStyle(
                              fontWeight: FontWeightManager.medium,
                              color: ColorManager.lightGreen,
                              fontSize: FontSize.s16.sp,
                            ),
                          ),
                          SizedBox(height: 4.h),
                          Text(
                            "Graphic designer • IQ Education",
                            style: TextStyle(
                              fontWeight: FontWeightManager.regular,
                              color: ColorManager.grey2,
                              fontSize: FontSize.s12.sp,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Text.rich(
                    TextSpan(
                      text: "Date of birth: ",
                      style: TextStyle(
                        color: ColorManager.grey2,
                        fontWeight: FontWeightManager.regular,
                        fontSize: FontSize.s14.sp,
                      ),
                      children: [
                        TextSpan(
                          text: " 16.09.2001",
                          style: TextStyle(
                            color: ColorManager.darkGrey,
                            fontWeight: FontWeightManager.light,
                            fontSize: FontSize.s14.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12.h),
                  Text.rich(
                    TextSpan(
                      text: "Phone number: ",
                      style: TextStyle(
                        color: ColorManager.grey2,
                        fontWeight: FontWeightManager.regular,
                        fontSize: FontSize.s14.sp,
                      ),
                      children: [
                        TextSpan(
                          text: " +998 97 721 06 88",
                          style: TextStyle(
                            color: ColorManager.darkGrey,
                            fontWeight: FontWeightManager.light,
                            fontSize: FontSize.s14.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12.h),
                  Text.rich(
                    TextSpan(
                      text: "E-mail:: ",
                      style: TextStyle(
                        color: ColorManager.grey2,
                        fontWeight: FontWeightManager.regular,
                        fontSize: FontSize.s14.sp,
                      ),
                      children: [
                        TextSpan(
                          text: " predatorhunter041@gmail.com",
                          style: TextStyle(
                            color: ColorManager.darkGrey,
                            fontWeight: FontWeightManager.light,
                            fontSize: FontSize.s14.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12.h),
                ],
              ),
            ),

            SizedBox(height: 12.h),
            // APP LANG BUTTON
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      contentPadding: EdgeInsets.zero,
                      insetPadding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      backgroundColor: Colors.transparent,
                      content: Center(
                        child: Container(
                          height: 312.h,
                          padding: EdgeInsets.only(
                              top: 16.h, left: 27.w, right: 27.w, bottom: 28.h),
                          decoration: BoxDecoration(
                            color: ColorManager.dark,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Column(
                            children: [
                              Text(
                                "Choose a language",
                                style: TextStyle(
                                  fontWeight: FontWeightManager.semiBold,
                                  color: ColorManager.white,
                                  fontSize: FontSize.s16.sp,
                                ),
                              ),
                              SizedBox(height: 28.h),
                              Row(
                                children: [
                                  Container(
                                    width: 20.w,
                                    height: 20.w,
                                    color: Colors.red,
                                  ),
                                  SizedBox(width: 12.w),
                                  Text(
                                    "O‘zbek (Lotin)",
                                    style: TextStyle(
                                      fontWeight: FontWeightManager.light,
                                      color: ColorManager.grey2,
                                      fontSize: FontSize.s14.sp,
                                    ),
                                  ),
                                  const Spacer(),
                                  Radio(
                                    value: _selectedLang,
                                    groupValue: 'lang',
                                    onChanged: (v) {},
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 20.w,
                                    height: 20.w,
                                    color: Colors.red,
                                  ),
                                  SizedBox(width: 12.w),
                                  Text(
                                    "Русский",
                                    style: TextStyle(
                                      fontWeight: FontWeightManager.light,
                                      color: ColorManager.grey2,
                                      fontSize: FontSize.s14.sp,
                                    ),
                                  ),
                                  const Spacer(),
                                  Radio(
                                    value: _selectedLang,
                                    groupValue: 'lang',
                                    onChanged: (v) {},
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 20.w,
                                    height: 20.w,
                                    color: Colors.red,
                                  ),
                                  SizedBox(width: 12.w),
                                  Text(
                                    "English ",
                                    style: TextStyle(
                                      fontWeight: FontWeightManager.light,
                                      color: ColorManager.grey2,
                                      fontSize: FontSize.s14.sp,
                                    ),
                                  ),
                                  const Spacer(),
                                  Radio(
                                    value: _selectedLang,
                                    groupValue: 'lang',
                                    onChanged: (v) {},
                                  )
                                ],
                              ),
                              SizedBox(height: 32.h),
                              Row(
                                children: [
                                  Expanded(
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text(
                                        'Cancel',
                                        style: TextStyle(
                                          fontWeight: FontWeightManager.regular,
                                          color: ColorManager.darkGreen,
                                          fontSize: FontSize.s14.sp,
                                        ),
                                      ),
                                      style: OutlinedButton.styleFrom(
                                        backgroundColor: ColorManager.darkGreen
                                            .withOpacity(0.3),
                                        padding: EdgeInsets.symmetric(
                                          vertical: 8.h,
                                          horizontal: 37.w,
                                        ),
                                        elevation: 0.0,
                                        fixedSize: Size(125.0, 37.0),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 20.w),
                                  Expanded(
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      child: Text(
                                        'Done',
                                        style: TextStyle(
                                          fontWeight: FontWeightManager.regular,
                                          color: ColorManager.white,
                                          fontSize: FontSize.s14.sp,
                                        ),
                                      ),
                                      style: OutlinedButton.styleFrom(
                                        backgroundColor: ColorManager.darkGreen,
                                        padding: EdgeInsets.symmetric(
                                          vertical: 8.h,
                                          horizontal: 44.w,
                                        ),
                                        elevation: 0.0,
                                        fixedSize: Size(125.0, 37.0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
              child: Row(
                children: [
                  Text(
                    "English (USA)",
                    style: TextStyle(
                      fontWeight: FontWeightManager.regular,
                      color: ColorManager.grey2,
                      fontSize: FontSize.s14,
                    ),
                  ),
                  const Spacer(),
                  Container(
                    width: 20.w,
                    height: 20.w,
                    decoration: const BoxDecoration(
                      // image: DecorationImage(
                      //   image: AssetImage(ImageAssets.usIc),
                      //   fit: BoxFit.cover,
                      // ),
                      // TEST
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                  )
                ],
              ),
              style: OutlinedButton.styleFrom(
                backgroundColor: ColorManager.dark,
                padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 20.w),
              ),
            )
          ],
        ),
      ),
    );
  }
}
