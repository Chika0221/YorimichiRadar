part of '../../pages/search_page.dart';

class SearchPageBottomSheet extends HookConsumerWidget {
  const SearchPageBottomSheet({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sheetController = useMemoized(() => DraggableScrollableController());
    const maxChildSize = 0.9;
    const minChildSize = 0.1;

    final keywordController = useTextEditingController(
      text: ref.read(keywordProvider),
    );

    final distance = useState(ref.read(radiusProvider));
    final distanceTextController = useTextEditingController(
      text: distance.value.round().toString(),
    );

    useEffect(() {
      final newText = distance.value.round().toString();
      if (distanceTextController.text != newText) {
        distanceTextController.text = newText;
      }
      return null;
    }, [distance.value]);

    useEffect(() {
      void listener() {
        ref.read(keywordProvider.notifier).state = keywordController.text;
      }

      keywordController.addListener(listener);
      return () {
        keywordController.removeListener(listener);
      };
    }, [keywordController]);

    return DraggableScrollableSheet(
      controller: sheetController,
      initialChildSize: minChildSize,
      minChildSize: minChildSize,
      maxChildSize: maxChildSize,
      expand: false,
      snap: true,
      snapSizes: [0.3, 0.6],
      builder: (context, scrollController) {
        return ListView(
          controller: scrollController,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.tune_rounded),
                  ),
                  IconButton.filledTonal(
                    icon: const Icon(Icons.fullscreen_rounded),
                    onPressed: () {
                      final newSize =
                          sheetController.size == maxChildSize
                              ? minChildSize
                              : maxChildSize;
                      sheetController.animateTo(
                        newSize,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeOut,
                      );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: TextField(
                controller: keywordController,
                decoration: InputDecoration(
                  hintText: 'キーワードで検索 (例: カフェ)',
                  prefixIcon: const Icon(Icons.search),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.straighten, color: Colors.grey),
                      const SizedBox(width: 8),
                      Text(
                        '現在地からの距離',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        child: Slider(
                          value: distance.value,
                          min: 1.0,
                          max: 10.0,
                          divisions: (10.0 - 1.0) ~/ 1.0,
                          label: '${distance.value.toInt()}km',
                          onChanged: (double value) {
                            distance.value = value;
                          },
                          onChangeEnd: (value) {
                            ref.read(radiusProvider.notifier).state = value;
                          },
                        ),
                      ),
                      const SizedBox(width: 8),
                      SizedBox(
                        width: 80,
                        child: TextField(
                          controller: distanceTextController,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            suffixText: 'km',
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(30),
                              ),
                              borderSide: BorderSide.none,
                            ),
                            contentPadding: EdgeInsets.symmetric(horizontal: 8),
                          ),
                          onChanged: (value) {
                            final newDistance = double.tryParse(value);
                            if (newDistance != null) {
                              distance.value = newDistance.clamp(1.0, 10.0);
                            }
                          },
                          onEditingComplete: () {
                            final currentVal =
                                double.tryParse(distanceTextController.text) ??
                                1.0;
                            distance.value = currentVal.clamp(1.0, 10);
                            FocusScope.of(context).unfocus();
                            ref.read(radiusProvider.notifier).state =
                                distance.value;
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
