import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RadarPage extends HookConsumerWidget {
  const RadarPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final radarDiameter = MediaQuery.of(context).size.width - 128;

    return Scaffold(
      body: Center(
        child: Container(
          height: radarDiameter,
          width: radarDiameter,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.amber,
          ),
        ),
      ),
    );
  }
}
