// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:yorimichi_radar/models/radius_setting.dart';

// Travel Mode Enum
enum TravelMode { walking, driving }

extension TravelModeExtension on TravelMode {
  String get displayName {
    switch (this) {
      case TravelMode.walking:
        return '徒歩';
      case TravelMode.driving:
        return '車';
    }
  }
}

// Providers
final keywordProvider = StateProvider<String>((ref) => 'ラーメン屋');

final radiusProvider = StateProvider<RadiusSetting>((ref) {
  final mode = ref.watch(travelModeProvider);

  return switch (mode) {
    TravelMode.walking => RadiusSetting(raduisValue: 1.0, min: 0.5, max: 10),
    TravelMode.driving => RadiusSetting(raduisValue: 5.0, min: 1.0, max: 30.0),
  };
}); // in km

final travelModeProvider = StateProvider<TravelMode>(
  (ref) => TravelMode.walking,
);
