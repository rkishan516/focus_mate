import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:focus_mate/app/app.dart';
import 'package:focus_mate/app/common/services/package_info_service.dart';
import 'package:focus_mate/app/common/services/shared_perferences_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final sharedPreferences = await SharedPreferences.getInstance();
  final packageInfo = await PackageInfo.fromPlatform();
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
