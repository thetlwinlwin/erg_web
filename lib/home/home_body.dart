import 'dart:ui';

import 'package:erg_web/shared/page_inherited.dart';
import 'package:erg_web/shared/responsiveness.dart';
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
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < ScreenSize.phone.maxWidth) {
            return PageView(
              controller: controller,
              scrollDirection: Axis.vertical,
              children: PageOrder.pageList,
            );
          }
          return Scrollbar(
            controller: controller,
            child: PageView(
              controller: controller,
              scrollDirection: Axis.vertical,
              children: PageOrder.pageList,
            ),
          );
        },
      ),
    );
  }
}
