// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SettingsPage extends HookConsumerWidget {
  const SettingsPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = useState(false);
    final areNotificationsEnabled = useState(true);

    return Scaffold(
      appBar: AppBar(title: const Text("設定"), centerTitle: true),
      body: ListView(
        children: [
          _buildSectionHeader(context, "表示"),
          SwitchListTile(
            title: const Text("ダークモード"),
            value: isDarkMode.value,
            onChanged: (value) {
              isDarkMode.value = value;
            },
          ),
          SwitchListTile(
            title: const Text("通知"),
            value: areNotificationsEnabled.value,
            onChanged: (value) {
              areNotificationsEnabled.value = value;
            },
          ),
          const Divider(),
          _buildSectionHeader(context, "一般"),
          ListTile(
            title: const Text("コンパスの調整"),
            leading: const Icon(Icons.explore_outlined),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("コンパスを調整しました。"),
                  duration: Duration(seconds: 2),
                ),
              );
            },
          ),
          ListTile(
            title: const Text("履歴を消去"),
            leading: const Icon(Icons.delete_outline),
            onTap: () {
              _showClearHistoryDialog(context);
            },
          ),
          const Divider(),
          _buildSectionHeader(context, "このアプリについて"),
          const ListTile(
            title: Text("バージョン"),
            subtitle: Text("1.0.0"),
            leading: Icon(Icons.info_outline),
          ),
          ListTile(
            title: const Text("ライセンス"),
            leading: const Icon(Icons.description_outlined),
            onTap: () {
              showLicensePage(context: context);
            },
          ),
        ],
      ),
    );
  }

  void _showClearHistoryDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("履歴を消去"),
          content: const Text("本当によろしいですか？この操作は取り消せません。"),
          actions: [
            TextButton(
              child: const Text("キャンセル"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text("消去"),
              onPressed: () {
                // ここで履歴を消去するロジックを呼び出す
                Navigator.of(context).pop();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("履歴を消去しました。"),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }

  Widget _buildSectionHeader(BuildContext context, String title) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        title,
        style: theme.textTheme.titleMedium?.copyWith(
          color: theme.colorScheme.primary,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
