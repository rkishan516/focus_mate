import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:focus_mate/app/common/notifiers/theme_mode_notifier.dart';
import 'package:focus_mate/app/menu_bar_icon/presentation/menu_bar_view.dart';

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
      home: const MenuBarView(),
    );
  }
}
