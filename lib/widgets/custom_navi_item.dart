part of 'custom_navi_bar.dart';

class CustomNaviItem extends HookConsumerWidget {
  const CustomNaviItem({
    super.key,
    required this.onTap,
    required this.icon,
    required this.label,
    required this.selected,
  });

  final void Function() onTap;
  final String label;
  final IconData icon;
  final bool selected;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fillColor =
        selected
            ? Theme.of(context).colorScheme.primary
            : Theme.of(context).colorScheme.primary.withAlpha(100);

    return InkWell(
      onTap: onTap,
      splashColor: Theme.of(context).splashColor,
      child: SizedBox(
        height: double.infinity,
        width: 60,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: fillColor),
            Text(label, style: TextStyle(color: fillColor)),
          ],
        ),
      ),
    );
  }
}
