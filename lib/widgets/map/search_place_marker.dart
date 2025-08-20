// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_map/flutter_map.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

// Project imports:
import 'package:yorimichi_radar/state/focus_place_index_provider.dart';
import 'package:yorimichi_radar/state/search_places_provider.dart';

class SearchPlaceMarkers extends HookConsumerWidget {
  const SearchPlaceMarkers({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchPlaces = ref.watch(searchPlacesProvider);
    final focusPlaceIndex = ref.watch(focusPlaceIndexProvider);

    return searchPlaces.when(
      data: (data) {
        return MarkerLayer(
          markers:
              data
                  .asMap()
                  .entries
                  .where((entry) => entry.value.location != null)
                  .map(
                    (entry) => Marker(
                      point: entry.value.location!,
                      child:
                          (entry.key == focusPlaceIndex)
                              ? IconButton.filled(
                                padding: EdgeInsets.zero,
                                onPressed: () {},
                                icon: const Icon(Icons.location_on),
                              )
                              : IconButton.filledTonal(
                                padding: EdgeInsets.zero,
                                onPressed: () {
                                  ref
                                      .read(focusPlaceIndexProvider.notifier)
                                      .state = entry.key;
                                },
                                icon: const Icon(Icons.location_on_outlined),
                              ),
                    ),
                  )
                  .toList(),
        );
      },
      loading: () {
        return TopNotificationContainer(
          backgroundColor: Theme.of(context).colorScheme.surfaceContainerHigh,
          foregroundColor: Theme.of(context).colorScheme.primary,
          title: "検索中",
          child: LoadingAnimationWidget.progressiveDots(
            color: Theme.of(context).colorScheme.primary,
            size: 24,
          ),
        );
      },
      error: (error, stackTrace) {
        return TopNotificationContainer(
          backgroundColor: Theme.of(context).colorScheme.errorContainer,
          foregroundColor: Theme.of(context).colorScheme.error,
          title: "検索エラー",
          child: Text(
            "検索条件に不備があります",
            style: TextStyle(color: Theme.of(context).colorScheme.error),
          ),
        );
      },
    );
  }
}

class TopNotificationContainer extends HookConsumerWidget {
  const TopNotificationContainer({
    super.key,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.title,
    required this.child,
  });

  final String title;
  final Widget child;
  final Color backgroundColor;
  final Color foregroundColor;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.only(top: 64),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: ShapeDecoration(
          shape: StadiumBorder(),
          color: backgroundColor,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: foregroundColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 8),
            child,
          ],
        ),
      ),
    );
  }
}
