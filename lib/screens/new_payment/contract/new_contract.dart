import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ibiling/resources/assets_manager.dart';
import 'package:ibiling/resources/color_manager.dart';
import 'package:ibiling/resources/font_manager.dart';

class NewContractScreen extends StatefulWidget {
  const NewContractScreen({Key? key}) : super(key: key);

  @override
  State<NewContractScreen> createState() => _NewContractScreenState();
}

class _NewContractScreenState extends State<NewContractScreen> {
  TextEditingController _fullNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    String? sItem;
    return Scaffold(
      backgroundColor: ColorManager.black,
      appBar: AppBar(
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
          "New contract",
          style: TextStyle(
            color: ColorManager.white,
            fontWeight: FontWeightManager.regular,
            fontSize: FontSize.s18.sp,
          ),
        ),
        titleSpacing: 12.w,
        backgroundColor: ColorManager.darkest,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: ColorManager.darkest,
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Лицо",
              style: TextStyle(
                  fontWeight: FontWeightManager.light,
                  color: ColorManager.lightGrey1.withOpacity(0.4),
                  fontSize: FontSize.s14.sp),
            ),
            SizedBox(height: 6.h),
            DropdownButtonFormField<String>(
              value: sItem,
              onChanged: (String? newValue) {},
              items: <String>['One', 'Two'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(value),
                      Radio(
                        value: value,
                        groupValue: sItem,
                        onChanged: (String? v) {
                          setState(() => sItem = v);
                        },
                        activeColor: ColorManager.darkGreen,
                      ),
                    ],
                  ),
                );
              }).toList(),
              alignment: Alignment.bottomCenter,
              decoration: const InputDecoration(),
              dropdownColor: ColorManager.dark,
              style: TextStyle(
                fontWeight: FontWeightManager.light,
                color: ColorManager.grey2,
                fontSize: FontSize.s14.sp,
              ),
              icon: SvgPicture.asset(ImageAssets.arrowDownCircleIc,
                  width: 17.w, height: 17.w, color: ColorManager.lightGrey1),
            ),
            SizedBox(height: 16.h),
            Text(
              "Fisher’s full name",
              style: TextStyle(
                  fontWeight: FontWeightManager.light,
                  color: ColorManager.lightGrey1.withOpacity(0.4),
                  fontSize: FontSize.s14.sp),
            ),
            SizedBox(height: 6.h),
            TextField(
              controller: _fullNameController,
              cursorColor: ColorManager.white,
              style: TextStyle(
                fontWeight: FontWeightManager.light,
                color: ColorManager.lightGrey1,
                fontSize: FontSize.s14.sp,
              ),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  vertical: 14.h,
                  horizontal: 16.w,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: _fullNameController.text.isNotEmpty
                          ? ColorManager.lightGrey
                          : ColorManager.lightGrey1.withOpacity(0.4),
                      width: 1.2.w),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
