// Dart imports:
import 'dart:async';
import 'dart:convert';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:latlong2/latlong.dart';

// Project imports:
import 'package:yorimichi_radar/models/route.dart';
import 'package:yorimichi_radar/state/current_location_provider.dart';
import 'package:yorimichi_radar/state/focus_place_index_provider.dart';
import 'package:yorimichi_radar/state/search_places_provider.dart';

final routeProvider = AsyncNotifierProvider<RouteNotifier, RouteData?>(
  RouteNotifier.new,
);

class RouteNotifier extends AsyncNotifier<RouteData?> {
  @override
  FutureOr<RouteData?> build() {
    final focusIndex = ref.watch(focusPlaceIndexProvider);
    final searchPlaces = ref.watch(searchPlacesProvider);
    final currentLocation = ref.watch(currentLocationProvider);

    if (currentLocation.hasValue && focusIndex != null) {
      searchRoute([
        currentLocation.value!,
        (searchPlaces.value![focusIndex].location!),
      ]);
    }
    return null;
  }

  void searchRoute(List<LatLng> wayPoints) async {
    state = AsyncValue.loading();

    try {
      state = AsyncValue.data(await SearchOsrm().fetchRoute(wayPoints));
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }
}

class SearchOsrm {
  Future<RouteData?> fetchRoute(List<LatLng> wayPoints) async {
    if (wayPoints.isEmpty) {
      return null;
    }

    final String points = wayPoints
        .map((point) => "${point.longitude},${point.latitude}")
        .toList()
        .join(";");

    final String url =
        "http://router.project-osrm.org/route/v1/foot/$points?geometries=geojson";

    final response = await http.get(Uri.parse(url));

    final responseBody = response.body;

    if (response.statusCode == 200) {
      final data = json.decode(responseBody);

      final Map<String, dynamic> route = data['routes'][0];

      final routeData = RouteData.fromJson(route);

      return routeData;
    } else {
      throw Exception(responseBody);
    }
  }
}
