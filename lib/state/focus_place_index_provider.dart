// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:yorimichi_radar/state/search_places_provider.dart';

final focusPlaceIndexProvider = StateProvider<int?>((ref) {
  final searchPlaces = ref.watch(searchPlacesProvider);
  if (searchPlaces.hasValue && searchPlaces.value!.isEmpty) {
    return null;
  }

  return null;
});
