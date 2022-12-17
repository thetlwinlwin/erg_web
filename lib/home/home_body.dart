import 'dart:ui';

import 'package:erg_web/shared/page_inherited.dart';
import 'package:flutter/material.dart';

class BodyView extends StatelessWidget {
  const BodyView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = HomePageControl.of(context).controller;
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(
        dragDevices: {
          PointerDeviceKind.touch,
          PointerDeviceKind.mouse,
        },
      ),
      child: Scrollbar(
        controller: controller,
        child: PageView(
          controller: controller,
          restorationId: 'This is same',
          scrollDirection: Axis.vertical,
          children: PageOrder.pageList,
        ),
      ),
    );
  }
}
