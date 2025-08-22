// Dart imports:
import 'dart:async';

// Package imports:
import 'package:geolocator/geolocator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:latlong2/latlong.dart';

// final currentLocationProvider = Provider<LatLng>((ref) {
//   return LatLng(35.02238185907218, 135.96166673359087);
// });

final currentLocationProvider =
    AsyncNotifierProvider<CurrentLocationNotifier, LatLng?>(
      CurrentLocationNotifier.new,
    );

class CurrentLocationNotifier extends AsyncNotifier<LatLng?> {
  StreamSubscription<Position>? _positionStreamSubscription;

  @override
  FutureOr<LatLng?> build() {
    ref.onDispose(() {
      _positionStreamSubscription?.cancel();
    });
    return initGeolocator();
  }

  Future<LatLng?> initGeolocator() async {
    final bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error("位置情報サービスが無効");
    }

    LocationPermission locationPermission = await Geolocator.checkPermission();
    if (locationPermission == LocationPermission.denied) {
      locationPermission = await Geolocator.requestPermission();
      if (locationPermission == LocationPermission.denied) {
        return Future.error("位置情報が拒否されました");
      }
    }

    if (locationPermission == LocationPermission.deniedForever) {
      return Future.error("永久拒否");
    }

    final position = await Geolocator.getCurrentPosition();
    return LatLng(position.latitude, position.longitude);
  }

  void onceGetLocation() async {
    state = AsyncValue.loading();
    final position = await Geolocator.getCurrentPosition();
    state = AsyncValue.data(LatLng(position.latitude, position.longitude));
  }

  void continuousGetLocation() {
    state = AsyncValue.loading();

    const LocationSettings locationSettings = LocationSettings(
      accuracy: LocationAccuracy.high,
      distanceFilter: 100,
    );

    _positionStreamSubscription?.cancel();
    _positionStreamSubscription = Geolocator.getPositionStream(
      locationSettings: locationSettings,
    ).listen(
      (value) {
        final location = LatLng(value.latitude, value.longitude);
        state = AsyncValue.data(location);
      },
      onError: (error) {
        state = AsyncValue.error(error, StackTrace.current);
      },
    );
  }
}
