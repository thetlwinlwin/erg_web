import 'package:erg_web/home_pages/intro/intro_text.dart';
import 'package:erg_web/shared/decorated_container.dart';
import 'package:flutter/material.dart';

class DesktopIntroPageView extends StatelessWidget {
  const DesktopIntroPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('assets/desktop_intro.jpg'),
        ),
      ),
      child: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: const CustomContainer(
            padding: EdgeInsets.all(20),
            child: IntroPageText(
              fontSize: 30,
              welcomeSize: 40,
            ),
          ),
        ),
      ),
    );
  }
}
