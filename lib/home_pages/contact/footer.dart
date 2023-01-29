import 'package:erg_web/shared/responsiveness.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  final double textSize;
  const Footer({
    Key? key,
    required this.textSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: FractionallySizedBox(
        heightFactor: 0.15,
        child: Container(
          color: Theme.of(context).colorScheme.secondary,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Follow us on',
                    style: AppTextStyle.defaultTextStyle(textSize),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () async => await _launchingUri(context),
                    child: const Icon(
                      Icons.facebook_outlined,
                      color: Colors.blue,
                      size: 30,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.copyright_outlined),
                  Text('2023 EverRichGroup Co.,Ltd. All rights reserved.'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _launchingUri(BuildContext context) async {
    final msger = ScaffoldMessenger.of(context);
    final fbUri = Uri.parse('https://www.facebook.com/EverrichGroup');
    final result = await canLaunchUrl(fbUri);
    if (!result) {
      if (msger.mounted) {
        msger.clearSnackBars();
        msger.showSnackBar(
          const SnackBar(
            content: Text('Error has occured.'),
          ),
        );
      }
    } else {
      launchUrl(fbUri);
    }
  }
}
