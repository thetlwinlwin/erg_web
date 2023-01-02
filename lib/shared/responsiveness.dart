import 'package:flutter/material.dart';

enum ScreenSize {
  phone(700),
  tablet(1000),
  dekstop(4080);

  final double maxWidth;
  const ScreenSize(this.maxWidth);
}

enum IntroPageTextSize {
  desktop(
    welcomeTxtSize: 40,
    bodyTxtSize: 30,
  ),
  phone(
    welcomeTxtSize: 24,
    bodyTxtSize: 20,
  );

  final double welcomeTxtSize;
  final double bodyTxtSize;
  const IntroPageTextSize({
    required this.welcomeTxtSize,
    required this.bodyTxtSize,
  });
}

enum ShopPageTextSize {
  phone(
    addressTxtSize: 16,
    locationTxtSize: 16,
    callNowTxtSize: 14,
  ),
  desktop(
    addressTxtSize: 20,
    locationTxtSize: 20,
    callNowTxtSize: 16,
  );

  final double addressTxtSize;
  final double locationTxtSize;
  final double callNowTxtSize;
  const ShopPageTextSize({
    required this.addressTxtSize,
    required this.locationTxtSize,
    required this.callNowTxtSize,
  });
}

class AppTextStyle {
  static TextStyle smallTitleStyle(BuildContext context) {
    final color = Theme.of(context).colorScheme.onSurface;
    return TextStyle(
      color: color,
      fontWeight: FontWeight.w700,
      fontSize: 22,
    );
  }

  static TextStyle largeTitleStyle(BuildContext context) {
    final color = Theme.of(context).colorScheme.onSurface;
    return TextStyle(
      color: color,
      fontWeight: FontWeight.w700,
      fontSize: 28,
    );
  }

  static TextStyle introTextStyle({required double textSize}) {
    return TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w700,
      fontSize: textSize,
    );
  }

  static TextStyle descriptionTextStyle(BuildContext context,
      {double? textSize}) {
    return TextStyle(
      color: Theme.of(context).colorScheme.onBackground,
      fontWeight: FontWeight.w500,
      overflow: TextOverflow.fade,
      fontSize: textSize,
    );
  }

  static TextStyle defaultTextStyle(double textSize) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: textSize,
    );
  }

  static TextStyle errorTextStyle(BuildContext context) {
    return TextStyle(
      color: Theme.of(context).errorColor,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle numberChosingDialogTitleStyle(BuildContext context) {
    return TextStyle(
      color: Theme.of(context).colorScheme.onPrimaryContainer,
      fontWeight: FontWeight.w700,
      fontSize: 18,
    );
  }
}
