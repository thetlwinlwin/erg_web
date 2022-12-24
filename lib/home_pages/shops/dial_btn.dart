import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:erg_web/shared/responsiveness.dart';
import 'package:erg_web/shared/shop_model.dart';
import 'package:erg_web/shared/textbtn_color.dart';

class CallNowBtn extends StatelessWidget {
  final ShopModel model;
  final double? textSize;
  const CallNowBtn({
    Key? key,
    this.textSize,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomTextButton(
      onPressed: () => _dial(context),
      text: 'Call Now',
      textSize: textSize,
    );
  }

  Future<void> _dial(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: const Text(
            'Choose one number',
            textAlign: TextAlign.center,
          ),
          titleTextStyle: AppTextStyle.numberChosingDialogTitleStyle(context),
          contentPadding: const EdgeInsets.all(20),
          children: model.getPhones
              .map(
                (String number) => TextButton(
                  onPressed: () => _launchUrl(context, number),
                  child: Text(number),
                ),
              )
              .toList(),
        );
      },
    );
  }

  Future<void> _launchUrl(BuildContext context, String theNumber) async {
    final scaffoldMsger = ScaffoldMessenger.of(context);
    final phoneUri = model.phoneUri(theNumber);
    final result = await canLaunchUrl(phoneUri);
    if (!result) {
      scaffoldMsger.clearSnackBars();
      scaffoldMsger.showSnackBar(
        const SnackBar(
          content: Text(
            'Cannot make a phone call. The number is copied.',
          ),
        ),
      );
    } else {
      launchUrl(phoneUri);
    }
  }
}
