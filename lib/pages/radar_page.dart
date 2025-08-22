// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:yorimichi_radar/state/focus_place_index_provider.dart';
import 'package:yorimichi_radar/state/search_places_provider.dart';
import 'package:yorimichi_radar/state/sensor_animation_provider.dart';
import 'package:yorimichi_radar/widgets/radar/radar_circle.dart';

class RadarPage extends HookConsumerWidget {
  const RadarPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchPlaces = ref.watch(searchPlacesProvider);
    final focusPlaceIndex = ref.watch(focusPlaceIndexProvider);

    final place = searchPlaces.when(
      data: (place) => place[focusPlaceIndex!],
      error: (error, stackTrace) => null,
      loading: () => null,
    );
    if (place == null) {
      return const Scaffold(body: Center(child: Text("場所が見つかりませんでした。")));
    }

    return Scaffold(
      appBar: AppBar(title: Text(place.displayName.text), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RadarCircle(mode: RadarMode.sensor),
            OutlinedButton(
              onPressed: () {
                ref
                    .read(sensorAnimationProvider.notifier)
                    .startWave(SensorSetting(Duration(milliseconds: 100)));
              },
              child: Text("センサ"),
            ),
          ],
        ),
      ),
    );
  }
}
