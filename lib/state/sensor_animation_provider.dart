// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

final sensorAnimationProvider =
    NotifierProvider<SensorAnimationNotifier, SensorSetting>(
      SensorAnimationNotifier.new,
    );

class SensorAnimationNotifier extends Notifier<SensorSetting> {
  @override
  build() {
    return SensorSetting(Duration(seconds: 0));
  }

  void startWave(SensorSetting setting) {
    state = setting;
  }
}

class SensorSetting {
  final Duration duration;

  const SensorSetting(this.duration);
}
