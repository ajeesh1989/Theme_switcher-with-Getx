import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

bool _iconBool = false;

IconData _iconLight = Icons.wb_sunny;
IconData _iconDark = Icons.nights_stay;

ThemeData _lightTheme = ThemeData(
  primarySwatch: Colors.lightBlue,
  brightness: Brightness.light,
);

ThemeData _darkTheme = ThemeData(
  // primarySwatch: Colors.red,
  brightness: Brightness.dark,
);

class _MyAppState extends State<MyApp> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    List<String> list = [
      'lib/image/light.jpg',
      'lib/image/dark.jpg',
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _iconBool ? _darkTheme : _lightTheme,
      home: Scaffold(
        appBar: AppBar(
          elevation: 5,
          title: const Text('Dark & Light theme'),
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  _iconBool ? index = 0 : index = 1;
                  _iconBool = !_iconBool;
                });
              },
              icon: Icon(_iconBool ? _iconDark : _iconLight),
            )
          ],
        ),
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Image.asset(list[index]),
        ),
      ),
    );
  }
}
