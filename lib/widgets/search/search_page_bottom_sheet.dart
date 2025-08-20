// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// Package imports:
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

// Project imports:
import 'package:yorimichi_radar/models/place.dart';
import 'package:yorimichi_radar/state/focus_place_index_provider.dart';
import 'package:yorimichi_radar/state/search_condition_provider.dart';
import 'package:yorimichi_radar/state/search_places_provider.dart';

part '../map/focus_place_container.dart';

class SearchPageBottomSheet extends HookConsumerWidget {
  const SearchPageBottomSheet({super.key, required this.sheetController});

  final DraggableScrollableController sheetController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const maxChildSize = 0.85;
    const minChildSize = 0.1;

    final keywordController = useTextEditingController(
      text: ref.read(keywordProvider),
    );

    final distance = useState(ref.read(radiusProvider));
    final distanceTextController = useTextEditingController(
      text: distance.value.round().toString(),
    );

    final searchPlaces = ref.watch(searchPlacesProvider);
    final focusPlaceIndex = ref.watch(focusPlaceIndexProvider);

    final carouselController = useMemoized(() => CarouselSliderController());

    useEffect(() {
      final newText = distance.value.round().toString();
      if (distanceTextController.text != newText) {
        distanceTextController.text = newText;
      }
      return null;
    }, [distance.value]);

    useEffect(() {
      void listener() {
        ref.read(keywordProvider.notifier).state = keywordController.text;
      }

      keywordController.addListener(listener);
      return () {
        keywordController.removeListener(listener);
      };
    }, [keywordController]);

    useEffect(() {
      if (focusPlaceIndex != null) {
        carouselController.animateToPage(
          focusPlaceIndex,
          duration: Duration(seconds: 1),
          curve: Curves.decelerate,
        );
        if (sheetController.size < 0.6) {
          sheetController.animateTo(
            0.6,
            duration: Duration(milliseconds: 200),
            curve: Curves.easeInOut,
          );
        }
      }
    }, [focusPlaceIndex]);

    return DraggableScrollableSheet(
      controller: sheetController,
      initialChildSize: minChildSize,
      minChildSize: minChildSize,
      maxChildSize: maxChildSize,
      expand: false,
      snap: true,
      snapSizes: [0.3, 0.6],
      builder: (context, scrollController) {
        return ListView(
          controller: scrollController,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.tune_rounded),
                  ),
                  IconButton.filledTonal(
                    icon: const Icon(Icons.fullscreen_rounded),
                    onPressed: () {
                      final newSize =
                          sheetController.size == maxChildSize
                              ? minChildSize
                              : maxChildSize;
                      sheetController.animateTo(
                        newSize,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeOut,
                      );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: TextFormField(
                controller: keywordController,
                decoration: InputDecoration(
                  hintText: 'キーワードで検索 (例: カフェ)',
                  prefixIcon: const Icon(Icons.search),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'キーワードを入力してください';
                  }
                  return null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.straighten, color: Colors.grey),
                      const SizedBox(width: 8),
                      Text(
                        '現在地からの距離',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        child: Slider(
                          value: distance.value,
                          min: 1.0,
                          max: 10.0,
                          divisions: (10.0 - 1.0) ~/ 1.0,
                          label: '${distance.value.toInt()}km',
                          onChanged: (double value) {
                            distance.value = value;
                          },
                          onChangeEnd: (value) {
                            ref.read(radiusProvider.notifier).state = value;
                          },
                        ),
                      ),
                      const SizedBox(width: 8),
                      SizedBox(
                        width: 80,
                        child: TextField(
                          controller: distanceTextController,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            suffixText: 'km',
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(30),
                              ),
                              borderSide: BorderSide.none,
                            ),
                            contentPadding: EdgeInsets.symmetric(horizontal: 8),
                          ),
                          onChanged: (value) {
                            final newDistance = double.tryParse(value);
                            if (newDistance != null) {
                              distance.value = newDistance.clamp(1.0, 10.0);
                            }
                          },
                          onEditingComplete: () {
                            final currentVal =
                                double.tryParse(distanceTextController.text) ??
                                1.0;
                            distance.value = currentVal.clamp(1.0, 10);
                            FocusScope.of(context).unfocus();
                            ref.read(radiusProvider.notifier).state =
                                distance.value;
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            searchPlaces.when(
              data: (data) {
                return CarouselSlider.builder(
                  carouselController: carouselController,
                  itemCount: data.length,
                  options: CarouselOptions(
                    height: MediaQuery.of(context).size.height * 0.5,
                    initialPage: 0,
                    viewportFraction: 0.8,
                    enableInfiniteScroll: false,
                    onPageChanged: (index, reason) {
                      if (reason == CarouselPageChangedReason.manual) {
                        ref.read(focusPlaceIndexProvider.notifier).state =
                            index;
                      }
                    },
                  ),
                  itemBuilder: (
                    BuildContext context,
                    int index,
                    int realIndex,
                  ) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: FocusPlaceContainer(
                        index: index,
                        place: data[index],
                      ),
                    );
                  },
                );
              },
              error: (error, stackTrace) {
                return Text("$error");
              },
              loading: () {
                return CircularProgressIndicator();
              },
            ),
          ],
        );
      },
    );
  }
}
