// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_map/flutter_map.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:latlong2/latlong.dart';

// Project imports:
import 'package:yorimichi_radar/widgets/radar/radar_circle.dart';

part '../widgets/search/search_page_bottom_sheet.dart';
part '../widgets/search/search_page_search_button.dart';
part '../widgets/search/search_page_map.dart';

class SearchPage extends HookConsumerWidget {
  const SearchPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SearchPageMap(),
      floatingActionButton: SearchPageSearchButton(onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomSheet: SearchPageBottomSheet(),
    );
  }
}
