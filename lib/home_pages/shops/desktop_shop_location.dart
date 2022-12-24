import 'package:erg_web/shared/shop_model.dart';
import 'package:flutter/material.dart';

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
        TextButton(
            onPressed: () => setState(() {
                  _imageUrl = shopList.last.imgPath;
                }),
            child: Text('click')),
      ],
    );
  }
}
