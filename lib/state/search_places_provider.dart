// Dart imports:
import 'dart:convert';
import 'dart:math';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:latlong2/latlong.dart';

// Project imports:
import 'package:yorimichi_radar/env/env.dart';
import 'package:yorimichi_radar/models/place.dart';
import 'package:yorimichi_radar/state/current_location_provider.dart';
import 'package:yorimichi_radar/state/focus_place_index_provider.dart';
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

  void clear() {
    state = AsyncValue.data(List<Place>.empty());
  }

  /// 検索に関連する状態をすべてリセットします。
  void resetSearch() {
    // 検索結果をクリア
    state = AsyncValue.data(List<Place>.empty());
    // 検索キーワードをクリア
    ref.read(keywordProvider.notifier).state = "";
    // フォーカスされている場所のインデックスをクリア
    ref.read(focusPlaceIndexProvider.notifier).state = null;
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
          'places.id,places.displayName,places.primaryTypeDisplayName,places.shortFormattedAddress,places.location,places.rating,places.regularOpeningHours,places.googleMapsUri',
    };

    final body = jsonEncode(({
      "textQuery": text,
      "locationRestriction": {
        "rectangle": {
          "low": {
            "latitude": center.latitude - (radius / 111.0),
            "longitude":
                center.longitude -
                (radius / (111.0 * cos(center.latitude * pi / 180.0))),
          },
          "high": {
            "latitude": center.latitude + (radius / 111.0),
            "longitude":
                center.longitude +
                (radius / (111.0 * cos(center.latitude * pi / 180.0))),
          },
        },
      },
      "languageCode": "ja",
      "regionCode": "JP",
    }));

    final response = await http.post(_url, headers: header, body: body);

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      final List<dynamic> placesJson = data['places'] ?? [];

      return placesJson.map((json) {
        final place = Place.fromJson(json);
        return place;
      }).toList();
    } else {
      throw Exception(response.body);
    }
  }
}
