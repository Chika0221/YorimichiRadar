part of '../search/search_page_bottom_sheet.dart';

class FocusPlaceContainer extends HookConsumerWidget {
  const FocusPlaceContainer({
    super.key,
    required this.index,
    required this.place,
  });

  final Place place;
  final int index;

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
            spacing: 2,
            children: [
              Expanded(
                child: Text(
                  place.displayName.text,
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
          IntrinsicHeight(
            child: Row(
              children: [
                CustomChip(
                  child: Text(
                    place.primaryTypeDisplayName.text,
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                ),
                const SizedBox(width: 4),
                CustomChip(
                  child: SizedBox(
                    width: 120,
                    child: StarRating(
                      rating: place.rating!.toDouble(),
                      mainAxisAlignment: MainAxisAlignment.center,
                      color: Colors.amber,
                      filledIcon: Icons.star_rounded,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 4),
          IntrinsicHeight(
            child: Row(
              children: [
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
                              ),
                            )
                            : Text(
                              "営業時間外",
                              style: Theme.of(
                                context,
                              ).textTheme.labelLarge?.copyWith(
                                color: Theme.of(context).colorScheme.tertiary,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                  ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Theme.of(context).colorScheme.surfaceContainerHighest,
            ),
            child: Column(
              children: [
                ListTile(
                  title: Text("住所"),
                  subtitle: Text(place.shortFormattedAddress!),
                ),
                Divider(),
                ListTile(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("営業時間"),
                          content: Text(
                            place.regularOpeningHours!.weekdayDescriptions.join(
                              "\n",
                            ),
                          ),
                        );
                      },
                    );
                  },
                  title: Text("営業時間"),
                  subtitle: Text(
                    place
                        .regularOpeningHours!
                        .weekdayDescriptions[DateTime.now().weekday - 1],
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          SizedBox(
            width: double.maxFinite,
            child: FilledButton(onPressed: () {}, child: Text("ここに行く")),
          ),
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
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: ShapeDecoration(
        shape: StadiumBorder(),
        color: Theme.of(context).colorScheme.surfaceContainerHighest,
      ),
      child: child,
    );
  }
}
