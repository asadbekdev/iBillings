import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ibiling/blocs/cubit/bottom_nav_cubit.dart';
import 'package:ibiling/resources/assets_manager.dart';
import 'package:ibiling/resources/color_manager.dart';
import 'package:ibiling/screens/app/components/b_nav_icon.dart';
import 'package:ibiling/screens/new_payment/components/payment_dialog.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({
    Key? key,
    required this.bottomNavCubit,
  }) : super(key: key);

  final BottomNavCubit bottomNavCubit;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 74.h,
      color: ColorManager.darkest,
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 16.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BNavIcon(
            icon: ImageAssets.documentIc,
            title: "Contracts",
            onTap: () => bottomNavCubit.changeScreen(0),
            index: 0,
            currentIndex: bottomNavCubit.state,
          ),
          BNavIcon(
            icon: ImageAssets.timeIc,
            title: "History",
            onTap: () => bottomNavCubit.changeScreen(1),
            index: 1,
            currentIndex: bottomNavCubit.state,
          ),
          BNavIcon(
            icon: ImageAssets.plusIc,
            title: "New",
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return PaymentDialog();
                },
              );
            },
            index: 2,
            currentIndex: bottomNavCubit.state,
          ),
          BNavIcon(
            icon: ImageAssets.bookmarkIc,
            title: "Saved",
            onTap: () => bottomNavCubit.changeScreen(3),
            index: 3,
            currentIndex: bottomNavCubit.state,
          ),
          BNavIcon(
            icon: ImageAssets.profileIc,
            title: "Profile",
            onTap: () => bottomNavCubit.changeScreen(4),
            index: 4,
            currentIndex: bottomNavCubit.state,
          ),
        ],
      ),
    );
  }
}
