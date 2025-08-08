import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HistoryPage extends HookConsumerWidget {
  const HistoryPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.builder(
      itemCount: 10, // 仮の履歴件数
      itemBuilder: (context, index) {
        return ListTile(
          leading: const Icon(Icons.history),
          title: Text('履歴アイテム ${index + 1}'),
          subtitle: Text('詳細情報 ${index + 1}'),
          onTap: () {
            // タップ時の処理
          },
        );
      },
    );
  }
}
