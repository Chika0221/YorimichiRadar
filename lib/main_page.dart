// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:yorimichi_radar/pages/history_page.dart';
import 'package:yorimichi_radar/pages/search_page.dart';
import 'package:yorimichi_radar/pages/settings_page.dart';
import 'package:yorimichi_radar/routes.dart';
import 'package:yorimichi_radar/state/navi_bar_provider.dart';
import 'package:yorimichi_radar/widgets/custom_navi_bar.dart';

class MainPage extends HookConsumerWidget {
  const MainPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageIndex = ref.watch(naviBarIndexProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(pageIndex == 0 ? "よりみちレーダー" : "履歴"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoute.setting.path);
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: IndexedStack(
        index: pageIndex,
        children: const [SearchPage(), HistoryPage()],
      ),
      bottomNavigationBar: const CustomNaviBar(),
    );
  }
}
