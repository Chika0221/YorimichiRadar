// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:yorimichi_radar/state/compass_provider.dart';
import 'package:yorimichi_radar/widgets/radar/radar_circle.dart';

class RadarPage extends HookConsumerWidget {
  const RadarPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RadarCircle(),
            OutlinedButton(
              onPressed: () {
                ref.read(sensorAnimationProvider.notifier).state++;
              },
              child: Text("動くかな？"),
            ),
          ],
        ),
      ),
    );
  }
}
