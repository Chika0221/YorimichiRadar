// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_animations/flutter_map_animations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

// Project imports:
import 'package:yorimichi_radar/state/current_location_provider.dart';
import 'package:yorimichi_radar/state/focus_place_index_provider.dart';
import 'package:yorimichi_radar/state/search_condition_provider.dart';
import 'package:yorimichi_radar/state/search_places_provider.dart';
import 'package:yorimichi_radar/widgets/map/search_place_marker.dart';
import 'package:yorimichi_radar/widgets/radar/radar_circle.dart';
import 'package:yorimichi_radar/widgets/search/currentLocationContainer.dart';
import 'package:yorimichi_radar/widgets/search/search_page_bottom_sheet.dart';

part '../widgets/search/search_page_map.dart';
part '../widgets/search/search_page_search_button.dart';

class SearchPage extends HookConsumerWidget {
  const SearchPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sheetController = useMemoized(() => DraggableScrollableController());

    return Scaffold(
      appBar: AppBar(
        leading: IconButton.filled(
          style: IconButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.surfaceContainer,
            foregroundColor: Theme.of(context).colorScheme.primary,
          ),
          onPressed: () {
            // Navigator.of(context).pushReplacementNamed(AppRoute.home.path);
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_rounded),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: SearchPageMap(),
      extendBodyBehindAppBar: true,
      extendBody: true,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.noAnimation,
      floatingActionButton: SearchPageSearchButton(
        openOnPressed: () async {
          await ref.read(searchPlacesProvider.notifier).search();
        },
        closeOnPressed: () {
          if (sheetController.isAttached) {
            sheetController.animateTo(
              0.3,
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeInOut,
            );
          }
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomSheet: SearchPageBottomSheet(sheetController: sheetController),
    );
  }
}
