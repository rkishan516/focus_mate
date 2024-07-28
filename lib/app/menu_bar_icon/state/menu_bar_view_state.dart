import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_bar_view_state.freezed.dart';

@freezed
class MenuBarViewState with _$MenuBarViewState {
  const factory MenuBarViewState({
    required Duration duration,
  }) = _MenuBarViewState;
}
