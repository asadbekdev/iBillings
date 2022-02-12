import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ibiling/resources/assets_manager.dart';
import 'package:ibiling/resources/color_manager.dart';
import 'package:ibiling/resources/font_manager.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _searchController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: TextField(
          controller: _searchController,
          autofocus: true,
          cursorColor: ColorManager.white,
          cursorHeight: 24.h,
          style: TextStyle(
            fontWeight: FontWeightManager.light,
            color: ColorManager.white,
            fontSize: FontSize.s16.sp,
          ),
          decoration: InputDecoration(
            hintText: 'Search by keywords',
            hintStyle: TextStyle(
              fontWeight: FontWeightManager.light,
              color: ColorManager.white.withOpacity(0.5),
              fontSize: FontSize.s16.sp,
            ),
            border: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            suffixIcon: IconButton(
              onPressed: () {
                _searchController.clear();
              },
              icon: SvgPicture.asset(ImageAssets.closeIc),
              iconSize: 16.w,
              splashRadius: 16.w,
              constraints: const BoxConstraints(),
              padding: EdgeInsets.zero,
            ),
          ),
        ),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: ColorManager.black,
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: ColorManager.black.withOpacity(0.9),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
