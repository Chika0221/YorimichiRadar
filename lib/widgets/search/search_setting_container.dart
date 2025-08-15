part of '../../pages/search_page.dart';

class SearchSettingContainer extends HookConsumerWidget {
  const SearchSettingContainer({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: ShapeDecoration(
        shape: StadiumBorder(),
        color: Theme.of(context).colorScheme.surfaceContainer,
      ),
      child: Row(mainAxisSize: MainAxisSize.min, children: const [Text("aaa")]),
    );
  }
}
