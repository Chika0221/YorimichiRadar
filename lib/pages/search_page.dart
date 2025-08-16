// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:yorimichi_radar/widgets/radar/radar_circle.dart';

part '../widgets/search/search_page_bottom_sheet.dart';

class SearchPage extends HookConsumerWidget {
  const SearchPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Container(color: Colors.red),
      floatingActionButton: RadarCircle(
        mode: RadarMode.none,
        radarDiameter: 64,
        child: Center(
          child: IconButton(
            onPressed: () {
              
            },
            icon: Icon(Icons.keyboard_arrow_up_rounded),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      
      bottomSheet: SearchPageBottomSheet(),
    );
  }
}
