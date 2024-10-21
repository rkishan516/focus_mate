// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu_bar_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MenuBarViewState {
  Duration get duration => throw _privateConstructorUsedError;

  /// Create a copy of MenuBarViewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MenuBarViewStateCopyWith<MenuBarViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuBarViewStateCopyWith<$Res> {
  factory $MenuBarViewStateCopyWith(
          MenuBarViewState value, $Res Function(MenuBarViewState) then) =
      _$MenuBarViewStateCopyWithImpl<$Res, MenuBarViewState>;
  @useResult
  $Res call({Duration duration});
}

/// @nodoc
class _$MenuBarViewStateCopyWithImpl<$Res, $Val extends MenuBarViewState>
    implements $MenuBarViewStateCopyWith<$Res> {
  _$MenuBarViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MenuBarViewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_value.copyWith(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MenuBarViewStateImplCopyWith<$Res>
    implements $MenuBarViewStateCopyWith<$Res> {
  factory _$$MenuBarViewStateImplCopyWith(_$MenuBarViewStateImpl value,
          $Res Function(_$MenuBarViewStateImpl) then) =
      __$$MenuBarViewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Duration duration});
}

/// @nodoc
class __$$MenuBarViewStateImplCopyWithImpl<$Res>
    extends _$MenuBarViewStateCopyWithImpl<$Res, _$MenuBarViewStateImpl>
    implements _$$MenuBarViewStateImplCopyWith<$Res> {
  __$$MenuBarViewStateImplCopyWithImpl(_$MenuBarViewStateImpl _value,
      $Res Function(_$MenuBarViewStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MenuBarViewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$MenuBarViewStateImpl(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$MenuBarViewStateImpl implements _MenuBarViewState {
  const _$MenuBarViewStateImpl({required this.duration});

  @override
  final Duration duration;

  @override
  String toString() {
    return 'MenuBarViewState(duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MenuBarViewStateImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  /// Create a copy of MenuBarViewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MenuBarViewStateImplCopyWith<_$MenuBarViewStateImpl> get copyWith =>
      __$$MenuBarViewStateImplCopyWithImpl<_$MenuBarViewStateImpl>(
          this, _$identity);
}

abstract class _MenuBarViewState implements MenuBarViewState {
  const factory _MenuBarViewState({required final Duration duration}) =
      _$MenuBarViewStateImpl;

  @override
  Duration get duration;

  /// Create a copy of MenuBarViewState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MenuBarViewStateImplCopyWith<_$MenuBarViewStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
