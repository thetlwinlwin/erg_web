import 'package:erg_web/appbar/custom_app_bar.dart';
import 'package:erg_web/drawer/mobile_drawer.dart';
import 'package:erg_web/home/home_body.dart';
import 'package:flutter/material.dart';
import 'package:erg_web/shared/responsiveness.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: const MobileDrawer(),
      appBar: PreferredSize(
        preferredSize: maxWidth <= ScreenSize.tablet.maxWidth
            ? const Size.fromHeight(60)
            : const Size.fromHeight(100),
        child: const AppBarContent(),
      ),
      body: const BodyView(),
    );
  }
}
