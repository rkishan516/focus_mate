// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SettingsConfig _$SettingsConfigFromJson(Map<String, dynamic> json) {
  return _SettingsConfig.fromJson(json);
}

/// @nodoc
mixin _$SettingsConfig {
  Duration get focusDuration => throw _privateConstructorUsedError;
  Duration get restDuration => throw _privateConstructorUsedError;
  Duration get longRestDuration => throw _privateConstructorUsedError;
  bool get automaticallyStartFocus => throw _privateConstructorUsedError;
  bool get automaticallyStartRest => throw _privateConstructorUsedError;

  /// Serializes this SettingsConfig to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SettingsConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SettingsConfigCopyWith<SettingsConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsConfigCopyWith<$Res> {
  factory $SettingsConfigCopyWith(
          SettingsConfig value, $Res Function(SettingsConfig) then) =
      _$SettingsConfigCopyWithImpl<$Res, SettingsConfig>;
  @useResult
  $Res call(
      {Duration focusDuration,
      Duration restDuration,
      Duration longRestDuration,
      bool automaticallyStartFocus,
      bool automaticallyStartRest});
}

/// @nodoc
class _$SettingsConfigCopyWithImpl<$Res, $Val extends SettingsConfig>
    implements $SettingsConfigCopyWith<$Res> {
  _$SettingsConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingsConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? focusDuration = null,
    Object? restDuration = null,
    Object? longRestDuration = null,
    Object? automaticallyStartFocus = null,
    Object? automaticallyStartRest = null,
  }) {
    return _then(_value.copyWith(
      focusDuration: null == focusDuration
          ? _value.focusDuration
          : focusDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      restDuration: null == restDuration
          ? _value.restDuration
          : restDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      longRestDuration: null == longRestDuration
          ? _value.longRestDuration
          : longRestDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      automaticallyStartFocus: null == automaticallyStartFocus
          ? _value.automaticallyStartFocus
          : automaticallyStartFocus // ignore: cast_nullable_to_non_nullable
              as bool,
      automaticallyStartRest: null == automaticallyStartRest
          ? _value.automaticallyStartRest
          : automaticallyStartRest // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingsConfigImplCopyWith<$Res>
    implements $SettingsConfigCopyWith<$Res> {
  factory _$$SettingsConfigImplCopyWith(_$SettingsConfigImpl value,
          $Res Function(_$SettingsConfigImpl) then) =
      __$$SettingsConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Duration focusDuration,
      Duration restDuration,
      Duration longRestDuration,
      bool automaticallyStartFocus,
      bool automaticallyStartRest});
}

/// @nodoc
class __$$SettingsConfigImplCopyWithImpl<$Res>
    extends _$SettingsConfigCopyWithImpl<$Res, _$SettingsConfigImpl>
    implements _$$SettingsConfigImplCopyWith<$Res> {
  __$$SettingsConfigImplCopyWithImpl(
      _$SettingsConfigImpl _value, $Res Function(_$SettingsConfigImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? focusDuration = null,
    Object? restDuration = null,
    Object? longRestDuration = null,
    Object? automaticallyStartFocus = null,
    Object? automaticallyStartRest = null,
  }) {
    return _then(_$SettingsConfigImpl(
      focusDuration: null == focusDuration
          ? _value.focusDuration
          : focusDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      restDuration: null == restDuration
          ? _value.restDuration
          : restDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      longRestDuration: null == longRestDuration
          ? _value.longRestDuration
          : longRestDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      automaticallyStartFocus: null == automaticallyStartFocus
          ? _value.automaticallyStartFocus
          : automaticallyStartFocus // ignore: cast_nullable_to_non_nullable
              as bool,
      automaticallyStartRest: null == automaticallyStartRest
          ? _value.automaticallyStartRest
          : automaticallyStartRest // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SettingsConfigImpl implements _SettingsConfig {
  const _$SettingsConfigImpl(
      {required this.focusDuration,
      required this.restDuration,
      required this.longRestDuration,
      this.automaticallyStartFocus = false,
      this.automaticallyStartRest = false});

  factory _$SettingsConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$SettingsConfigImplFromJson(json);

  @override
  final Duration focusDuration;
  @override
  final Duration restDuration;
  @override
  final Duration longRestDuration;
  @override
  @JsonKey()
  final bool automaticallyStartFocus;
  @override
  @JsonKey()
  final bool automaticallyStartRest;

  @override
  String toString() {
    return 'SettingsConfig(focusDuration: $focusDuration, restDuration: $restDuration, longRestDuration: $longRestDuration, automaticallyStartFocus: $automaticallyStartFocus, automaticallyStartRest: $automaticallyStartRest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsConfigImpl &&
            (identical(other.focusDuration, focusDuration) ||
                other.focusDuration == focusDuration) &&
            (identical(other.restDuration, restDuration) ||
                other.restDuration == restDuration) &&
            (identical(other.longRestDuration, longRestDuration) ||
                other.longRestDuration == longRestDuration) &&
            (identical(
                    other.automaticallyStartFocus, automaticallyStartFocus) ||
                other.automaticallyStartFocus == automaticallyStartFocus) &&
            (identical(other.automaticallyStartRest, automaticallyStartRest) ||
                other.automaticallyStartRest == automaticallyStartRest));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, focusDuration, restDuration,
      longRestDuration, automaticallyStartFocus, automaticallyStartRest);

  /// Create a copy of SettingsConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsConfigImplCopyWith<_$SettingsConfigImpl> get copyWith =>
      __$$SettingsConfigImplCopyWithImpl<_$SettingsConfigImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SettingsConfigImplToJson(
      this,
    );
  }
}

abstract class _SettingsConfig implements SettingsConfig {
  const factory _SettingsConfig(
      {required final Duration focusDuration,
      required final Duration restDuration,
      required final Duration longRestDuration,
      final bool automaticallyStartFocus,
      final bool automaticallyStartRest}) = _$SettingsConfigImpl;

  factory _SettingsConfig.fromJson(Map<String, dynamic> json) =
      _$SettingsConfigImpl.fromJson;

  @override
  Duration get focusDuration;
  @override
  Duration get restDuration;
  @override
  Duration get longRestDuration;
  @override
  bool get automaticallyStartFocus;
  @override
  bool get automaticallyStartRest;

  /// Create a copy of SettingsConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingsConfigImplCopyWith<_$SettingsConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
