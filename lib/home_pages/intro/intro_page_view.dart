import 'package:erg_web/home_pages/intro/desktop_intro.dart';
import 'package:erg_web/home_pages/intro/mobile_intro.dart';
import 'package:erg_web/shared/responsiveness.dart';
import 'package:flutter/material.dart';

class IntroPageView extends StatelessWidget {
  const IntroPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= ScreenSize.phone.maxWidth) {
          return const MobileIntroPageView();
        } else {
          return const DesktopIntroPageView();
        }
      },
    );
  }
}
