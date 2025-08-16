part of '../../pages/search_page.dart';

class SearchPageBottomSheet extends HookConsumerWidget {
  const SearchPageBottomSheet({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DraggableScrollableSheet(
      initialChildSize: 0.2,
      minChildSize: 0.15,
      maxChildSize: 0.8,
      expand: false,
      builder: (context, scrollController) {
        return ListView(controller: scrollController, children: [
          
        ]);
      },
    );
  }
}
