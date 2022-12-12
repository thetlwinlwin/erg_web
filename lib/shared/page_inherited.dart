import 'package:erg_web/home_pages/about/about_page_view.dart';
import 'package:erg_web/home_pages/intro/intro_page_view.dart';
import 'package:erg_web/home_pages/products/products_page_view.dart';
import 'package:erg_web/home_pages/shops/shop_page_view.dart';
import 'package:flutter/material.dart';

class PageOrder {
  static List<Widget> get pageList => const [
        IntroPageView(),
        ProductsPageView(),
        ShopPageView(),
        AboutPageView(),
      ];

  static Map<String, int> get page => {
        'Home': 0,
        'Products': 1,
        'Shops': 2,
        'About Us': 3,
      };
}

class PageControllerInherited extends InheritedWidget {
  final PageController controller;

  const PageControllerInherited({
    super.key,
    required this.controller,
    required super.child,
  });

  static PageControllerInherited of(BuildContext context) {
    final PageControllerInherited? result =
        context.dependOnInheritedWidgetOfExactType<PageControllerInherited>();
    assert(result != null, 'No pagecontroller found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(PageControllerInherited oldWidget) => false;

  void goto(int pageIndex) => controller.animateToPage(
        pageIndex,
        duration: const Duration(
          milliseconds: 500,
        ),
        curve: Curves.ease,
      );
}
