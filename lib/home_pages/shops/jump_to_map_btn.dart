import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:erg_web/shared/shop_model.dart';

class ShopBtn extends StatelessWidget {
  final ShopModel shopModel;
  const ShopBtn({
    Key? key,
    required this.shopModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => _launchingUri(context),
      child: const Text('Get Direction'),
    );
  }

  Future<void> _launchingUri(BuildContext context) async {
    final result = await canLaunchUrl(
      shopModel.mapAddress,
    );
    if (!result) {
      final toCopy = await showDialog<bool>(
            context: context,
            builder: (context) => const MapAlertDialog(),
            useSafeArea: true,
          ) ??
          false;
      if (toCopy) {
        await Clipboard.setData(
          ClipboardData(text: shopModel.latLong),
        );
      }
    } else {
      launchUrl(
        shopModel.mapAddress,
      );
      // }
    }
  }
}

class MapAlertDialog extends StatelessWidget {
  const MapAlertDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Cannot open Google Map'),
      content: const Text('Would you like to copy the location?'),
      contentPadding: const EdgeInsets.all(10),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(true);
            ScaffoldMessenger.of(context).clearSnackBars();
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Copied!'),
              ),
            );
          },
          child: const Text('YES'),
        ),
        TextButton(
          onPressed: () => Navigator.of(context).pop(false),
          child: const Text('NO'),
        ),
      ],
    );
  }
}
