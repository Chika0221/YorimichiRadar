// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:latlong2/latlong.dart';

// Project imports:
import 'package:yorimichi_radar/widgets/search/currentLocationContainer.dart';

final currentLocationProvider = Provider<LatLng>((ref) {
  return LatLng(35.02238185907218, 135.96166673359087);
});
