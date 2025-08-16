part of '../../pages/search_page.dart';

class SearchPageSearchButton extends HookConsumerWidget {
  const SearchPageSearchButton({super.key, required this.onPressed});

  final void Function() onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RadarCircle(
      mode: RadarMode.none,
      radarDiameter: 84,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Theme.of(context).colorScheme.primary,
        ),
        child: Center(
          child: IconButton(
            onPressed: onPressed,
            icon: Icon(
              Icons.search_rounded,
              color: Theme.of(context).colorScheme.onPrimary,
              size: 32,
            ),
          ),
        ),
      ),
    );
  }
}
