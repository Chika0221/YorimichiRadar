// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:yorimichi_radar/routes.dart';
import 'package:yorimichi_radar/state/search_places_provider.dart';
import 'package:yorimichi_radar/widgets/radar/radar_circle.dart';
import 'package:yorimichi_radar/widgets/search/search_start_button.dart';

class SearchStartPage extends HookConsumerWidget {
  const SearchStartPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      return null;
    }, const []);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RadarCircle(mode: RadarMode.window),
            SearchStartButton(
              onPressed: () {
                ref.read(searchPlacesProvider.notifier).resetSearch();
                Navigator.of(context).pushNamed(AppRoute.search.path);
              },
            ),
          ],
        ),
      ),
    );
  }
}
