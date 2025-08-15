// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

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

// Radius Mode
class RadiusSetting {
  final double radius_value;
  final double min;
  final double max;

  const RadiusSetting(this.radius_value, this.max, this.min);
}

// Providers
final keywordProvider = StateProvider<String>((ref) => 'ラーメン屋');

// final radiusProvider = StateProvider<RadiusSetting>((ref) {
//   final mode = ref.watch(travelModeProvider);

//   return switch (mode) {
//     TravelMode.driving => RadiusSetting(1.0, 10, 0.5),
//     TravelMode.walking => RadiusSetting(5.0, 30, 1),
//   };
// }); // in km
final radiusProvider = StateProvider<double>((ref) {
  final mode = ref.watch(travelModeProvider);

  return switch (mode) {
    TravelMode.driving => 1.0,
    TravelMode.walking => 5.0,
  };
}); // in km

final travelModeProvider = StateProvider<TravelMode>(
  (ref) => TravelMode.walking,
);
