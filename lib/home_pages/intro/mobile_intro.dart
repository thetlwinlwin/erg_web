import 'package:erg_web/home_pages/intro/intro_text.dart';
import 'package:erg_web/shared/responsiveness.dart';
import 'package:flutter/material.dart';

class MobileIntroPageView extends StatelessWidget {
  const MobileIntroPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/mobile_intro.jpg'),
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.only(
          top: 100.0,
          right: 20.0,
        ),
        child: IntroPageText(
          introPageSizeEnum: IntroPageTextSize.phone,
        ),
      ),
    );
  }
}
