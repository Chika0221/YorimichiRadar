// Dart imports:
import 'dart:math';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:yorimichi_radar/state/compass_provider.dart';

part 'compass.dart';
part 'sensor.dart';

class RadarCircle extends HookConsumerWidget {
  const RadarCircle({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final radarDiameter = MediaQuery.of(context).size.width - 128;
    return Container(
      height: radarDiameter,
      width: radarDiameter,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Theme.of(context).colorScheme.surfaceContainerHigh,
      ),
      child: Compass(),
    );
  }
}
