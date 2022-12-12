import 'package:erg_web/home/home_page.dart';
import 'package:erg_web/shared/page_inherited.dart';
import 'package:erg_web/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: myLightTheme,
      darkTheme: myDarkTheme,
      themeMode: ThemeMode.light,
      home: PageControllerInherited(
        controller: PageController(),
        child: const HomePage(),
      ),
    );
  }
}
