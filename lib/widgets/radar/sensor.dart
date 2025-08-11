part of 'radar_circle.dart';

class Sensor extends HookConsumerWidget {
  const Sensor({super.key, required this.radarDiameter});

  final double radarDiameter;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SensorStick(radarDiameter: radarDiameter);
  }
}

class SensorStick extends StatelessWidget {
  const SensorStick({super.key, required this.radarDiameter});

  final double radarDiameter;

  @override
  Widget build(BuildContext context) {
    final fillColor = Theme.of(context).colorScheme.primary;

    return ClipRRect(
      borderRadius: BorderRadius.circular(1000),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipPath(
              clipper: SensorStickClipper(),
              child: Container(
                height: radarDiameter / 2,
                width: 32,
                color: fillColor,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 48,
              width: 48,
              decoration: BoxDecoration(
                color: fillColor,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SensorWave(radarDiameter: radarDiameter),
          ),
        ],
      ),
    );
  }
}

class SensorStickClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.moveTo(size.width / 4, 0);
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width * 3 / 4, 0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
