// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:http/http.dart' as http;
import 'package:latlong2/latlong.dart';

class SearchOsrm {
  Future<List<LatLng>> fetchRoute(List<LatLng> wayPoints) async {
    if (wayPoints.isEmpty) {
      return [];
    }

    final String points = wayPoints
        .map((point) => "${point.longitude},${point.latitude}")
        .toList()
        .join(";");

    final String url =
        "https://router.project-osrm.org/route/v1/driving/$points?geometries=geojson";

    final response = await http.get(Uri.parse(url));

    final responseBody = response.body;

    if (response.statusCode == 200) {
      final data = json.decode(responseBody);

      final List<dynamic> coordinates =
          data['routes'][0]['geometry']['coordinates'];

      final routePoints =
          coordinates.map((coord) => LatLng(coord[1], coord[0])).toList();

      return routePoints;
    } else {
      print("コード:${response.statusCode}");
      print("レスポンス:$responseBody");
      throw Exception(response.statusCode);
    }
  }
}
