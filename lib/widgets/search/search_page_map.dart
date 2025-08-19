part of '../../pages/search_page.dart';

class SearchPageMap extends HookConsumerWidget {
  const SearchPageMap({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final LatLng currentLocation = ref.read(currentLocationProvider);

    final AsyncValue<List<Place>> searchPlaces = ref.watch(
      searchPlacesProvider,
    );

    return FlutterMap(
      options: MapOptions(
        initialCenter: currentLocation,
        initialZoom: 14,
        maxZoom: 20,
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
              radius: ref.watch(radiusProvider) * 1000,
              borderColor: Theme.of(context).colorScheme.primary,
            ),
          ],
        ),
        MarkerLayer(
          markers: [
            Marker(
              point: currentLocation,
              child: CurrentLocationContainer(
                diameter: 32,
                backgroundColor: Theme.of(context).colorScheme.primary,
                lineColor: Theme.of(context).colorScheme.surface,
              ),
            ),
          ],
        ),

        searchPlaces.when(
          data: (data) {
            return MarkerLayer(
              markers: List.generate(data.length, (index) {
                return Marker(
                  point: data[index].location!!,
                  child: IconButton.filledTonal(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      ref.read(focusPlaceIndexProvider.notifier).state = index;
                    },
                    icon: Icon(Icons.star),
                  ),
                );
              }),

              // data.map((place) {
              //   return Marker(
              //     point: place.location!!,
              //     child: IconButton(icon: Icon(Icons.star), onPressed: () {
              //       ref.
              //      },),
              //   );
              // }).toList(),
            );
          },
          loading: () {
            return Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(top: 64),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: ShapeDecoration(
                  shape: StadiumBorder(),
                  color: Theme.of(context).colorScheme.surfaceContainerHigh,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "検索中",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 8),
                    LoadingAnimationWidget.progressiveDots(
                      color: Theme.of(context).colorScheme.primary,
                      size: 24,
                    ),
                  ],
                ),
              ),
            );
          },
          error: (error, stackTrace) {
            return Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(top: 64),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: ShapeDecoration(
                  shape: StadiumBorder(),
                  color: Theme.of(context).colorScheme.errorContainer,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "検索エラー",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.error,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      "検索条件に不備があります",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.error,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),

        Scalebar(
          alignment: Alignment.topRight,
          padding: EdgeInsets.only(top: 64, right: 8),
          length: ScalebarLength.m,
        ),
        Align(alignment: Alignment(1, 0.8), child: Icon(Icons.abc)),
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
