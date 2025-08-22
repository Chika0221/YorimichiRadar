// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

// Project imports:
import 'package:yorimichi_radar/models/route.dart';
import 'package:yorimichi_radar/routes.dart';
import 'package:yorimichi_radar/state/current_location_provider.dart';
import 'package:yorimichi_radar/state/focus_place_index_provider.dart';
import 'package:yorimichi_radar/state/route_provider.dart';
import 'package:yorimichi_radar/state/search_condition_provider.dart';
import 'package:yorimichi_radar/state/search_places_provider.dart';
import 'package:yorimichi_radar/widgets/map/search_place_marker.dart';
import 'package:yorimichi_radar/widgets/radar/radar_circle.dart';
import 'package:yorimichi_radar/widgets/search/search_page_bottom_sheet.dart';
import 'package:yorimichi_radar/widgets/search/search_start_button.dart';

class SearchConditionPage extends HookConsumerWidget {
  const SearchConditionPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final focusPlaceIndex = ref.watch(focusPlaceIndexProvider);
    final searchPlaces = ref.watch(searchPlacesProvider);
    final place = searchPlaces.value![focusPlaceIndex ?? 0];

    final radarOptions = useState({
      RadarMode.sensor: true,
      RadarMode.compass: false,
    });
    final route = ref.watch(routeProvider);

    final currentLocation = ref.watch(currentLocationProvider);

    useEffect(() {
      radarOptions.addListener(() {
        ref.read(selectRadarProvider.notifier).state = radarOptions.value;
      });
    }, []);

    return currentLocation.when(
      data: (location) {
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
                                    title: Text(key.text),
                                    value: radarOptions.value[key],
                                    onChanged: (newValue) {
                                      final checkedCount =
                                          radarOptions.value.values
                                              .where((v) => v)
                                              .length;
                                      if (newValue == false &&
                                          checkedCount <= 1) {
                                        return;
                                      }

                                      final newOptions =
                                          Map<RadarMode, bool>.from(
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
                        route.when(
                          data: (routeData) {
                            if (routeData == null) {
                              return ListTile(
                                leading: const Icon(Icons.timer_outlined),
                                title: const Text("かかる時間"),
                                trailing:
                                    LoadingAnimationWidget.progressiveDots(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      size: 24,
                                    ),
                              );
                            }
                            return ListTile(
                              leading: const Icon(Icons.timer_outlined),
                              title: const Text("かかる時間"),
                              trailing: Text(
                                "約 ${(routeData!.duration / 20).round()} 分 ~",
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                            );
                          },
                          error: (error, stackTrace) {
                            return ListTile(
                              leading: const Icon(Icons.timer_outlined),
                              title: const Text("かかる時間"),
                              trailing: Text(
                                "エラー",
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                            );
                          },
                          loading: () {
                            return ListTile(
                              leading: const Icon(Icons.timer_outlined),
                              title: const Text("かかる時間"),
                              trailing: LoadingAnimationWidget.progressiveDots(
                                color: Theme.of(context).colorScheme.primary,
                                size: 24,
                              ),
                            );
                          },
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
                  ref
                      .read(currentLocationProvider.notifier)
                      .continuousGetLocation();

                  Navigator.of(context).pushNamed(AppRoute.radar.path);
                },
              ),
            ),
          ),
        );
      },
      error: (error, stackTrace) {
        return Center(child: Text("エラー $error"));
      },
      loading: () {
        return Center(
          child: Center(
            child: TopNotificationContainer(
              backgroundColor: Colors.transparent,
              foregroundColor: Theme.of(context).colorScheme.primary,
              title: "読込中",
              child: LoadingAnimationWidget.progressiveDots(
                color: Theme.of(context).colorScheme.primary,
                size: 24,
              ),
            ),
          ),
        );
      },
    );
  }
}
