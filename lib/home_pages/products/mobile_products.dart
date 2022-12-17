import 'package:erg_web/shared/product_model.dart';
import 'package:flutter/material.dart';

class MobileProductsPageView extends StatelessWidget {
  const MobileProductsPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      scrollDirection: Axis.horizontal,
      semanticChildCount: productList.length,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 300,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
      ),
      itemBuilder: (context, index) => GridTile(
        child: Image(
          image: AssetImage(productList[index].imgPath),
          fit: BoxFit.scaleDown,
        ),
      ),
      itemCount: productList.length,
    );
  }
}
