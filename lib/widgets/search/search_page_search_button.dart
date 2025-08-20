part of '../../pages/search_page.dart';

class SearchPageSearchButton extends HookConsumerWidget {
  const SearchPageSearchButton({
    super.key,
    required this.closeOnPressed,
    required this.openOnPressed,
  });

  final void Function() closeOnPressed;
  final void Function() openOnPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RadarCircle(
      mode: RadarMode.none,
      radarDiameter: 84,
      child:
          (ref.watch(keywordProvider) != "")
              ? Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 4,
                    color: Theme.of(context).colorScheme.surfaceContainerLow,
                  ),
                  color: Theme.of(context).colorScheme.primary,
                ),
                child: Center(
                  child: IconButton(
                    onPressed: openOnPressed,
                    icon: Icon(
                      Icons.search_rounded,
                      color: Theme.of(context).colorScheme.onPrimary,
                      size: 32,
                    ),
                  ),
                ),
              )
              : Center(
                child: IconButton(
                  onPressed: closeOnPressed,
                  icon: Icon(Icons.keyboard_arrow_up_rounded),
                ),
              ),
    );
  }
}
