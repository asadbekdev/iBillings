import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ibiling/resources/theme_manager.dart';
import 'package:ibiling/screens/app/app_screen.dart';
import 'package:ibiling/screens/history/history_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375.0, 815.0),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: () => MaterialApp(
        title: 'iBilings',
        debugShowCheckedModeBanner: true,
        home: AppScreen(),
        theme: getApplicationTheme(),
      ),
    );
  }
}
