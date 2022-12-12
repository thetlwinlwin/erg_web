import 'package:erg_web/home_pages/intro/intro_text.dart';
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
          child: Container(
            color: Theme.of(context)
                .colorScheme
                .secondaryContainer
                .withOpacity(0.5),
            padding: const EdgeInsets.all(20),
            child: const IntroPageText(
              fontSize: 30,
              welcomeSize: 40,
            ),
          ),
        ),
      ),
    );
  }
}
