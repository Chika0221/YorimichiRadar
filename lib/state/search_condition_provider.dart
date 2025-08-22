// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:yorimichi_radar/widgets/radar/radar_circle.dart';

// Providers
final keywordProvider = StateProvider<String>((ref) {
  return "";
});

final radiusProvider = StateProvider<double>((ref) {
  return 1.0;
}); // in km

final selectRadarProvider = StateProvider<Map<RadarMode, bool>>((ref) {
  return {RadarMode.compass: true, RadarMode.sensor: true};
});
