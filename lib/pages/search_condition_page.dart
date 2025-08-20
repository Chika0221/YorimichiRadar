// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:yorimichi_radar/state/focus_place_index_provider.dart';
import 'package:yorimichi_radar/state/search_places_provider.dart';
import 'package:yorimichi_radar/widgets/search/search_page_bottom_sheet.dart';

class SearchConditionPage extends HookConsumerWidget {
  const SearchConditionPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final focusPlaceIndex = ref.watch(focusPlaceIndexProvider);
    final searchPlaces = ref.watch(searchPlacesProvider);

    return Scaffold(
      body: Center(
        child: SizedBox(
          width: double.maxFinite,
          height: 600,
          child: FocusPlaceContainer(
            index: focusPlaceIndex!,
            place: searchPlaces.value![focusPlaceIndex],
            isShowGoButton: false,
          ),
        ),
      ),
    );
  }
}
