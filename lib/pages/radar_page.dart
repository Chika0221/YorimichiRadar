// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:yorimichi_radar/state/search_condition_provider.dart';
import 'package:yorimichi_radar/state/sensor_animation_provider.dart';
import 'package:yorimichi_radar/widgets/radar/radar_circle.dart';

class RadarPage extends HookConsumerWidget {
  const RadarPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ref.watch(keywordProvider)),
        centerTitle: true,
      ),
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
