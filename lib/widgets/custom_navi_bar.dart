// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:yorimichi_radar/state/navi_bar_provider.dart';

part 'custom_navi_item.dart';

class CustomNaviBar extends HookConsumerWidget {
  const CustomNaviBar({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final naviBarIndex = ref.watch(naviBarIndexProvider);

    return SizedBox(
      width: double.infinity,
      height: 120,
      child: Container(
        margin: EdgeInsets.fromLTRB(16, 0, 16, 32),
        decoration: ShapeDecoration(
          shape: StadiumBorder(),
          color: Theme.of(context).colorScheme.secondaryContainer,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomNaviItem(
              onTap: () => ref.read(naviBarIndexProvider.notifier).state = 0,
              icon: Icons.radar_rounded,
              label: "レーダー",
              selected: (naviBarIndex == 0),
            ),
            CustomNaviItem(
              onTap: () => ref.read(naviBarIndexProvider.notifier).state = 1,
              icon: Icons.history_outlined,
              label: "履歴",
              selected: naviBarIndex == 1,
            ),
          ],
        ),
      ),
    );
  }
}
