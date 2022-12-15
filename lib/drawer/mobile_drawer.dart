import 'package:erg_web/shared/logo_image.dart';
import 'package:erg_web/shared/page_inherited.dart';
import 'package:erg_web/shared/textbtn_color.dart';
import 'package:flutter/material.dart';

class MobileDrawer extends StatelessWidget {
  const MobileDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = HomePageControl.of(context);
    final width = MediaQuery.of(context).size.width;
    return Drawer(
      width: width / 2,
      child: Column(
        children: [
          const DrawerHeader(
            child: LogoImage(),
          ),
          ...PageOrder.page.entries
              .map(
                (e) => CustomTextButton(
                  onPressed: () => controller.goto(
                    e.value,
                  ),
                  text: e.key,
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
