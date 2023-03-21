import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final control = Get.put(HomeController());
    return GetBuilder<HomeController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            elevation: 5,
            title: const Text('Dark & Light theme'),
            actions: [
              IconButton(
                onPressed: () {
                  control.iconBool
                      ? control.indexChange(0)
                      : control.indexChange(1);
                  control.iconChange(!control.iconBool);
                },
                icon: Icon(
                    control.iconBool ? control.iconDark : control.iconLight),
              )
            ],
          ),
          body: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Image.asset(control.list[control.index]),
          ),
        );
      },
    );
  }
}
