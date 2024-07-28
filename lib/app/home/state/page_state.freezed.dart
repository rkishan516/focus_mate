// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomePageState {
  Duration get runningDuration => throw _privateConstructorUsedError;
  bool get running => throw _privateConstructorUsedError;
  DurationType get durationType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomePageStateCopyWith<HomePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageStateCopyWith<$Res> {
  factory $HomePageStateCopyWith(
          HomePageState value, $Res Function(HomePageState) then) =
      _$HomePageStateCopyWithImpl<$Res, HomePageState>;
  @useResult
  $Res call(
      {Duration runningDuration, bool running, DurationType durationType});
}

/// @nodoc
class _$HomePageStateCopyWithImpl<$Res, $Val extends HomePageState>
    implements $HomePageStateCopyWith<$Res> {
  _$HomePageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? runningDuration = null,
    Object? running = null,
    Object? durationType = null,
  }) {
    return _then(_value.copyWith(
      runningDuration: null == runningDuration
          ? _value.runningDuration
          : runningDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      running: null == running
          ? _value.running
          : running // ignore: cast_nullable_to_non_nullable
              as bool,
      durationType: null == durationType
          ? _value.durationType
          : durationType // ignore: cast_nullable_to_non_nullable
              as DurationType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomePageStateImplCopyWith<$Res>
    implements $HomePageStateCopyWith<$Res> {
  factory _$$HomePageStateImplCopyWith(
          _$HomePageStateImpl value, $Res Function(_$HomePageStateImpl) then) =
      __$$HomePageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Duration runningDuration, bool running, DurationType durationType});
}

/// @nodoc
class __$$HomePageStateImplCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res, _$HomePageStateImpl>
    implements _$$HomePageStateImplCopyWith<$Res> {
  __$$HomePageStateImplCopyWithImpl(
      _$HomePageStateImpl _value, $Res Function(_$HomePageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? runningDuration = null,
    Object? running = null,
    Object? durationType = null,
  }) {
    return _then(_$HomePageStateImpl(
      runningDuration: null == runningDuration
          ? _value.runningDuration
          : runningDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      running: null == running
          ? _value.running
          : running // ignore: cast_nullable_to_non_nullable
              as bool,
      durationType: null == durationType
          ? _value.durationType
          : durationType // ignore: cast_nullable_to_non_nullable
              as DurationType,
    ));
  }
}

/// @nodoc

class _$HomePageStateImpl implements _HomePageState {
  const _$HomePageStateImpl(
      {required this.runningDuration,
      required this.running,
      required this.durationType});

  @override
  final Duration runningDuration;
  @override
  final bool running;
  @override
  final DurationType durationType;

  @override
  String toString() {
    return 'HomePageState(runningDuration: $runningDuration, running: $running, durationType: $durationType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomePageStateImpl &&
            (identical(other.runningDuration, runningDuration) ||
                other.runningDuration == runningDuration) &&
            (identical(other.running, running) || other.running == running) &&
            (identical(other.durationType, durationType) ||
                other.durationType == durationType));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, runningDuration, running, durationType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomePageStateImplCopyWith<_$HomePageStateImpl> get copyWith =>
      __$$HomePageStateImplCopyWithImpl<_$HomePageStateImpl>(this, _$identity);
}

abstract class _HomePageState implements HomePageState {
  const factory _HomePageState(
      {required final Duration runningDuration,
      required final bool running,
      required final DurationType durationType}) = _$HomePageStateImpl;

  @override
  Duration get runningDuration;
  @override
  bool get running;
  @override
  DurationType get durationType;
  @override
  @JsonKey(ignore: true)
  _$$HomePageStateImplCopyWith<_$HomePageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
