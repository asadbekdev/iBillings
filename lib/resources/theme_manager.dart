import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ibiling/resources/color_manager.dart';
import 'package:ibiling/resources/font_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    // main colors of the app
    primaryColor: ColorManager.white,
    disabledColor: ColorManager.grey,
    splashColor: ColorManager.white,
    fontFamily: 'Ubuntu',
    // card view theme
    cardTheme: CardTheme(
      color: ColorManager.darker,
      elevation: 0.0,
    ),
    // App bar theme
    appBarTheme: AppBarTheme(
      backgroundColor: ColorManager.black,
      elevation: 0.0,
      shadowColor: Colors.transparent,
      titleTextStyle: TextStyle(
        color: ColorManager.white,
        fontSize: FontSize.s18.sp,
        fontWeight: FontWeightManager.regular,
      ),
    ),
    // Button theme
    buttonTheme: ButtonThemeData(
      shape: const CircleBorder(),
      disabledColor: ColorManager.grey,
      buttonColor: ColorManager.primary,
      splashColor: ColorManager.white,
    ),

    // elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          textStyle: TextStyle(color: ColorManager.white),
          primary: ColorManager.lightGreen,
          shadowColor: Colors.transparent,
          elevation: 0.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.0),
          ),
          padding: EdgeInsets.zero,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: const Size(0, 0)),
    ),

    // Text theme
    // textTheme: TextTheme(
    //   headline1: getSemiBoldStyle(
    //       color: ColorManager.darkGrey, fontSize: FontSize.s16),
    //   headline2:
    //       getRegularStyle(color: ColorManager.white, fontSize: FontSize.s16),
    //   headline3:
    //       getBoldStyle(color: ColorManager.primary, fontSize: FontSize.s16),
    //   headline4:
    //       getRegularStyle(color: ColorManager.primary, fontSize: FontSize.s14),
    //   subtitle1:
    //       getMediumStyle(color: ColorManager.lightGrey, fontSize: FontSize.s14),
    //   subtitle2:
    //       getMediumStyle(color: ColorManager.primary, fontSize: FontSize.s14),
    //   bodyText2: getMediumStyle(color: ColorManager.lightGrey),
    //   caption: getRegularStyle(color: ColorManager.grey1),
    //   bodyText1: getRegularStyle(color: ColorManager.grey),
    // ),
    // input decoration theme (text form field)

    inputDecorationTheme: InputDecorationTheme(
      contentPadding:
          EdgeInsets.symmetric(horizontal: 14.0.w, vertical: 14.0.h),
      // label style
      labelStyle: TextStyle(
          color: ColorManager.lightGrey1,
          fontSize: FontSize.s14,
          fontWeight: FontWeightManager.light),

      border: OutlineInputBorder(
          borderSide: BorderSide(
              color: ColorManager.lightGrey1.withOpacity(0.4), width: 1.2.w),
          borderRadius: BorderRadius.all(Radius.circular(4.w))),
      // enabled border
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorManager.lightGrey1, width: 1.2.w),
          borderRadius: BorderRadius.all(Radius.circular(4.w))),
    ),
  );
}
