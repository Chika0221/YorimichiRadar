// Dart imports:
import 'dart:math';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:yorimichi_radar/state/compass_provider.dart';

class Radar extends HookConsumerWidget {
  const Radar({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final compassProvider = ref.watch(CompassProvider);
    final radarDiameter = MediaQuery.of(context).size.width - 128;
    return Container(
      height: radarDiameter,
      width: radarDiameter,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Theme.of(context).colorScheme.surfaceContainerHigh,
      ),
      child: compassProvider.when(
        data: (data) {
          return Transform.rotate(
            angle: data,
            child: Center(
              child: Icon(
                Icons.arrow_upward_rounded,
                size: 100,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          );
        },
        error: (error, stackTrace) {
          return Center(child: Text("a"));
        },
        loading: () {
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
