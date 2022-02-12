import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ibiling/resources/assets_manager.dart';
import 'package:ibiling/resources/color_manager.dart';
import 'package:ibiling/resources/font_manager.dart';

class StatusItem extends StatefulWidget {
  const StatusItem({
    Key? key,
    required String statusLabel,
  })  : _statusLabel = statusLabel,
        super(key: key);

  final String _statusLabel;

  @override
  State<StatusItem> createState() => _StatusItemState();
}

class _StatusItemState extends State<StatusItem> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () => setState(() => isChecked = !isChecked),
          icon: SvgPicture.asset(
            isChecked ? ImageAssets.checkBoxFilledIc : ImageAssets.checkBoxIc,
            width: 20.w,
            height: 20.w,
            color: ColorManager.grey,
          ),
          splashRadius: 15.w,
          constraints: const BoxConstraints(),
          iconSize: 20.w,
          padding: EdgeInsets.zero,
        ),
        SizedBox(width: 8.w),
        Text(
          widget._statusLabel,
          style: TextStyle(
            fontSize: FontSize.s14.sp,
            fontWeight: FontWeightManager.regular,
            color: isChecked ? ColorManager.white : ColorManager.grey,
          ),
        ),
      ],
    );
  }
}
