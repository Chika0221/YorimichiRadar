part of '../search/search_page_bottom_sheet.dart';

class FocusPlaceContainer extends HookConsumerWidget {
  const FocusPlaceContainer({
    super.key,
    required this.index,
    required this.place,
    this.isShowGoButton = true,
  });

  final Place place;
  final int index;
  final bool isShowGoButton;

  Future<void> launchGoogleMap() async {
    final Uri url = Uri.parse(place.googleMapsUri ?? "");

    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Theme.of(context).colorScheme.surfaceContainerHigh,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 2,
            children: [
              Expanded(
                child: Text(
                  place.displayName.text,
                  // "とある${place.primaryTypeDisplayName?.text ?? "お店"}",
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              if (place.googleMapsUri != null)
                IconButton.outlined(
                  onPressed: () async {
                    await launchGoogleMap();
                  },
                  icon: Icon(Icons.launch_rounded),
                ),
            ],
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 4,
            runSpacing: 4,
            children: [
              if (place.primaryTypeDisplayName != null)
                CustomChip(
                  child: Text(
                    place.primaryTypeDisplayName!.text,
                    style: Theme.of(
                      context,
                    ).textTheme.labelLarge?.copyWith(fontSize: 17),
                  ),
                ),
              if (place.rating != null)
                CustomChip(
                  child: SizedBox(
                    width: 120,
                    child: StarRating(
                      rating: place.rating!.toDouble(),
                      mainAxisAlignment: MainAxisAlignment.center,
                      color: Colors.amber,
                      filledIcon: Icons.star_rounded,
                      halfFilledIcon: Icons.star_half_rounded,
                      emptyIcon: Icons.star_outline_rounded,
                    ),
                  ),
                ),
              if (place.regularOpeningHours != null)
                CustomChip(
                  child:
                      (place.regularOpeningHours!.openNow)
                          ? Text(
                            "営業中",
                            style: Theme.of(
                              context,
                            ).textTheme.labelLarge?.copyWith(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 17,
                            ),
                          )
                          : Text(
                            "営業時間外",
                            style: Theme.of(
                              context,
                            ).textTheme.labelLarge?.copyWith(
                              color: Theme.of(context).colorScheme.tertiary,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                ),
            ],
          ),
          const SizedBox(height: 8),
          Expanded(
            child: ShaderMask(
              shaderCallback: (Rect bounds) {
                return const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Colors.transparent,
                    Colors.black,
                    Colors.black,
                    Colors.transparent,
                  ],
                  stops: [0.0, 0.1, 0.9, 1.0],
                ).createShader(bounds);
              },
              blendMode: BlendMode.dstIn,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color:
                        Theme.of(context).colorScheme.surfaceContainerHighest,
                  ),
                  child: Column(
                    children: [
                      if (place.shortFormattedAddress != null)
                        ListTile(
                          title: const Text("住所"),
                          subtitle: Text(place.shortFormattedAddress!),
                        ),
                      if (place.shortFormattedAddress != null &&
                          place.regularOpeningHours != null)
                        const Divider(),
                      if (place.regularOpeningHours != null) ...[
                        ListTile(
                          title: const Text("営業時間"),
                          subtitle: Text(
                            place.regularOpeningHours!.weekdayDescriptions.join(
                              "\n",
                            ),
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ),
          ),
          if (isShowGoButton) ...[
            const SizedBox(height: 16),
            SizedBox(
              width: double.maxFinite,
              child: FilledButton(
                onPressed: () {
                  Navigator.of(
                    context,
                  ).pushNamed(AppRoute.searchCondition.path);
                },
                child: const Text("ここに行く"),
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class CustomChip extends StatelessWidget {
  const CustomChip({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: ShapeDecoration(
        shape: StadiumBorder(),
        color: Theme.of(context).colorScheme.surfaceContainerHighest,
      ),
      child: child,
    );
  }
}
