// Dart imports:
import 'dart:io';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:confetti/confetti.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:latlong2/latlong.dart';
import 'package:path_provider/path_provider.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';
import 'package:uuid/uuid.dart';

// Project imports:
import 'package:yorimichi_radar/models/record.dart' as rc;
import 'package:yorimichi_radar/state/focus_place_index_provider.dart';
import 'package:yorimichi_radar/state/route_provider.dart';
import 'package:yorimichi_radar/state/search_places_provider.dart';
import 'package:yorimichi_radar/state/taken_time_provider.dart';
import 'package:yorimichi_radar/widgets/result/result_map.dart';

class ResultPage extends HookConsumerWidget {
  const ResultPage({super.key, required this.startPoint});

  final LatLng startPoint;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useMemoized(
      () => ConfettiController(duration: const Duration(seconds: 5)),
    );

    final screenshotController = useMemoized(() => ScreenshotController());

    useEffect(() {
      controller.play();
      return controller.dispose;
    }, [controller]);

    final places = ref.watch(searchPlacesProvider).value;
    final index = ref.watch(focusPlaceIndexProvider);
    final place =
        (places != null && index != null && index < places.length)
            ? places[index]
            : null;
    final takenTime = ref.watch(takenTimeProvider);
    final routeAsync = ref.watch(routeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("おつかれさまでした！"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Center(
            child: routeAsync.when(
              data: (routeData) {
                if (routeData == null || place == null) {
                  return const Center(child: Text("結果の表示に失敗しました。"));
                }
                final record = rc.Record(
                  id: const Uuid().v4(),
                  createAt: DateTime.now(),
                  takenTime: takenTime,
                  route: routeData,
                  startLocation: startPoint,
                  endPlace: place,
                );

                print(record);

                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Screenshot(
                      controller: screenshotController,
                      child: Container(
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.surface,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          children: [
                            const Icon(
                              Icons.flag_circle_rounded,
                              size: 120,
                              color: Colors.amber,
                            ),
                            const SizedBox(height: 24),
                            Text(
                              place.displayName.text,
                              style: Theme.of(context).textTheme.headlineLarge,
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 24),
                            Text(
                              "かかった時間: ${takenTime.round()} 秒",
                              style: Theme.of(context).textTheme.bodyLarge,
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 16),
                            ResultMap(startPoint: startPoint),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 48),
                    OutlinedButton.icon(
                      onPressed: () async {
                        final image = await screenshotController.capture();

                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text("この画像を共有"),
                              content:
                                  (image != null)
                                      ? Image.memory(image)
                                      : const Center(
                                        child: Text("キャプチャに失敗しました"),
                                      ),
                              actions: [
                                FilledButton(
                                  onPressed: () async {
                                    if (image == null) return;
                                    final directory =
                                        await getTemporaryDirectory();
                                    final imagePath =
                                        "${directory.path}/shared_image.jpg";
                                    final imageFile = File(imagePath);
                                    await imageFile.writeAsBytes(
                                      image.buffer.asUint8List(),
                                    );

                                    final xFile = XFile(
                                      imagePath,
                                      mimeType: 'image/jpeg',
                                    );

                                    final params = ShareParams(
                                      text:
                                          "${place.displayName.text} まで ${takenTime.round()} 秒で到着！ #YorimichiRadar",
                                      files: [xFile],
                                    );

                                    final result = await SharePlus.instance
                                        .share(params);

                                    if (result.status ==
                                        ShareResultStatus.success) {
                                      print(
                                        'Thank you for sharing the picture!',
                                      );
                                    }
                                  },
                                  child: const Text("共有"),
                                ),
                                TextButton(
                                  onPressed: () => Navigator.of(context).pop(),
                                  child: const Text("キャンセル"),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      icon: const Icon(Icons.share_rounded),
                      label: const Text("共有する"),
                    ),
                    FilledButton.tonalIcon(
                      icon: const Icon(Icons.home_outlined),
                      label: const Text('新しい寄り道を探す'),
                      onPressed: () {
                        ref.invalidate(searchPlacesProvider);
                        ref.invalidate(focusPlaceIndexProvider);
                        Navigator.of(
                          context,
                        ).popUntil((route) => route.isFirst);
                      },
                    ),
                  ],
                );
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error:
                  (error, stackTrace) =>
                      Center(child: Text("経路の取得に失敗しました: $error")),
            ),
          ),
          ConfettiWidget(
            confettiController: controller,
            blastDirectionality: BlastDirectionality.explosive,
            shouldLoop: false,
            colors: const [
              Colors.green,
              Colors.blue,
              Colors.pink,
              Colors.orange,
              Colors.purple,
              Colors.amber,
              Colors.red,
              Colors.lightGreen,
              Colors.lightBlue,
              Colors.deepOrange,
              Colors.deepPurple,
              Colors.teal,
              Colors.cyan,
              Colors.brown,
              Colors.grey,
              Colors.indigo,
            ],
          ),
        ],
      ),
    );
  }
}
