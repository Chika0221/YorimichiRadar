// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:yorimichi_radar/pages/main.dart';
import 'package:yorimichi_radar/routes.dart';
import 'package:yorimichi_radar/widgets/radar/radar_circle.dart';
import 'package:yorimichi_radar/widgets/search/search_setting_container.dart';

part '../widgets/search/search_start_button.dart';

class SearchStartPage extends HookConsumerWidget {
  const SearchStartPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [RadarCircle(mode: RadarMode.window), SearchStartButton()],
        ),
      ),
    );
  }
}
