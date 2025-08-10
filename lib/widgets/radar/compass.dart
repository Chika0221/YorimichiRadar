part of 'radar_circle.dart';

class Compass extends HookConsumerWidget {
  const Compass({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final compassProvider = ref.watch(CompassProvider);

    return compassProvider.when(
      data: (data) {
        return Transform.rotate(
          angle: data,
          child: Center(
            child: Icon(
              Icons.arrow_upward_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        );
      },
      error: (error, stackTrace) {
        return Center(child: Text("コンパス読み込みエラー"));
      },
      loading: () {
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
