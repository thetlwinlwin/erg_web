import 'package:erg_web/shared/decorated_container.dart';
import 'package:erg_web/shared/sub_title.dart';
import 'package:flutter/material.dart';

import 'package:erg_web/home_pages/shops/shop_location_card.dart';
import 'package:erg_web/shared/responsiveness.dart';
import 'package:erg_web/shared/shop_model.dart';

class DesktopShopLocationPage extends StatefulWidget {
  const DesktopShopLocationPage({super.key});

  @override
  State<DesktopShopLocationPage> createState() =>
      _DesktopShopLocationPageState();
}

class _DesktopShopLocationPageState extends State<DesktopShopLocationPage> {
  late String _imageUrl;
  @override
  void initState() {
    super.initState();
    _imageUrl = shopList.first.imgPath;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image(
            image: AssetImage(_imageUrl),
            fit: BoxFit.cover,
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: FractionallySizedBox(
            widthFactor: 0.35,
            heightFactor: 0.7,
            child: CustomContainer(
              color: Colors.grey,
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: shopList
                      .map(
                        (e) => _DekstopLocationCard(model: e),
                      )
                      .toList(),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _DekstopLocationCard extends StatelessWidget {
  final ShopModel model;
  const _DekstopLocationCard({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SubTitle(titleText: model.name),
        const SizedBox(
          height: 10,
        ),
        ShopLocationCard(
          model: model,
          textSizeEnum: ShopPageTextSize.desktop,
        ),
      ],
    );
  }
}
