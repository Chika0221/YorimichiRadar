// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:latlong2/latlong.dart';

final currentLocationProvider = Provider<LatLng>((ref) {
  return LatLng(35.02238185907218, 135.96166673359087);
});
