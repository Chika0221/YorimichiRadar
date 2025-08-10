part of 'radar_circle.dart';

final sensorAnimationProvider = StateProvider((ref) => 0);

class SensorWave extends StatefulHookConsumerWidget {
  const SensorWave({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SensorWaveState();
}

class _SensorWaveState extends ConsumerState<SensorWave>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Tween<double> tween;
  final Curve curve = Curves.ease;
  late Animation<double> animation;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    tween = Tween(begin: 0.0, end: 200);
    tween.chain(CurveTween(curve: curve));
    animation = animationController.drive(tween);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(sensorAnimationProvider, (_, _) {
      animationController.forward(from: 0.0);
    });

    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return Container(
          width: animation.value,
          height: animation.value,
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: Theme.of(context).colorScheme.primary,
            ),
            shape: BoxShape.circle,
          ),
        );
      },
    );
  }
}
