import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:focus_mate/app/theme/default.dart';
import 'package:go_router/go_router.dart';
import 'package:focus_mate/app/common/notifiers/theme_mode_notifier.dart';
import 'package:focus_mate/app/routes/notifiers/app_router.dart';
import 'package:focus_mate/app/routes/notifiers/app_routes.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      theme: DefaultTheme.light,
      darkTheme: DefaultTheme.dark,
      debugShowCheckedModeBanner: false,
      themeMode: ref.watch(themeModeNotifierProvider),
      routerConfig: ref.watch(navigatorProvider),
      builder: (context, child) {
        return _VersionOverlay(
          child: child!,
        );
      },
    );
  }
}

class _VersionOverlay extends ConsumerWidget {
  final Widget child;

  const _VersionOverlay({
    required this.child,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Get current brightness (light or dark) to determine the background color
    final brightness = Theme.of(context).brightness;
    final backgroundColor =
        brightness == Brightness.dark ? Colors.white : Colors.black;

    return Stack(
      children: [
        child,
        if (kDebugMode)
          SafeArea(
            child: Align(
              alignment: const Alignment(1, -0.95),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    final router = ref.read(navigatorProvider);
                    final lastMatch =
                        router.routerDelegate.currentConfiguration.last;
                    final matchList = lastMatch is ImperativeRouteMatch
                        ? lastMatch.matches
                        : router.routerDelegate.currentConfiguration;
                    final String location = matchList.uri.toString();
                    if (!location.contains(DeveloperMenuPageRoute.name)) {
                      router.pushNamed(DeveloperMenuPageRoute.name);
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5, bottom: 10),
                    child: RotatedBox(
                      quarterTurns: 1,
                      child: ColoredBox(
                        color: backgroundColor,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 5,
                            vertical: 1,
                          ),
                          child: Text(
                            'Dev',
                            style:
                                Theme.of(context).textTheme.bodySmall?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: brightness == Brightness.dark
                                          ? Colors.black
                                          : Colors.white,
                                    ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
