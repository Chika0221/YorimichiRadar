// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

// Project imports:
import 'package:yorimichi_radar/state/history_provider.dart';

class HistoryPage extends HookConsumerWidget {
  const HistoryPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final history = ref.watch(historyProvider);

    if (history.isEmpty) {
      return const Center(
        child: Text('寄り道の履歴はまだありません。'),
      );
    }

    return ListView.builder(
      itemCount: history.length,
      itemBuilder: (context, index) {
        final record = history[index];
        return ListTile(
          leading: const Icon(Icons.history),
          title: Text(record.endPlace.displayName.text),
          subtitle: Text(
              '${DateFormat('yyyy/MM/dd HH:mm').format(record.createAt)} - ${record.takenTime.round()}秒'),
          onTap: () {
            // TODO: タップして詳細画面に遷移する処理
          },
        );
      },
    );
  }
}
