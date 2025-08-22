// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:yorimichi_radar/main.dart';

class SearchStartButton extends HookConsumerWidget {
  const SearchStartButton({super.key, required this.onPressed});

  final void Function() onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 80,
      width: MediaQuery.of(context).size.width - pageHorizontalPadding * 2,
      child: FilledButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(
            Theme.of(context).colorScheme.tertiary,
          ),
        ),
        onPressed: onPressed,
        child: Text(
          "探索を始める",
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
            color: Theme.of(context).colorScheme.onTertiary,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
