import 'package:erg_web/shared/page_inherited.dart';
import 'package:flutter/material.dart';

class BodyView extends StatelessWidget {
  const BodyView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = PageControllerInherited.of(context).controller;
    return PageView(
      onPageChanged: (value) {},
      controller: controller,
      scrollDirection: Axis.vertical,
      children: PageOrder.pageList,
    );
  }
}
