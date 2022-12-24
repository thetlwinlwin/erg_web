import 'package:erg_web/shared/responsiveness.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:erg_web/shared/shop_model.dart';

class ShopBtn extends StatelessWidget {
  final ShopModel shopModel;
  final double textSize;
  const ShopBtn({
    Key? key,
    required this.shopModel,
    required this.textSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => _launchingUri(context),
      child: Text(
        'Get Direction',
        style: AppTextStyle.defaultTextStyle(textSize),
      ),
    );
  }

  Future<void> _launchingUri(BuildContext context) async {
    final result = await canLaunchUrl(
      shopModel.mapAddress,
    );
    if (!result) {
      final toCopy = await showDialog<bool>(
            context: context,
            builder: (context) => const _MapAlertDialog(),
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

class _MapAlertDialog extends StatelessWidget {
  const _MapAlertDialog({
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
