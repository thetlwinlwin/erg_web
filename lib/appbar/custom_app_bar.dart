import 'package:erg_web/shared/logo_image.dart';
import 'package:erg_web/shared/page_inherited.dart';
import 'package:erg_web/shared/responsiveness.dart';
import 'package:erg_web/shared/textbtn_color.dart';
import 'package:flutter/material.dart';

class AppBarContent extends StatelessWidget {
  const AppBarContent({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= ScreenSize.phone.maxWidth) {
          return const MobileAppBar();
        } else {
          return const DesktopAppBar();
        }
      },
    );
  }
}

class MobileAppBar extends StatelessWidget {
  const MobileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final currentPage =
        PageControllerInherited.of(context).controller.page?.floor() ?? 0;
    print(currentPage);

    return Container(
      color: Theme.of(context).colorScheme.primaryContainer,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const LogoImage(),
          CompanyName(
            style: AppTextStyle.smallTitleStyle(context),
          ),
          IconButton(
            color: Theme.of(context).colorScheme.onPrimaryContainer,
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: const Icon(Icons.menu),
          ),
        ],
      ),
    );
  }
}

class DesktopAppBar extends StatelessWidget {
  const DesktopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = PageControllerInherited.of(context);

    return Container(
      color: Theme.of(context).colorScheme.primaryContainer,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              const LogoImage(),
              CompanyName(
                style: AppTextStyle.largeTitleStyle(context),
              ),
            ],
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

class CompanyName extends StatelessWidget {
  const CompanyName({
    Key? key,
    required this.style,
  }) : super(key: key);
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Ever Rich Group',
      style: style,
    );
  }
}
