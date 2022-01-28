import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ibiling/blocs/date_bloc.dart';
import 'package:ibiling/resources/assets_manager.dart';
import 'package:ibiling/resources/color_manager.dart';
import 'package:ibiling/resources/font_manager.dart';
import 'package:ibiling/screens/contracts/components/date_btn.dart';
import 'package:jiffy/jiffy.dart';

class ContractsScreen extends StatelessWidget {
  ContractsScreen({Key? key}) : super(key: key);

  final dateBloc = DateBloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            BlocBuilder<DateBloc, Jiffy>(
              bloc: dateBloc,
              builder: (ctx, jiffy) {
                final fromDate = Jiffy([jiffy.year - 1, 1, 1]);
                final toDate = Jiffy([jiffy.year + 1, 1, 1]);
                return Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 8.w, vertical: 12.h),
                  color: ColorManager.darker,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 8.w),
                          Text(
                            "${jiffy.MMMM}, ${jiffy.year}",
                            style: TextStyle(
                              color: ColorManager.grey1,
                              fontWeight: FontWeightManager.semiBold,
                              fontSize: FontSize.s18.sp,
                            ),
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  if (jiffy.format("MM.yyyy") !=
                                      fromDate.format("MM.yyyy")) {
                                    dateBloc.add(DatePrevPressed());
                                  }
                                },
                                splashColor: ColorManager.white,
                                child: SvgPicture.asset(ImageAssets.arrowLeftIc,
                                    color: ColorManager.grey2),
                              ),
                              SizedBox(width: 8.w),
                              InkWell(
                                onTap: () {
                                  if (jiffy.format("MM.yyyy") !=
                                      fromDate.format("MM.yyyy")) {
                                    dateBloc.add(DateNextPressed());
                                  }
                                },
                                splashColor: ColorManager.white,
                                child: SvgPicture.asset(
                                    ImageAssets.arrowRightIc,
                                    color: ColorManager.grey2),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 20.h),
                      SizedBox(
                        height: 72.h,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: jiffy.daysInMonth,
                          itemBuilder: (context, index) {
                            return DateBtn(
                              wday:
                                  Jiffy([jiffy.year, jiffy.month, index + 1]).E,
                              day: "${index + 1}",
                            );
                          },
                          separatorBuilder: (context, index) {
                            return SizedBox(width: 18.w);
                          },
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
