import 'package:flutter/material.dart';
import 'package:ibiling/resources/color_manager.dart';
import 'package:ibiling/screens/widgets/custom_app_bar.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Saved',
        backgroundColor: ColorManager.darkest,
      ),
      backgroundColor: ColorManager.black,
      body: Container(),
    );
  }
}
