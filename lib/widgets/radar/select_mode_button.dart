// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:yorimichi_radar/state/search_condition_provider.dart';
import 'package:yorimichi_radar/widgets/radar/radar_circle.dart';

class SelectModeButton extends HookConsumerWidget {
  const SelectModeButton({super.key, required this.radarMode});

  final ValueNotifier radarMode;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectRadar = ref.read(selectRadarProvider);

    if (selectRadar.length != 1) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: ShapeDecoration(
          shape: StadiumBorder(),
          color: Theme.of(context).colorScheme.surfaceContainerHigh,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.4,
              child: OutlinedButton(
                onPressed: () {
                  radarMode.value = RadarMode.sensor;
                },
                child: Text(RadarMode.sensor.text),
              ),
            ),
            const SizedBox(width: 8),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.4,
              child: OutlinedButton(
                onPressed: () {
                  radarMode.value = RadarMode.compass;
                },
                child: Text(RadarMode.compass.text),
              ),
            ),
          ],
        ),
      );
    } else {
      return SizedBox.shrink();
    }
  }
}
