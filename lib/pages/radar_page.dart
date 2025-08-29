// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:latlong2/latlong.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

// Project imports:
import 'package:yorimichi_radar/routes.dart';
import 'package:yorimichi_radar/state/current_location_provider.dart';
import 'package:yorimichi_radar/state/focus_place_index_provider.dart';
import 'package:yorimichi_radar/state/search_condition_provider.dart';
import 'package:yorimichi_radar/state/search_places_provider.dart';
import 'package:yorimichi_radar/state/sensor_animation_provider.dart';
import 'package:yorimichi_radar/state/taken_time_provider.dart';
import 'package:yorimichi_radar/widgets/radar/radar_circle.dart';
import 'package:yorimichi_radar/widgets/radar/select_mode_button.dart';

Future<void> runWaveAnimation(WidgetRef ref, int count) async {
  for (int i = 0; i < count; i++) {
    ref
        .read(sensorAnimationProvider.notifier)
        .startWave(const SensorSetting(Duration(milliseconds: 100)));
    await Future.delayed(const Duration(milliseconds: 100));
  }
}

class RadarPage extends HookConsumerWidget {
  const RadarPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    late LatLng startPoint;

    useEffect(() {
      ref.read(takenTimeProvider.notifier).setStartTime();
      startPoint = ref.read(currentLocationProvider).value!;
      return () {
        ref.read(currentLocationProvider.notifier).endSubscription();
      };
    }, []);

    final searchPlacesAsync = ref.watch(searchPlacesProvider);
    final focusPlaceIndex = ref.watch(focusPlaceIndexProvider);
    final currentLocationAsync = ref.watch(currentLocationProvider);
    final selectRadar = ref.read(selectRadarProvider);

    final enabledRadars = useMemoized(
      () =>
          selectRadar.entries.where((e) => e.value).map((e) => e.key).toList(),
      [selectRadar],
    );
    final radarMode = useState(enabledRadars.first);

    ref.listen<AsyncValue<LatLng?>>(currentLocationProvider, (previous, next) {
      final nextPosition = next.value;
      final previousPositon = previous?.value ?? next.value;
      final places = searchPlacesAsync.value;

      if (nextPosition == null ||
          previousPositon == null ||
          places == null ||
          focusPlaceIndex == null ||
          focusPlaceIndex >= places.length) {
        return;
      }
      final place = places[focusPlaceIndex];
      if (place.location == null) return;

      final previousDistanceInMeters = Geolocator.distanceBetween(
        previousPositon.latitude,
        previousPositon.longitude,
        place.location!.latitude,
        place.location!.longitude,
      );

      final nextDistanceInMeters = Geolocator.distanceBetween(
        nextPosition.latitude,
        nextPosition.longitude,
        place.location!.latitude,
        place.location!.longitude,
      );

      final remainingDistanceDecreaseQuantity =
          previousDistanceInMeters - nextDistanceInMeters;

      if (remainingDistanceDecreaseQuantity > 0) {
        runWaveAnimation(ref, (remainingDistanceDecreaseQuantity ~/ 3));
      }

      if (nextDistanceInMeters < 50) {
        ref.read(takenTimeProvider.notifier).calculationTakenTime();
        Navigator.of(
          context,
        ).pushReplacementNamed(AppRoute.result.path, arguments: startPoint);
      }
    });

    if (searchPlacesAsync.isLoading || currentLocationAsync.isLoading) {
      return Scaffold(
        body: Center(
          child: LoadingAnimationWidget.progressiveDots(
            color: Theme.of(context).colorScheme.primary,
            size: 24,
          ),
        ),
      );
    }

    if (searchPlacesAsync.hasError) {
      return Scaffold(
        body: Center(child: Text("場所の取得に失敗しました: ${searchPlacesAsync.error}")),
      );
    }
    if (currentLocationAsync.hasError) {
      return Scaffold(
        body: Center(
          child: Text("現在地の取得に失敗しました: ${currentLocationAsync.error}"),
        ),
      );
    }

    final places = searchPlacesAsync.value;
    final position = currentLocationAsync.value;

    if (places == null ||
        focusPlaceIndex == null ||
        focusPlaceIndex >= places.length) {
      return const Scaffold(body: Center(child: Text("表示する場所が見つかりませんでした。")));
    }
    final place = places[focusPlaceIndex];

    if (position == null || place.location == null) {
      return Scaffold(
        appBar: AppBar(title: Text(place.displayName.text), centerTitle: true),
        body: const Center(child: Text("現在地または目的地の位置情報が取得できません。")),
      );
    }

    final double distanceInMeters = Geolocator.distanceBetween(
      position.latitude,
      position.longitude,
      place.location!.latitude,
      place.location!.longitude,
    );

    return Scaffold(
      appBar: AppBar(title: Text(place.displayName.text), centerTitle: true),
      body: Center(
        child: Column(
          children: [
            const Spacer(flex: 1),
            Text.rich(
              TextSpan(
                style: Theme.of(context).textTheme.headlineMedium,
                children: <TextSpan>[
                  const TextSpan(text: 'あと'),
                  // 数値の部分だけ太字にする
                  TextSpan(
                    text: '${distanceInMeters.round()}',
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
                  ),
                  const TextSpan(text: 'm'),
                ],
              ),
            ),
            const Spacer(flex: 1),
            RadarCircle(
              mode: radarMode.value,
              currentLocation: position,
              place: place,
            ),
            const Spacer(flex: 2),
            SelectModeButton(radarMode: radarMode),
            const SizedBox(height: 16),
            // OutlinedButton(
            //   onPressed: () {
            //     ref
            //         .read(sensorAnimationProvider.notifier)
            //         .startWave(SensorSetting(Duration(milliseconds: 100)));
            //   },
            //   child: Text("センサ"),
            // ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
