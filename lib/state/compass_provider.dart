// Dart imports:
import 'dart:math';

// Package imports:
import 'package:flutter_compass/flutter_compass.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CompassNotifier extends StreamNotifier<double> {
  @override
  Stream<double> build() {
    return getAngle();
  }

  Stream<double> getAngle() async* {
    yield* FlutterCompass.events!
        .where((event) => event.heading != null)
        .map((event) => -1 * pi * (event.heading! / 180));
  }
}

final CompassProvider = StreamNotifierProvider<CompassNotifier, double>(
  CompassNotifier.new,
);
