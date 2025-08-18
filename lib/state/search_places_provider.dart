// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:latlong2/latlong.dart';

// Project imports:
import 'package:yorimichi_radar/env/env.dart';
import 'package:yorimichi_radar/models/place.dart';
import 'package:yorimichi_radar/state/current_location_provider.dart';
import 'package:yorimichi_radar/state/search_condition_provider.dart';

final searchPlacesProvider =
    NotifierProvider<SearchPlacesNotifier, AsyncValue<List<Place>>>(
      SearchPlacesNotifier.new,
    );

class SearchPlacesNotifier extends Notifier<AsyncValue<List<Place>>> {
  @override
  build() {
    return AsyncValue.data(List<Place>.empty());
  }

  Future<void> search() async {
    final LatLng center = ref.read(currentLocationProvider);
    final double radius = ref.read(radiusProvider);
    final String text = ref.read(keywordProvider);

    final apiService = ref.read(placesApiServiceProvider);

    state = const AsyncValue.loading();

    state = await AsyncValue.guard(() async {
      return apiService.searchPlace(center, radius, text);
    });
  }
}

final placesApiServiceProvider = Provider<PlacesApiService>((ref) {
  return PlacesApiService();
});

class PlacesApiService {
  final String _apiKey = Env.GMPKEY;

  final _url = Uri.parse("https://places.googleapis.com/v1/places:searchText");

  Future<List<Place>> searchPlace(
    LatLng center,
    double radius,
    String text,
  ) async {
    final header = {
      'Content-Type': 'application/json',
      'X-Goog-Api-Key': _apiKey,
      'X-Goog-FieldMask':
          // 'places.id.displayName.shortFormattedAddress.location.rating.weekdayDescriptions.googleMapsUri',
          'places',
    };

    final body = jsonEncode(({
      "textQuery": text,
      "locationBias": {
        "circle": {
          "center": {
            "latitude": "${center.latitude}",
            "longitude": "${center.longitude}",
          },
          "radius": (radius * 1000),
        },
      },
      "languageCode": "ja",
      "regionCode": "JP",
    }));

    final response = await http.post(_url, headers: header, body: body);

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      final List<dynamic> placesJson = data['places'];
      return placesJson.map((json) => Place.fromJson(json)).toList();
    } else {
      throw Exception("プレイス取得失敗 ${response.body}");
    }
  }
}
