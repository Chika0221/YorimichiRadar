// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

final takenTimeProvider = NotifierProvider<TakenTimeNotifier, double>(
  TakenTimeNotifier.new,
);

class TakenTimeNotifier extends Notifier<double> {
  late DateTime startTime;

  @override
  build() {
    return 0;
  }

  void setStartTime() {
    startTime = DateTime.now();
  }

  void calculationTakenTime() {
    final endTime = DateTime.now();

    final takenTime = endTime.difference(startTime).inSeconds.toDouble();
    state = takenTime;
  }
}
