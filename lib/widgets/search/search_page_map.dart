part of '../../pages/search_page.dart';

class SearchPageMap extends HookConsumerWidget {
  const SearchPageMap({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final LatLng currentLocation = LatLng(
      35.02238185907218,
      135.96166673359087,
    );

    return FlutterMap(
      options: MapOptions(
        initialCenter: currentLocation,
        initialZoom: 14,
        maxZoom: 16,
        minZoom: 8,
      ),
      children: [
        TileLayer(
          urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
          userAgentPackageName: 'com.example.yorimichi_radar',
        ),
        CircleLayer(
          circles: [
            SearchCircleMarker(
              point: currentLocation,
              radius: 1000,
              borderColor: Theme.of(context).colorScheme.primary,
            ),
          ],
        ),
        MarkerLayer(
          markers: [
            Marker(
              point: currentLocation,
              child: Currentlocationcontainer(
                diameter: 32,
                backgroundColor: Theme.of(context).colorScheme.primary,
                lineColor: Theme.of(context).colorScheme.surface,
              ),
            ),
          ],
        ),
        Scalebar(
          alignment: Alignment.topRight,
          padding: EdgeInsets.only(top: 64, right: 8),
          length: ScalebarLength.m,
        ),
      ],
    );
  }
}

class SearchCircleMarker extends CircleMarker {
  const SearchCircleMarker({
    required super.point,
    required super.radius,
    required super.borderColor,
    super.useRadiusInMeter = true,
    super.color = Colors.transparent,
    super.borderStrokeWidth = 4,
  });
}
