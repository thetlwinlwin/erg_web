import 'package:erg_web/home_pages/shops/desktop_shop_location.dart';
import 'package:erg_web/home_pages/shops/mobile_shop_location.dart';
import 'package:erg_web/shared/responsiveness.dart';
import 'package:flutter/material.dart';

class ShopPageView extends StatelessWidget {
  const ShopPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (p0, constraints) {
        if (constraints.maxWidth < ScreenSize.phone.maxWidth) {
          return const MobileShopLocationPage();
        }
        return const DesktopShopLocationPage();
      },
    );
  }
}
