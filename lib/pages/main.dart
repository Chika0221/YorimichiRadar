// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:yorimichi_radar/main_page.dart';
import 'package:yorimichi_radar/theme.dart';

void main() {
  final providerScope = ProviderScope(child: MyApp());
  runApp(providerScope);
}

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextTheme textTheme = Theme.of(context).textTheme;
    MaterialTheme theme = MaterialTheme(textTheme);

    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: theme.light(),
      darkTheme: theme.dark(),
      home: MainPage(),
    );
  }
}
