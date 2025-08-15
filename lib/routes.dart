// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:yorimichi_radar/main_page.dart';
import 'package:yorimichi_radar/pages/radar_page.dart';
import 'package:yorimichi_radar/pages/settings_page.dart';

enum AppRoute {
  home('/'),
  setting('/setting'),
  radar('/radar');

  const AppRoute(this.path);
  final String path;
}

final Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.home.path: (context) => const MainPage(),
  AppRoute.setting.path: (context) => const SettingsPage(),
  AppRoute.radar.path: (context) => RadarPage(),
};
