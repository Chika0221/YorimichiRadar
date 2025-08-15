part of 'radar_circle.dart';

class SensorWave extends HookConsumerWidget {
  const SensorWave({super.key, required this.radarDiameter});

  final double radarDiameter;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AnimationController animationController = useAnimationController(
      duration: Duration(milliseconds: 100),
    );
    final Tween<double> tween = Tween(begin: 0.0, end: radarDiameter - 16);
    tween.chain(CurveTween(curve: Curves.ease));
    final animation = animationController.drive(tween);

    useAnimation(animation);
    

    ref.listen(sensorAnimationProvider, (_, setting) {
      animationController.duration = setting.duration;
      animationController.forward(from: 0.0);

      // 音を重ねて再生するために、毎回新しいAudioPlayerインスタンスを生成します。
      // これにより、前の音の再生を妨げることなく、新しい音を再生できます。
      final player = AudioPlayer();
      player.play(AssetSource('audio/se/pi.mp3'));
      // 再生が完了したら、リソースを解放するためにインスタンスを破棄します。
      // .first を使うことで、一度だけ実行されるようにしています。
      player.onPlayerComplete.first.then((_) => player.dispose());

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
