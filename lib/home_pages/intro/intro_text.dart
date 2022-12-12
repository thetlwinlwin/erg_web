import 'package:erg_web/shared/responsiveness.dart';
import 'package:flutter/material.dart';

class IntroPageText extends StatelessWidget {
  final double fontSize;
  final double welcomeSize;
  const IntroPageText({
    Key? key,
    required this.fontSize,
    required this.welcomeSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: 1),
      duration: const Duration(milliseconds: 2000),
      builder: (_, value, child) {
        return Opacity(
          opacity: value,
          child: child,
        );
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome',
            style: AppTextStyle.introTextStyle(
              size: welcomeSize,
            ),
          ),
          FittedBox(
            child: Text(
              'Our products will serve the extended life.',
              style: AppTextStyle.introTextStyle(
                size: fontSize,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
