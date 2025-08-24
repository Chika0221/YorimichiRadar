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

    if (currentLocation == null || place?.location == null) {
      // currentLocationまたはplaceがnullの場合は何も表示しない
      return const SizedBox.shrink();
    }

    final double bearing = Geolocator.bearingBetween(
      currentLocation!.latitude,
      currentLocation!.longitude,
      place!.location!.latitude,
      place!.location!.longitude,
    );

    return compassProvider.when(
      data: (compassHeading) {
        // デバイスの向き（北が0度）から目的地の方位を引くことで、
        // デバイスの上方向から目的地までの相対的な角度を計算する
        final degreesAngle = bearing - compassHeading;

        final radianAngle = degreesAngle * (pi / 180);

        final radianCompassHeading = compassHeading * (pi / 180);

        return Transform.rotate(
          angle: radianAngle,
          child: Center(
            child: Icon(
              Icons.arrow_upward_rounded,
              size: 128,
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
