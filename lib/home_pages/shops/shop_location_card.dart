import 'package:flutter/material.dart';

import 'package:erg_web/home_pages/shops/dial_btn.dart';
import 'package:erg_web/home_pages/shops/location_btn.dart';
import 'package:erg_web/shared/decorated_container.dart';
import 'package:erg_web/shared/responsiveness.dart';
import 'package:erg_web/shared/shop_model.dart';

class ShopLocationCard extends StatelessWidget {
  final ShopModel model;
  final ShopPageTextSize textSizeEnum;
  const ShopLocationCard({
    Key? key,
    required this.model,
    required this.textSizeEnum,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            model.physicalAddress,
            maxLines: 5,
            style: AppTextStyle.descriptionTextStyle(
              context,
              textSize: textSizeEnum.addressTxtSize,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Wrap(
            alignment: WrapAlignment.start,
            spacing: 10,
            children: [
              ShopBtn(
                shopModel: model,
                textSize: textSizeEnum.locationTxtSize,
              ),
              CallNowBtn(
                model: model,
                textSize: textSizeEnum.callNowTxtSize,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
