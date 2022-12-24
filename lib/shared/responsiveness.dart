import 'package:flutter/material.dart';

enum ScreenSize {
  phone(650),
  tablet(1000),
  dekstop(4080);

  final double maxWidth;
  const ScreenSize(this.maxWidth);
}

class AppTextStyle {
  static TextStyle smallTitleStyle(BuildContext context) {
    final color = Theme.of(context).colorScheme.onPrimaryContainer;
    return TextStyle(
      color: color,
      fontWeight: FontWeight.w700,
      fontSize: 22,
    );
  }

  static TextStyle largeTitleStyle(BuildContext context) {
    final color = Theme.of(context).colorScheme.onPrimaryContainer;
    return TextStyle(
      color: color,
      fontWeight: FontWeight.w700,
      fontSize: 28,
    );
  }

  static TextStyle introTextStyle({required double size}) {
    return TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w700,
      fontSize: size,
    );
  }

  static TextStyle descriptionTextStyle(BuildContext context) {
    return TextStyle(
      color: Theme.of(context).colorScheme.onBackground,
      fontWeight: FontWeight.w500,
      overflow: TextOverflow.fade,
    );
  }

  static TextStyle errorTextStyle(BuildContext context) {
    return TextStyle(
      color: Theme.of(context).errorColor,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle callBtnTextStyle(BuildContext context) {
    return TextStyle(
      color: Theme.of(context).colorScheme.primary,
      fontWeight: FontWeight.w700,
      fontSize: 18,
    );
  }
}
