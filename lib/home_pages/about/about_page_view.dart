import 'package:erg_web/shared/decorated_container.dart';
import 'package:erg_web/shared/responsiveness.dart';
import 'package:erg_web/shared/about_page_model.dart';
import 'package:flutter/material.dart';

class AboutPageView extends StatelessWidget {
  const AboutPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return const HistoryAndVision();
  }
}

class HistoryAndVision extends StatelessWidget {
  const HistoryAndVision({super.key});

  @override
  Widget build(BuildContext context) {
    final isPhone =
        MediaQuery.of(context).size.width <= ScreenSize.phone.maxWidth;

    return Flex(
      direction: isPhone ? Axis.vertical : Axis.horizontal,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/about_page.jpg',
                ),
              ),
            ),
            child: Center(
              child: CustomContainer(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10),
                child: Text(
                  aboutPageTxt.historyTxt,
                  textAlign: TextAlign.justify,
                  style: AppTextStyle.descriptionTextStyle(context),
                  textScaleFactor: isPhone ? 0.9 : 1.5,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: isPhone
                ? const EdgeInsets.all(15)
                : const EdgeInsets.only(
                    left: 100,
                    right: 20,
                    top: 20,
                    bottom: 20,
                  ),
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Our Vision',
                        style: isPhone
                            ? AppTextStyle.smallTitleStyle(context)
                            : AppTextStyle.largeTitleStyle(context),
                      ),
                      Text(
                        aboutPageTxt.visionTxt,
                        textScaleFactor: isPhone ? 1 : 1.4,
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Text(
                        'Our Missions',
                        style: isPhone
                            ? AppTextStyle.smallTitleStyle(context)
                            : AppTextStyle.largeTitleStyle(context),
                      ),
                      ...aboutPageTxt.missionTxt
                          .map(
                            (e) => Text(
                              e,
                              textScaleFactor: isPhone ? 0.9 : 1.4,
                              textAlign: TextAlign.justify,
                            ),
                          )
                          .toList(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
