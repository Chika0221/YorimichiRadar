import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yorimichi_radar/pages/main_page/main_page.dart';
import 'package:yorimichi_radar/pages/radar_page.dart';
import 'package:yorimichi_radar/util.dart';
import 'package:yorimichi_radar/theme.dart';

void main() {
  final providerScope = ProviderScope(child: MyApp());
  runApp(providerScope);
}

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;

    // TextTheme textTheme = createTextTheme(
    //   context,
    //   "Noto Sans JP",
    //   "Noto Sans JP",
    // );

    TextTheme textTheme = Theme.of(context).textTheme;

    MaterialTheme theme = MaterialTheme(textTheme);

    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: theme.light(),
      darkTheme: theme.dark(),
      home: MainPage(),
    );
  }
}
