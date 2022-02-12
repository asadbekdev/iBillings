import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ibiling/resources/color_manager.dart';
import 'package:ibiling/resources/font_manager.dart';

class BNavIcon extends StatelessWidget {
  final String title;
  final String icon;
  final void Function()? onTap;
  final int? index;
  final int? currentIndex;
  const BNavIcon(
      {Key? key,
      required this.title,
      required this.icon,
      required this.onTap,
      this.index,
      this.currentIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color _color =
        index == currentIndex ? ColorManager.lightGrey : ColorManager.grey;
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: 48.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(icon, color: _color),
            SizedBox(height: 4.h),
            Text(
              title,
              style: TextStyle(
                color: _color,
                fontWeight: FontWeightManager.semiBold,
                fontSize: FontSize.s10.sp,
              ),
            )
          ],
        ),
      ),
    );
  }
}
