import 'package:erg_web/home_pages/contact/contact_page_view.dart';
import 'package:erg_web/home_pages/intro/intro_page_view.dart';
import 'package:erg_web/home_pages/products/products_page_view.dart';
import 'package:erg_web/home_pages/shops/shop_page_view.dart';
import 'package:flutter/material.dart';

class PageOrder {
  static List<Widget> get pageList => const [
        IntroPageView(),
        ProductsPageView(),
        ShopPageView(),
        ContactPageView(),
      ];

  static Map<String, int> get page => {
        'Home': 0,
        'Products': 1,
        'Shops': 2,
        'Contact Us': 3,
      };
}

class HomePageControl extends InheritedWidget {
  final PageController controller;

  const HomePageControl({
    super.key,
    required this.controller,
    required super.child,
  });

  static HomePageControl of(BuildContext context) {
    final HomePageControl? result =
        context.dependOnInheritedWidgetOfExactType<HomePageControl>();
    assert(result != null, 'No pagecontroller found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(HomePageControl oldWidget) => false;

  void goto(int pageIndex) => controller.animateToPage(
        pageIndex,
        duration: const Duration(
          milliseconds: 500,
        ),
        curve: Curves.ease,
      );
}
