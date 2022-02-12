import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ibiling/resources/assets_manager.dart';
import 'package:ibiling/resources/color_manager.dart';
import 'package:ibiling/resources/font_manager.dart';

class CustomCalendarWidget extends StatefulWidget {
  final String label;
  const CustomCalendarWidget({Key? key, required this.label}) : super(key: key);

  @override
  State<CustomCalendarWidget> createState() => _CustomCalendarWidgetState();
}

class _CustomCalendarWidgetState extends State<CustomCalendarWidget> {
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 116.w,
      padding: EdgeInsets.symmetric(
        vertical: 11.h,
        horizontal: 12.h,
      ),
      decoration: BoxDecoration(
        color: ColorManager.dark,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Row(
        children: [
          Text(
            selectedDate == null
                ? widget.label
                : "${selectedDate!.day}.${selectedDate!.month}.${selectedDate!.year}",
            style: TextStyle(
              fontSize: FontSize.s14,
              fontWeight: FontWeightManager.medium,
              color: ColorManager.darkGrey,
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () => _selectDate(context),
            icon: SvgPicture.asset(
              ImageAssets.calendarIc,
            ),
            splashRadius: 16.w,
            iconSize: 16.w,
            constraints: const BoxConstraints(),
            padding: EdgeInsets.zero,
          ),
        ],
      ),
    );
  }

  Future _selectDate(BuildContext context) async {
    selectedDate = DateTime.now();
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate!,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null) {
      setState(() => selectedDate = picked);
    }
  }
}
