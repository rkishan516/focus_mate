part of 'page.dart';

class _ThemeSwitcher extends ConsumerWidget {
  const _ThemeSwitcher();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Transform.scale(
      scale: 0.85,
      child: Switch.adaptive(
        activeColor: Colors.white,
        inactiveTrackColor: Colors.black,
        thumbColor: WidgetStateProperty.resolveWith<Color?>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return Colors.white;
            }

            if (states.contains(WidgetState.selected)) {
              return Colors.black;
            }

            return null;
          },
        ),
        thumbIcon: WidgetStateProperty.resolveWith<Icon?>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return _getIcon(context, false);
            }
            if (states.contains(WidgetState.selected)) {
              return _getIcon(context, true);
            }

            return _getIcon(context, false);
          },
        ),
        value: ref.watch(themeModeNotifierProvider) == ThemeMode.dark,
        onChanged: (dark) {
          ref
              .read(themeModeNotifierProvider.notifier)
              .updateThemeMode(dark ? ThemeMode.dark : ThemeMode.light);
        },
      ),
    );
  }

  Icon _getIcon(BuildContext context, bool dark) {
    return Icon(
      dark ? Icons.dark_mode_outlined : Icons.light_mode_outlined,
      color: Theme.of(context).iconTheme.color,
    );
  }
}
