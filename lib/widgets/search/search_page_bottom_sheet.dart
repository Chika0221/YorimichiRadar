part of '../../pages/search_page.dart';

class SearchPageBottomSheet extends HookConsumerWidget {
  const SearchPageBottomSheet({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DraggableScrollableSheet(
      initialChildSize: 0.1,
      minChildSize: 0.1,
      maxChildSize: 0.5,
      expand: false,
      builder: (context, scrollController) {
        return ListView(controller: scrollController, children: []);
      },
    );
  }
}
