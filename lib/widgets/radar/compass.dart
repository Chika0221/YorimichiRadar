part of 'radar_circle.dart';

class Compass extends HookConsumerWidget {
  const Compass({
    super.key,
    required this.currentLocation,
    required this.place,
  });

  final latlong.LatLng? currentLocation;
  final Place? place;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final compassProvider = ref.watch(CompassProvider);

    final double bearing = Geolocator.bearingBetween(
      currentLocation!.latitude,
      currentLocation!.longitude,
      place!.location!.latitude,
      place!.location!.longitude,
    );

    final radianBearing = -1 * pi * (bearing / 180);

    return compassProvider.when(
      data: (data) {
        return Transform.rotate(
          angle: radianBearing + data,
          child: Center(
            child: Icon(
              Icons.arrow_upward_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        );
      },
      error: (error, stackTrace) {
        return Center(child: Text("コンパス読み込みエラー"));
      },
      loading: () {
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
