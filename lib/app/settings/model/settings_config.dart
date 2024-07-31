import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_config.freezed.dart';
part 'settings_config.g.dart';

@freezed
class SettingsConfig with _$SettingsConfig {
  const factory SettingsConfig({
    required Duration focusDuration,
    required Duration restDuration,
    required Duration longRestDuration,
  }) = _SettingsConfig;

  factory SettingsConfig.fromJson(Map<String, dynamic> json) =>
      _$SettingsConfigFromJson(json);
}
