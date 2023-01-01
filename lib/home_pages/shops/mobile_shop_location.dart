import 'package:erg_web/home_pages/shops/shop_location_card.dart';
import 'package:erg_web/shared/responsiveness.dart';
import 'package:erg_web/shared/shop_model.dart';
import 'package:erg_web/shared/sub_title.dart';
import 'package:flutter/material.dart';

class MobileShopLocationPage extends StatelessWidget {
  const MobileShopLocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: shopList.length,
      child: Column(
        children: [
          TabBar(
            indicatorColor: Theme.of(context).colorScheme.onPrimaryContainer,
            indicatorWeight: 6,
            labelColor: Theme.of(context).colorScheme.onPrimaryContainer,
            unselectedLabelColor: Colors.black.withOpacity(0.8),
            tabs: shopList
                .map(
                  (e) => Tab(text: e.name),
                )
                .toList(),
          ),
          Expanded(
            child: TabBarView(
              children: shopList
                  .map(
                    (e) => ShopLocationContainer(model: e),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class ShopLocationContainer extends StatelessWidget {
  final ShopModel model;
  const ShopLocationContainer({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image(
            image: AssetImage(model.imgPath),
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 10,
          left: 10,
          child: SubTitle(
            titleText: model.name,
          ),
        ),
        Positioned(
          bottom: 5,
          left: 10,
          right: 10,
          child: ShopLocationCard(
            model: model,
            textSizeEnum: ShopPageTextSize.phone,
          ),
        ),
      ],
    );
  }
}
