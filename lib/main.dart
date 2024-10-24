import 'package:flutter/material.dart';
import 'package:focus_mate/app/menu_bar_icon.dart';
import 'package:hive/hive.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:focus_mate/app/app.dart';
import 'package:focus_mate/app/common/services/package_info_service.dart';
import 'package:focus_mate/app/common/services/shared_perferences_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final sharedPreferences = await SharedPreferences.getInstance();
  final packageInfo = await PackageInfo.fromPlatform();
  final dir = await getApplicationDocumentsDirectory();
  Hive.init(dir.path);
  runApp(
    ProviderScope(
      overrides: [
        sharedPerferencesServiceProvider.overrideWithValue(sharedPreferences),
        packageInfoProvider.overrideWithValue(packageInfo),
      ],
      child: const MainApp(),
    ),
  );
}

@pragma('vm:entry-point')
void menuBarButtonIconWindow() async {
  WidgetsFlutterBinding.ensureInitialized();
  final sharedPreferences = await SharedPreferences.getInstance();

  runApp(
    ProviderScope(
      overrides: [
        sharedPerferencesServiceProvider.overrideWithValue(sharedPreferences),
      ],
      child: const MenuBarApp(),
    ),
  );
}
