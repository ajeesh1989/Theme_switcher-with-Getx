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
            child: Column(
              children: [
                Image.asset(
                  control.list[control.index],
                ),
                // ignore: prefer_const_constructors
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'What is dark and light theme in flutter?',
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        textAlign: TextAlign.justify,
                        "In Flutter, dark and light themes are two different visual styles that can be applied to the user interface (UI) of a mobile application.A light theme typically has a white or light-colored background and uses darker text and icons for contrast. This creates a bright and clean look that is often associated with modern design.\n\nOn the other hand, a dark theme has a darker background with lighter text and icons, which can be easier on the eyes in low-light environments. A dark theme can also create a more dramatic and sophisticated look for an app.\n\nFlutter makes it easy to switch between dark and light themes using the Theme widget. This widget provides a way to specify a set of colors and styles that define the appearance of the app, and these can be switched between light and dark modes based on the user's preferences or the system settings. This allows users to customize the look and feel of the app to suit their preferences and the environment they're in.",
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
