import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:focus_mate/app/common/notifiers/theme_mode_notifier.dart';
import 'package:focus_mate/app/pigeon/popover.dart';

class MenuBarApp extends ConsumerWidget {
  const MenuBarApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      theme: FlexThemeData.light(
        scheme: FlexScheme.blueM3,
        useMaterial3: true,
      ),
      darkTheme: FlexThemeData.dark(
        scheme: FlexScheme.blueM3,
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      themeMode: ref.watch(themeModeNotifierProvider),
      home: Material(
        type: MaterialType.transparency,
        child: Center(
          child: InkWell(
            onTap: () {
              PopOverAPI().togglePopOver();
            },
            child: Icon(
              Icons.center_focus_strong,
              color: Colors.green[400],
            ),
          ),
        ),
      ),
    );
  }
}
