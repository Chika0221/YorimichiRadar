// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:yorimichi_radar/state/focus_place_index_provider.dart';
import 'package:yorimichi_radar/state/search_places_provider.dart';
import 'package:yorimichi_radar/widgets/search/search_page_bottom_sheet.dart';
import 'package:yorimichi_radar/widgets/search/search_start_button.dart';

class SearchConditionPage extends HookConsumerWidget {
  const SearchConditionPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final focusPlaceIndex = ref.watch(focusPlaceIndexProvider);
    final searchPlaces = ref.watch(searchPlacesProvider);
    final place = searchPlaces.value![focusPlaceIndex ?? 0];

    final radarOptions = useState({'センサー': true, 'コンパス': false});

    return Scaffold(
      appBar: AppBar(
        title: const Text("探索の計画"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 目的地カード
              Text("目的地", style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 8),
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: SizedBox(
                  width: double.maxFinite,
                  height: 300,
                  child: FocusPlaceContainer(
                    index: focusPlaceIndex ?? 0,
                    place: place,
                    isShowGoButton: false,
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // 設定セクション
              Text("設定", style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 8),
              Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                  // side: BorderSide(color: Theme.of(context).dividerColor),
                ),
                child: Column(
                  children: [
                    Theme(
                      data: Theme.of(
                        context,
                      ).copyWith(dividerColor: Colors.transparent),
                      child: ExpansionTile(
                        leading: const Icon(Icons.radar),
                        title: const Text("つかうレーダー"),
                        children:
                            radarOptions.value.keys.map((key) {
                              return CheckboxListTile(
                                title: Text(key),
                                value: radarOptions.value[key],
                                onChanged: (newValue) {
                                  final checkedCount =
                                      radarOptions.value.values
                                          .where((v) => v)
                                          .length;
                                  if (newValue == false && checkedCount <= 1) {
                                    return;
                                  }

                                  final newOptions = Map<String, bool>.from(
                                    radarOptions.value,
                                  );
                                  newOptions[key] = newValue ?? false;
                                  radarOptions.value = newOptions;
                                },
                              );
                            }).toList(),
                      ),
                    ),
                    const Divider(height: 1, indent: 16, endIndent: 16),
                    ListTile(
                      leading: const Icon(Icons.timer_outlined),
                      title: const Text("かかる時間"),
                      trailing: Text(
                        "約 15 分", // TODO: 動的に計算
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 120), // ボタンのためのスペース
            ],
          ),
        ),
      ),
      // 画面下部にボタンを配置
      bottomSheet: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
        child: Hero(
          tag: "radar",
          child: SearchStartButton(
            onPressed: () {
              // TODO: 探索開始処理
            },
          ),
        ),
      ),
    );
  }
}
