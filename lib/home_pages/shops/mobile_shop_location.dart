import 'package:erg_web/home_pages/shops/call_now_btn.dart';
import 'package:erg_web/shared/responsiveness.dart';
import 'package:flutter/material.dart';

import 'package:erg_web/home_pages/shops/jump_to_map_btn.dart';
import 'package:erg_web/shared/shop_model.dart';
import 'package:erg_web/shared/sub_title.dart';

class MobileShopLocationPage extends StatelessWidget {
  const MobileShopLocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: shopList.length,
      child: Column(
        children: [
          TabBar(
            indicatorColor: Theme.of(context).primaryColor,
            indicatorWeight: 6,
            labelColor: Theme.of(context).colorScheme.primary,
            unselectedLabelColor: Colors.black.withOpacity(0.6),
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
        Image(
          height: double.infinity,
          width: double.infinity,
          image: AssetImage(model.imgPath),
          fit: BoxFit.cover,
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
          ),
        ),
      ],
    );
  }
}

class ShopLocationCard extends StatelessWidget {
  final ShopModel model;
  const ShopLocationCard({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).colorScheme.secondaryContainer,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Wrap(
        runSpacing: 10,
        spacing: 5,
        children: [
          Text(
            model.physicalAddress,
            maxLines: 5,
            style: AppTextStyle.descriptionTextStyle(context),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ShopBtn(shopModel: model),
              CallNowBtn(model: model),
            ],
          ),
        ],
      ),
    );
  }
}
