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
        .map((event) => event.heading!);
  }
}

final CompassProvider = StreamNotifierProvider<CompassNotifier, double>(
  CompassNotifier.new,
);
