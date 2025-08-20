part of '../../pages/search_start_page.dart';

class SearchStartButton extends HookConsumerWidget {
  const SearchStartButton({super.key});
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
        // onPressed: () => Navigator.of(context).pushNamed(AppRoute.search.path),
        onPressed:
            () => Navigator.of(
              context,
            ).pushReplacementNamed(AppRoute.search.path),
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
