import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_switch/splash.dart';

import 'controller.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final control = Get.put(HomeController());
    return GetBuilder<HomeController>(
      builder: (controller) {
        return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            theme: control.iconBool ? _darkTheme : _lightTheme,
            home: const SplashScreen());
      },
    );
  }
}

ThemeData _lightTheme = ThemeData(
  primarySwatch: Colors.lightBlue,
  brightness: Brightness.light,
);

ThemeData _darkTheme = ThemeData(
  // primarySwatch: Colors.red,
  brightness: Brightness.dark,
);
