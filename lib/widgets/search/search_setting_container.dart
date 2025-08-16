// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:yorimichi_radar/state/search_condition_provider.dart';

class SearchSettingContainer extends HookConsumerWidget {
  const SearchSettingContainer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final keyword = ref.watch(keywordProvider);
    final radius = ref.watch(radiusProvider);
    final travelMode = ref.watch(travelModeProvider);

    return InkWell(
      onTap: () => _showSearchSettingsDialog(context, ref),
      borderRadius: BorderRadius.circular(32),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Wrap(
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: 12,
          runSpacing: 8,
          children: [
            _SettingChip(
              icon: Icons.food_bank_outlined,
              label: keyword.isEmpty ? "キーワード" : keyword,
            ),
            _SettingChip(
              icon: Icons.social_distance_outlined,
              label: "半径${radius.raduisValue.toStringAsFixed(1)}km",
            ),
            _SettingChip(
              icon: Icons.directions_walk_outlined,
              label: travelMode.displayName,
            ),
            const Icon(Icons.edit_outlined, size: 20),
          ],
        ),
      ),
    );
  }

  void _showSearchSettingsDialog(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (context) {
        return const _SearchSettingsDialog();
      },
    );
  }
}

class _SearchSettingsDialog extends HookConsumerWidget {
  const _SearchSettingsDialog();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final keywordController = useTextEditingController(
      text: ref.read(keywordProvider),
    );
    final radius = useState(ref.read(radiusProvider));
    final travelMode = useState(ref.read(travelModeProvider));

    return AlertDialog(
      title: const Text('検索条件'),
      content: SizedBox(
        width: double.maxFinite,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('キーワード'),
              const SizedBox(height: 8),
              TextField(
                controller: keywordController,
                decoration: const InputDecoration(
                  hintText: '例: カフェ、公園',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              Text('半径: ${radius.value.raduisValue.toStringAsFixed(1)}km 以内'),
              Slider(
                value: radius.value.raduisValue,
                min: radius.value.min,
                max: radius.value.max,
                divisions: 97,
                label: radius.value.raduisValue.toStringAsFixed(1),
                onChanged: (value) {
                  radius.value = radius.value.copyWith(raduisValue: value);
                },
              ),
              const SizedBox(height: 16),
              const Text('移動手段'),
              ...TravelMode.values.map((mode) {
                return RadioListTile<TravelMode>(
                  title: Text(mode.displayName),
                  value: mode,
                  groupValue: travelMode.value,
                  onChanged: (value) {
                    if (value != null) {
                      travelMode.value = value;
                    }
                    // Navigator.of(context).pop();
                  },
                );
              }),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('キャンセル'),
        ),
        TextButton(
          onPressed: () {
            ref.read(keywordProvider.notifier).state = keywordController.text;
            ref.read(radiusProvider.notifier).state = radius.value;
            ref.read(travelModeProvider.notifier).state = travelMode.value;
            Navigator.pop(context);
          },
          child: const Text('OK'),
        ),
      ],
    );
  }
}

class _SettingChip extends StatelessWidget {
  const _SettingChip({required this.icon, required this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: ShapeDecoration(
        shape: const StadiumBorder(),
        color: Theme.of(context).colorScheme.surfaceContainer,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [Icon(icon, size: 16), const SizedBox(width: 4), Text(label)],
      ),
    );
  }
}
