import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibiling/blocs/cubit/bottom_nav_cubit.dart';
import 'package:ibiling/screens/bookmark/bookmark_screen.dart';
import 'package:ibiling/screens/contracts/contracts_screen.dart';
import 'package:ibiling/screens/filters/filters_screen.dart';
import 'package:ibiling/screens/history/history_screen.dart';
import 'package:ibiling/screens/new_payment/new_screen.dart';
import 'package:ibiling/screens/profile/profile_screen.dart';
import 'package:ibiling/screens/widgets/custom_app_bar.dart';
import 'package:ibiling/screens/widgets/custom_bottom_nav.dart';

final bottomNavCubit = BottomNavCubit();

class AppScreen extends StatelessWidget {
  AppScreen({Key? key}) : super(key: key);

  List screens = [
    ContractsScreen(),
    HistoryScreen(),
    NewScreen(),
    SavedScreen(),
    ProfileScreen(),
    FiltersScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavCubit, int>(
      bloc: bottomNavCubit,
      builder: (ctx, stateIndex) {
        return Scaffold(
          body: screens[stateIndex],
          bottomNavigationBar: CustomBottomNav(bottomNavCubit: bottomNavCubit),
        );
      },
    );
  }
}
