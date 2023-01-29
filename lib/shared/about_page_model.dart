class _VisionMission {
  final String _ourVision =
      'Lorem ipsum dolor sit amet, ei mel dolorum expetenda, mel te mundi possim, duo soleat conclusionemque ut.';

// 4 line is max

  final List<String> _ourMission = [
    'Lorem ipsum dolor sit amet, ei mel dolorum expetenda, mel te mundi possim, duo soleat conclusionemque ut.',
    'Lorem ipsum dolor sit amet, ei mel dolorum expetenda, mel te mundi possim, duo soleat conclusionemque ut.',
    'Lorem ipsum dolor sit amet, ei mel dolorum expetenda, mel te mundi possim, duo soleat conclusionemque ut.',
    'Lorem ipsum dolor sit amet, ei mel dolorum expetenda, mel te mundi possim, duo soleat conclusionemque ut.',
  ];

  // final String _history =
  //     "${' ' * 5}ERG Co.,Ltd was founded in 2006 as a Trading company and import diverse zinc coils into the local market. In 2014, due to high demand, the company was expanded into the field of manufacturing. Since then, we produce superior quailty materials and hand directly to both consumers and distributors.";

  final String _history =
      '${' ' * 5} Lorem ipsum dolor sit amet, ei mel dolorum expetenda, mel te mundi possim, duo soleat conclusionemque ut. In solum accusam percipitur his. Atqui consequuntur eu pro. Blandit insolens et pri. At sit gubergren urbanitas, ne omnium corpora vix, primis omnium mnesarchum eos eu.';

  String get visionTxt => _ourVision;
  List<String> get missionTxt => _ourMission;
  String get historyTxt => _history;
}

final aboutPageTxt = _VisionMission();
