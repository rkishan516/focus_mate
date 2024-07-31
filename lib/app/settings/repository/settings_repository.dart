import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:focus_mate/app/common/services/logger_service.dart';
import 'package:focus_mate/app/common/services/shared_perferences_service.dart';
import 'package:focus_mate/app/settings/model/settings_config.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'settings_repository.g.dart';

@riverpod
SettingsRepository settingsRepository(Ref ref) {
  return SettingsRepository(ref: ref);
}

class SettingsRepository {
  static const _settingsStorageKey = 'settings_config';

  final Ref ref;
  SettingsRepository({required this.ref});

  SettingsConfig? getConfig() {
    final settingsConfig = ref
        .read(sharedPerferencesServiceProvider)
        .getString(_settingsStorageKey);
    if (settingsConfig != null) {
      try {
        return SettingsConfig.fromJson(jsonDecode(settingsConfig));
      } catch (e, s) {
        ref
            .read(loggerServiceProvider)
            .error('Unable to parsed settings config', e, s);
      }
    }
    return null;
  }

  void setConfig(SettingsConfig config) {
    ref
        .read(sharedPerferencesServiceProvider)
        .setString(_settingsStorageKey, jsonEncode(config.toJson()));
  }
}
