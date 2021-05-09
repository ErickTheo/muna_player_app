import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muna_player_app/routes/AppPages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Muna Player',
      defaultTransition: Transition.native,
      initialRoute: AppPages.Initial,
      getPages: AppPages.pages,
    );
  }
}
