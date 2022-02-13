import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ibiling/blocs/cubit/bottom_nav_cubit.dart';
import 'package:ibiling/resources/assets_manager.dart';
import 'package:ibiling/resources/color_manager.dart';
import 'package:ibiling/resources/font_manager.dart';
import 'package:ibiling/screens/app/app_screen.dart';
import 'package:ibiling/screens/filters/filters_screen.dart';
import 'package:ibiling/screens/search/search_screen.dart';

class CustomAppBar extends PreferredSize {
  final String title;
  final Color backgroundColor;
  CustomAppBar({Key? key, required this.title, required this.backgroundColor})
      : super(
          key: key,
          preferredSize: Size.fromHeight(51.h),
          child: Container(),
        );
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 44.w,
      leading: Align(
        alignment: Alignment.centerRight,
        child: Container(
          width: 24.w,
          height: 24.w,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF00FFC2),
                Color(0xFF0500FF),
                Color(0xFFFFC700),
                Color(0xFFAD00FF),
                Color(0xFF00FF94),
              ],
            ),
          ),
        ),
      ),
      title: Text(
        title,
        style: TextStyle(
          color: ColorManager.white,
          fontWeight: FontWeightManager.regular,
          fontSize: FontSize.s18.sp,
        ),
      ),
      titleSpacing: 12.w,
      actions: [
        IconButton(
          onPressed: () {
            // bottomNavCubit.changeScreen(5);
            showDialog(
              context: context,
              builder: (context) {
                return FiltersScreen();
              },
            );
          },
          icon: SvgPicture.asset(ImageAssets.filterIc),
          iconSize: 20.w,
          splashRadius: 20.w,
          constraints: const BoxConstraints(),
          padding: EdgeInsets.zero,
        ),
        VerticalDivider(
          color: ColorManager.white,
          thickness: 1.8.w,
          width: 40.w,
          indent: 17.h,
          endIndent: 17.h,
        ),
        IconButton(
          onPressed: () {
            showCupertinoModalPopup(
                context: context, builder: (context) => SearchScreen());
          },
          icon: SvgPicture.asset(ImageAssets.searchIc),
          iconSize: 20.w,
          splashRadius: 20.w,
          constraints: const BoxConstraints(),
          padding: EdgeInsets.zero,
        ),
        SizedBox(width: 15.w),
      ],
      backgroundColor: backgroundColor,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: backgroundColor,
      ),
    );
  }
}
