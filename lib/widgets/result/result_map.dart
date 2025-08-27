// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_map/flutter_map.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:latlong2/latlong.dart';

// Project imports:
import 'package:yorimichi_radar/state/focus_place_index_provider.dart';
import 'package:yorimichi_radar/state/search_places_provider.dart';

class ResultMap extends HookConsumerWidget {
  const ResultMap({super.key, required this.startPoint});

  final LatLng startPoint;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final places = ref.watch(searchPlacesProvider).value;
    final index = ref.watch(focusPlaceIndexProvider);

    final destination =
        (places != null && index != null && index < places.length)
            ? places[index]
            : null;

    if (destination == null || destination.location == null) {
      return Container(
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.grey[300],
        ),
        child: const Center(child: CircularProgressIndicator()),
      );
    }

    final endPoint = LatLng(
      destination.location!.latitude,
      destination.location!.longitude,
    );

    final bounds = LatLngBounds.fromPoints([startPoint, endPoint]);

    return SizedBox(
      height: 200,
      width: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: FlutterMap(
          options: MapOptions(
            initialCameraFit: CameraFit.bounds(
              bounds: bounds,
              padding: const EdgeInsets.all(40.0),
            ),
            interactionOptions: const InteractionOptions(
              flags: InteractiveFlag.none,
            ),
          ),
          children: [
            TileLayer(
              urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
              userAgentPackageName: 'com.example.yorimichi_radar',
            ),
            PolylineLayer(
              polylines: [
                Polyline(
                  points: [startPoint, endPoint],
                  strokeWidth: 5,
                  gradientColors: [
                    Theme.of(context).primaryColor.withAlpha(255 ~/ 3),
                    Theme.of(context).primaryColor,
                    Colors.amber,
                    Colors.amber.withAlpha(255 ~/ 3),
                  ],
                ),
              ],
            ),
            MarkerLayer(
              markers: [
                Marker(
                  point: startPoint,
                  child: Icon(
                    Icons.my_location,
                    color: Theme.of(context).primaryColor,
                    size: 30,
                  ),
                ),
                Marker(
                  point: endPoint,
                  child: Icon(
                    Icons.location_on_rounded,
                    color: Colors.amber,
                    size: 40,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
