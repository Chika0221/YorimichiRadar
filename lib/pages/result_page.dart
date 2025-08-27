// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:confetti/confetti.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:latlong2/latlong.dart';

// Project imports:
import 'package:yorimichi_radar/state/focus_place_index_provider.dart';
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
    useEffect(() {
      controller.play();
      return controller.dispose;
    }, [controller]);

    final places = ref.watch(searchPlacesProvider).value;
    final index = ref.watch(focusPlaceIndexProvider);
    final placeName =
        (places != null && index != null && index < places.length)
            ? places[index].displayName.text
            : null;
    final takenTime = ref.watch(takenTimeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("目的地に到着！"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ResultMap(startPoint: startPoint),
                  const Icon(
                    Icons.flag_circle_rounded,
                    size: 120,
                    color: Colors.amber,
                  ),
                  const SizedBox(height: 24),
                  if (placeName != null) ...[
                    const SizedBox(height: 8),
                    Text(
                      placeName,
                      style: Theme.of(context).textTheme.headlineLarge,
                      textAlign: TextAlign.center,
                    ),
                  ],
                  const SizedBox(height: 24),
                  Text(
                    "かかった時間: ${takenTime.round()} 秒",
                    style: Theme.of(context).textTheme.bodyLarge,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 48),
                  FilledButton.tonalIcon(
                    icon: const Icon(Icons.home_outlined),
                    label: const Text('新しい寄り道を探す'),
                    onPressed: () {
                      ref.invalidate(searchPlacesProvider);
                      ref.invalidate(focusPlaceIndexProvider);
                      Navigator.of(context).popUntil((route) => route.isFirst);
                    },
                  ),
                ],
              ),
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
