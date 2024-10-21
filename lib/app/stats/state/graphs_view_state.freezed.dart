// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'graphs_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GraphsViewState {
  Map<DateTime, (int, int, int)> get data => throw _privateConstructorUsedError;

  /// Create a copy of GraphsViewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GraphsViewStateCopyWith<GraphsViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GraphsViewStateCopyWith<$Res> {
  factory $GraphsViewStateCopyWith(
          GraphsViewState value, $Res Function(GraphsViewState) then) =
      _$GraphsViewStateCopyWithImpl<$Res, GraphsViewState>;
  @useResult
  $Res call({Map<DateTime, (int, int, int)> data});
}

/// @nodoc
class _$GraphsViewStateCopyWithImpl<$Res, $Val extends GraphsViewState>
    implements $GraphsViewStateCopyWith<$Res> {
  _$GraphsViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GraphsViewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, (int, int, int)>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GraphsViewStateImplCopyWith<$Res>
    implements $GraphsViewStateCopyWith<$Res> {
  factory _$$GraphsViewStateImplCopyWith(_$GraphsViewStateImpl value,
          $Res Function(_$GraphsViewStateImpl) then) =
      __$$GraphsViewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<DateTime, (int, int, int)> data});
}

/// @nodoc
class __$$GraphsViewStateImplCopyWithImpl<$Res>
    extends _$GraphsViewStateCopyWithImpl<$Res, _$GraphsViewStateImpl>
    implements _$$GraphsViewStateImplCopyWith<$Res> {
  __$$GraphsViewStateImplCopyWithImpl(
      _$GraphsViewStateImpl _value, $Res Function(_$GraphsViewStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GraphsViewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$GraphsViewStateImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, (int, int, int)>,
    ));
  }
}

/// @nodoc

class _$GraphsViewStateImpl implements _GraphsViewState {
  const _$GraphsViewStateImpl(
      {required final Map<DateTime, (int, int, int)> data})
      : _data = data;

  final Map<DateTime, (int, int, int)> _data;
  @override
  Map<DateTime, (int, int, int)> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  String toString() {
    return 'GraphsViewState(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GraphsViewStateImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of GraphsViewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GraphsViewStateImplCopyWith<_$GraphsViewStateImpl> get copyWith =>
      __$$GraphsViewStateImplCopyWithImpl<_$GraphsViewStateImpl>(
          this, _$identity);
}

abstract class _GraphsViewState implements GraphsViewState {
  const factory _GraphsViewState(
          {required final Map<DateTime, (int, int, int)> data}) =
      _$GraphsViewStateImpl;

  @override
  Map<DateTime, (int, int, int)> get data;

  /// Create a copy of GraphsViewState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GraphsViewStateImplCopyWith<_$GraphsViewStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
