// Dart imports:

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vibration/vibration.dart';

// Project imports:
import 'package:yorimichi_radar/main.dart';
import 'package:yorimichi_radar/state/compass_provider.dart';
import 'package:yorimichi_radar/state/sensor_animation_provider.dart';

part 'compass.dart';
part 'sensor.dart';
part 'sensor_wave.dart';
part 'window.dart';

class RadarCircle extends HookConsumerWidget {
  const RadarCircle({
    super.key,
    required this.mode,
    this.child,
    this.radarDiameter,
    this.icon = Icons.keyboard_arrow_up_rounded,
  });

  final RadarMode mode;
  final IconData icon;
  final Widget? child;
  final double? radarDiameter;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final maxDiameter =
        MediaQuery.of(context).size.width - pageHorizontalPadding * 2;

    final diameter = radarDiameter ?? maxDiameter;

    return Hero(
      tag: "radar",
      child: Container(
        width: diameter,
        height: diameter,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Theme.of(context).colorScheme.surfaceContainerHigh,
        ),
        child: switch (mode) {
          RadarMode.window => Window(radarDiameter: diameter),
          RadarMode.sensor => Sensor(radarDiameter: diameter),
          RadarMode.compass => Compass(),
          RadarMode.arrow => Center(child: Icon(icon)),
          RadarMode.none => child,
        },
      ),
    );
  }
}

enum RadarMode {
  window("窓"),
  sensor("センサー"),
  compass("コンパス"),
  arrow("開く"),
  none("なし");

  const RadarMode(this.text);
  final String text;
}
