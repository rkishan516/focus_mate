// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SettingsViewState {
  Duration get focusDuration => throw _privateConstructorUsedError;
  Duration get restDuration => throw _privateConstructorUsedError;
  Duration get longRestDuration => throw _privateConstructorUsedError;
  bool get automaticallyStartFocus => throw _privateConstructorUsedError;
  bool get automaticallyStartRest => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsViewStateCopyWith<SettingsViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsViewStateCopyWith<$Res> {
  factory $SettingsViewStateCopyWith(
          SettingsViewState value, $Res Function(SettingsViewState) then) =
      _$SettingsViewStateCopyWithImpl<$Res, SettingsViewState>;
  @useResult
  $Res call(
      {Duration focusDuration,
      Duration restDuration,
      Duration longRestDuration,
      bool automaticallyStartFocus,
      bool automaticallyStartRest});
}

/// @nodoc
class _$SettingsViewStateCopyWithImpl<$Res, $Val extends SettingsViewState>
    implements $SettingsViewStateCopyWith<$Res> {
  _$SettingsViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
abstract class _$$SettingsViewStateImplCopyWith<$Res>
    implements $SettingsViewStateCopyWith<$Res> {
  factory _$$SettingsViewStateImplCopyWith(_$SettingsViewStateImpl value,
          $Res Function(_$SettingsViewStateImpl) then) =
      __$$SettingsViewStateImplCopyWithImpl<$Res>;
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
class __$$SettingsViewStateImplCopyWithImpl<$Res>
    extends _$SettingsViewStateCopyWithImpl<$Res, _$SettingsViewStateImpl>
    implements _$$SettingsViewStateImplCopyWith<$Res> {
  __$$SettingsViewStateImplCopyWithImpl(_$SettingsViewStateImpl _value,
      $Res Function(_$SettingsViewStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? focusDuration = null,
    Object? restDuration = null,
    Object? longRestDuration = null,
    Object? automaticallyStartFocus = null,
    Object? automaticallyStartRest = null,
  }) {
    return _then(_$SettingsViewStateImpl(
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

class _$SettingsViewStateImpl implements _SettingsViewState {
  const _$SettingsViewStateImpl(
      {required this.focusDuration,
      required this.restDuration,
      required this.longRestDuration,
      this.automaticallyStartFocus = false,
      this.automaticallyStartRest = false});

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
    return 'SettingsViewState(focusDuration: $focusDuration, restDuration: $restDuration, longRestDuration: $longRestDuration, automaticallyStartFocus: $automaticallyStartFocus, automaticallyStartRest: $automaticallyStartRest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsViewStateImpl &&
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

  @override
  int get hashCode => Object.hash(runtimeType, focusDuration, restDuration,
      longRestDuration, automaticallyStartFocus, automaticallyStartRest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsViewStateImplCopyWith<_$SettingsViewStateImpl> get copyWith =>
      __$$SettingsViewStateImplCopyWithImpl<_$SettingsViewStateImpl>(
          this, _$identity);
}

abstract class _SettingsViewState implements SettingsViewState {
  const factory _SettingsViewState(
      {required final Duration focusDuration,
      required final Duration restDuration,
      required final Duration longRestDuration,
      final bool automaticallyStartFocus,
      final bool automaticallyStartRest}) = _$SettingsViewStateImpl;

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
  @override
  @JsonKey(ignore: true)
  _$$SettingsViewStateImplCopyWith<_$SettingsViewStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
