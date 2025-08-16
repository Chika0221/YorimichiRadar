part of '../../pages/search_page.dart';

class SearchPageMap extends HookConsumerWidget {
  const SearchPageMap({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FlutterMap(
      options: MapOptions(
        initialCenter: LatLng(34.98513206363541, 136.0144106884364),
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
            CircleMarker(
              point: LatLng(34.98513206363541, 136.0144106884364), //中心の座標
              radius: 1000, //m単位で書く
              useRadiusInMeter: true,
              color: Colors.transparent,
              borderStrokeWidth: 4,
              borderColor: Theme.of(context).colorScheme.primary,
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
