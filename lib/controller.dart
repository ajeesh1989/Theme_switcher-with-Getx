import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  IconData iconLight = Icons.wb_sunny;
  IconData iconDark = Icons.nights_stay;
  List<String> list = [
    'lib/image/light.jpg',
    'lib/image/dark.jpg',
  ];
  bool iconBool = false;
  int index = 0;
  void iconChange(bool val) {
    iconBool = val;
    update();
  }

  void indexChange(int val) {
    index = val;
    update();
  }
}
