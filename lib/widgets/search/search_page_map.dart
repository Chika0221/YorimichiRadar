part of '../../pages/search_page.dart';

class SearchPageMap extends StatefulHookConsumerWidget {
  const SearchPageMap({super.key});

  // final DraggableScrollableController sheetController;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SearchPageMapState();
}

class _SearchPageMapState extends ConsumerState<SearchPageMap>
    with TickerProviderStateMixin {
  late AnimatedMapController animatedMapController;

  @override
  void initState() {
    super.initState();
    animatedMapController = AnimatedMapController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    animatedMapController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final asyncCurrentLocationProvider = ref.watch(currentLocationProvider);
    final searchPlaces = ref.watch(searchPlacesProvider);
    final focusPlaceIndex = ref.watch(focusPlaceIndexProvider);

    useEffect(() {
      if (focusPlaceIndex != null) {
        animatedMapController.animateTo(
          dest: searchPlaces.value?[focusPlaceIndex].location,
          offset: Offset(0, -200),
          rotation: 0,
        );
      }
    }, [focusPlaceIndex]);

    return asyncCurrentLocationProvider.when(
      data: (currentLocation) {
        if (currentLocation != null) {
          return FlutterMap(
            mapController: animatedMapController.mapController,
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
              SearchPlaceMarkers(),
              Scalebar(
                alignment: Alignment.topRight,
                padding: EdgeInsets.only(top: 64, right: 8),
                length: ScalebarLength.m,
              ),
              Positioned(
                right: 0,
                top: 84,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Theme.of(context).colorScheme.surfaceContainer,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton.filledTonal(
                          onPressed:
                              () => animatedMapController.animatedZoomIn(),

                          icon: Icon(Icons.add_rounded),
                        ),
                        IconButton.filledTonal(
                          onPressed:
                              () => animatedMapController.animatedZoomOut(),
                          icon: Icon(Icons.remove_rounded),
                        ),
                        IconButton.filled(
                          onPressed:
                              () => animatedMapController.animateTo(
                                dest: currentLocation,
                              ),
                          icon: Transform.rotate(
                            angle: 1,
                            child: Icon(Icons.navigation_rounded),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        } else {
          return Center(child: Text("位置情報が使用できません"));
        }
      },
      loading: () {
        return Center(
          child: LoadingAnimationWidget.progressiveDots(
            color: Theme.of(context).colorScheme.primary,
            size: 48,
          ),
        );
      },
      error: (error, stackTrace) {
        return Center(child: Text("位置情報が使用できません"));
      },
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
