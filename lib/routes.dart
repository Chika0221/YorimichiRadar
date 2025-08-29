// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:latlong2/latlong.dart';

// Project imports:
import 'package:yorimichi_radar/main_page.dart';
import 'package:yorimichi_radar/pages/radar_page.dart';
import 'package:yorimichi_radar/pages/result_page.dart';
import 'package:yorimichi_radar/pages/search_condition_page.dart';
import 'package:yorimichi_radar/pages/search_page.dart';
import 'package:yorimichi_radar/pages/settings_page.dart';

enum AppRoute {
  home('/'),
  setting('/setting'),
  search('/search'),
  searchCondition('/searchCondition'),
  radar('/radar'),
  result('/result');

  const AppRoute(this.path);
  final String path;
}

final Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.home.path: (context) => const MainPage(),
  AppRoute.setting.path: (context) => const SettingsPage(),
  AppRoute.radar.path: (context) => const RadarPage(),
  AppRoute.search.path: (context) => const SearchPage(),
  AppRoute.searchCondition.path: (context) => const SearchConditionPage(),
  AppRoute.result.path: (context) {
    final startPoint = ModalRoute.of(context)!.settings.arguments as LatLng;
    return ResultPage(startPoint: startPoint);
  },
};
