part of 'radar_circle.dart';

class SensorWave extends StatefulHookConsumerWidget {
  const SensorWave({super.key, required this.radarDiameter});

  final double radarDiameter;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SensorWaveState();
}

class _SensorWaveState extends ConsumerState<SensorWave>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Tween<double> tween;
  final Curve curve = Curves.bounceInOut;
  late Animation<double> animation;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 100),
    );
    tween = Tween(begin: 0.0, end: widget.radarDiameter - 16);
    tween.chain(CurveTween(curve: curve));
    animation = animationController.drive(tween);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(sensorAnimationProvider, (_, setting) {
      animationController.duration = setting.duration;
      animationController.forward(from: 0.0);
      if (setting.duration <= Duration(milliseconds: 100)) {
        Vibration.vibrate(duration: setting.duration.inMilliseconds);
      }
    });

    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return Container(
          width: animation.value,
          height: animation.value,
          decoration: BoxDecoration(
            border: Border.all(
              width: 4,
              color: Theme.of(context).colorScheme.primary,
            ),
            shape: BoxShape.circle,
          ),
        );
      },
    );
  }
}
