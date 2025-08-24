// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:yorimichi_radar/routes.dart';
import 'package:yorimichi_radar/state/current_location_provider.dart';
import 'package:yorimichi_radar/state/focus_place_index_provider.dart';
import 'package:yorimichi_radar/state/search_condition_provider.dart';
import 'package:yorimichi_radar/state/search_places_provider.dart';
import 'package:yorimichi_radar/widgets/radar/radar_circle.dart';
import 'package:yorimichi_radar/widgets/radar/select_mode_button.dart';

class RadarPage extends HookConsumerWidget {
  const RadarPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      return () {
        ref.read(currentLocationProvider.notifier).endSubscription();
      };
    }, []);

    final searchPlaces = ref.watch(searchPlacesProvider);
    final focusPlaceIndex = ref.watch(focusPlaceIndexProvider);
    final currentLocation = ref.watch(currentLocationProvider);
    final selectRadar = ref.read(selectRadarProvider);

    final radarMode = useState(selectRadar.keys.first);

    final place = searchPlaces.when(
      data: (place) => place[focusPlaceIndex!],
      error: (error, stackTrace) => null,
      loading: () => null,
    );
    if (place == null) {
      return const Scaffold(body: Center(child: Text("場所が見つかりませんでした。")));
    }

    return Scaffold(
      appBar: AppBar(title: Text(place.displayName.text), centerTitle: true),
      body: Center(
        child: currentLocation.when(
          data: (data) {
            final double distanceInMeters = Geolocator.distanceBetween(
              data!.latitude,
              data.longitude,
              place.location!.latitude,
              place.location!.longitude,
            );
            if (distanceInMeters < 100) {
              Navigator.of(context).pushNamed(AppRoute.result.path);
            }
            return Column(
              children: [
                Spacer(flex: 1),
                Text.rich(
                  TextSpan(
                    style: Theme.of(context).textTheme.headlineMedium,
                    children: <TextSpan>[
                      const TextSpan(text: 'あと'),
                      // 数値の部分だけ太字にする
                      TextSpan(
                        text: '${distanceInMeters.round()}',
                        style: Theme.of(
                          context,
                        ).textTheme.headlineLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.tertiary,
                        ),
                      ),
                      const TextSpan(text: 'm'),
                    ],
                  ),
                ),
                Spacer(flex: 1),
                RadarCircle(
                  mode: radarMode.value,
                  currentLocation: data,
                  place: place,
                ),
                Spacer(flex: 2),
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
                Spacer(flex: 2),
              ],
            );
          },
          error: (error, stackTrace) {
            return Text("$error");
          },
          loading: () {
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
