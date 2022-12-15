import 'package:erg_web/home_pages/products/desktop_products.dart';
import 'package:erg_web/home_pages/products/mobile_products.dart';
import 'package:erg_web/shared/responsiveness.dart';
import 'package:erg_web/shared/sub_title.dart';
import 'package:flutter/material.dart';

class ProductsPageView extends StatelessWidget {
  const ProductsPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const [
        SubTitle(titleText: 'Products'),
        Expanded(
          child: ProductShowCase(),
        ),
      ],
    );
  }
}

class ProductShowCase extends StatelessWidget {
  const ProductShowCase({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        if (constraints.maxWidth <= ScreenSize.phone.maxWidth) {
          return const MobileProductsPageView();
        } else {
          return const DesktopProductsPageView();
        }
      },
    );
  }
}
