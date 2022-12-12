import 'package:erg_web/appbar/custom_app_bar.dart';
import 'package:erg_web/drawer/mobile_drawer.dart';
import 'package:erg_web/home/home_body.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: MobileDrawer(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBarContent(),
      ),
      body: BodyView(),
    );
  }
}
