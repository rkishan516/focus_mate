// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SettingsConfigImpl _$$SettingsConfigImplFromJson(Map<String, dynamic> json) =>
    _$SettingsConfigImpl(
      focusDuration:
          Duration(microseconds: (json['focusDuration'] as num).toInt()),
      restDuration:
          Duration(microseconds: (json['restDuration'] as num).toInt()),
      longRestDuration:
          Duration(microseconds: (json['longRestDuration'] as num).toInt()),
      automaticallyStartFocus:
          json['automaticallyStartFocus'] as bool? ?? false,
      automaticallyStartRest: json['automaticallyStartRest'] as bool? ?? false,
    );

Map<String, dynamic> _$$SettingsConfigImplToJson(
        _$SettingsConfigImpl instance) =>
    <String, dynamic>{
      'focusDuration': instance.focusDuration.inMicroseconds,
      'restDuration': instance.restDuration.inMicroseconds,
      'longRestDuration': instance.longRestDuration.inMicroseconds,
      'automaticallyStartFocus': instance.automaticallyStartFocus,
      'automaticallyStartRest': instance.automaticallyStartRest,
    };
