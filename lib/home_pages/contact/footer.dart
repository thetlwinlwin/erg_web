import 'package:erg_web/shared/responsiveness.dart';
import 'package:flutter/material.dart';

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
        heightFactor: 0.1,
        child: Container(
          color: Theme.of(context).colorScheme.secondary,
          child: Center(
            child: Text(
              '© 2023 EverRichGroup Co.,Ltd. All rights reserved.',
              style: AppTextStyle.defaultTextStyle(textSize),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
