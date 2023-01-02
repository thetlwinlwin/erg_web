import 'package:erg_web/shared/responsiveness.dart';
import 'package:erg_web/shared/about_page_model.dart';
import 'package:flutter/material.dart';

class AboutPageView extends StatelessWidget {
  const AboutPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: HistoryAndVision(),
    );
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
          child: Center(
            child: Text(
              aboutPageTxt.historyTxt,
              textAlign: TextAlign.justify,
              textScaleFactor: isPhone ? 1.0 : 1.5,
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: isPhone
                ? const EdgeInsets.all(0)
                : const EdgeInsets.only(left: 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Our Vision',
                  style: isPhone
                      ? AppTextStyle.smallTitleStyle(context)
                      : AppTextStyle.largeTitleStyle(context),
                ),
                Text(
                  aboutPageTxt.visionTxt,
                  textScaleFactor: isPhone ? 1.0 : 1.5,
                  textAlign: TextAlign.justify,
                ),
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
                        textScaleFactor: isPhone ? 0.8 : 1.4,
                        textAlign: TextAlign.justify,
                      ),
                    )
                    .toList(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
