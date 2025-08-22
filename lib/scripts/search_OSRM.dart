// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:http/http.dart' as http;
import 'package:latlong2/latlong.dart';

// Project imports:
import 'package:yorimichi_radar/models/route.dart';

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
