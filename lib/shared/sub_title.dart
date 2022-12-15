import 'package:erg_web/shared/responsiveness.dart';
import 'package:flutter/material.dart';

class SubTitle extends StatelessWidget {
  final String titleText;
  const SubTitle({
    Key? key,
    required this.titleText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
        left: 10,
      ),
      child: Text(
        titleText,
        textAlign: TextAlign.left,
        style: AppTextStyle.smallTitleStyle(context),
      ),
    );
  }
}
