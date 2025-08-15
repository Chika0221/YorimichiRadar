part of 'radar_circle.dart';

class Window extends HookConsumerWidget {
  const Window({super.key, required this.radarDiameter});

  final double radarDiameter;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AnimationController animationController = useAnimationController(
      duration: Duration(seconds: 120),
    );
    final Tween<double> tween = Tween(begin: -1.0, end: 1.0);
    tween.chain(CurveTween(curve: Curves.ease));
    final animation = animationController.drive(tween);

    useAnimation(animation);

    useEffect(() {
      animationController.repeat();
      return null;
    }, []);

    return Stack(
      children: [
        SizedBox.square(
          dimension: radarDiameter,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(1000),
            child: AnimatedBuilder(
              animation: animation,
              builder: (context, child) {
                return Image.asset(
                  "assets/images/illust/town.png",
                  fit: BoxFit.fitHeight,
                  alignment: Alignment(animation.value, 0),
                );
              },
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            height: radarDiameter,
            width: 24,
            color: Theme.of(context).colorScheme.surface,
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            height: 24,
            width: radarDiameter,
            color: Theme.of(context).colorScheme.surface,
          ),
        ),
      ],
    );
  }
}
