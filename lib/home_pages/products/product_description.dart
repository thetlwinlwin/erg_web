import 'package:erg_web/shared/responsiveness.dart';
import 'package:flutter/material.dart';

class ProductDescription extends StatelessWidget {
  final bool isTablet;
  final String description;
  final String name;
  const ProductDescription({
    Key? key,
    this.isTablet = false,
    required this.description,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment:
            isTablet ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: AppTextStyle.smallTitleStyle(context),
          ),
          Text(
            maxLines: 5,
            description,
            style: AppTextStyle.descriptionTextStyle(context),
          ),
        ],
      ),
    );
  }
}
