import 'dart:ui';
import 'package:erg_web/shared/decorated_container.dart';
import 'package:erg_web/shared/responsiveness.dart';
import 'package:flutter/material.dart';
import 'package:erg_web/home_pages/products/product_description.dart';
import 'package:erg_web/shared/product_model.dart';

class DesktopProductsPageView extends StatelessWidget {
  const DesktopProductsPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, BoxConstraints constraints) {
      return ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(
          dragDevices: {
            PointerDeviceKind.touch,
            PointerDeviceKind.mouse,
          },
        ),
        child: FractionallySizedBox(
          heightFactor:
              constraints.maxWidth <= ScreenSize.tablet.maxWidth ? 0.75 : 0.6,
          child: PageView.builder(
            controller: PageController(viewportFraction: 0.6),
            itemCount: productList.length,
            itemBuilder: (context, index) {
              if (constraints.maxWidth <= ScreenSize.tablet.maxWidth) {
                return TabletProductCard(product: productList[index]);
              }
              return DesktopProductCard(product: productList[index]);
            },
          ),
        ),
      );
    });
  }
}

class TabletProductCard extends StatelessWidget {
  final Product product;
  const TabletProductCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Center(
              child: Image(
                image: AssetImage(product.imgPath),
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: ProductDescription(
                isTablet: true,
                description: product.description,
                name: product.name,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DesktopProductCard extends StatelessWidget {
  final Product product;
  const DesktopProductCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Image(
                image: AssetImage(product.imgPath),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: ProductDescription(
                description: product.description,
                name: product.name,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
