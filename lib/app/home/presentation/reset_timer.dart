part of 'page.dart';

class _ResetTimerButton extends ConsumerWidget {
  const _ResetTimerButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(homePageNotifierProvider.notifier);
    final canReset = ref.watch(
          homePageNotifierProvider.select(
            (value) => value.runningDuration,
          ),
        ) !=
        notifier.maxDuration;
    return AnimatedSize(
      duration: kThemeAnimationDuration,
      child: Builder(
        builder: (context) {
          if (!canReset) return SizedBox.shrink();
          return IconButton(
            onPressed: notifier.resetCurrentTimer,
            icon: const Icon(Icons.restore_outlined),
          );
        },
      ),
    );
  }
}
