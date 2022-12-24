import 'package:erg_web/home/home_page.dart';
import 'package:erg_web/shared/home_page_controller.dart';
import 'package:erg_web/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ever Rich Group',
      theme: myLightTheme,
      darkTheme: myDarkTheme,
      themeMode: ThemeMode.light,
      home: HomePageControl(
        controller: PageController(),
        child: const HomePage(),
      ),
    );
  }
}
