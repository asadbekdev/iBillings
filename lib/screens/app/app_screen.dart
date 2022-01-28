import 'package:flutter/material.dart';
import 'package:ibiling/screens/contracts/contracts_screen.dart';
import 'package:ibiling/screens/widgets/custom_app_bar.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Contracts',
      ),
      body:  ContractsScreen(),
    );
  }
}
