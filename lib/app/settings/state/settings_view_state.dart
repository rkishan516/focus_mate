import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_view_state.freezed.dart';

@freezed
class SettingsViewState with _$SettingsViewState {
  const factory SettingsViewState({
    required Duration focusDuration,
    required Duration restDuration,
    required Duration longRestDuration,
    @Default(false) bool automaticallyStartFocus,
    @Default(false) bool automaticallyStartRest,
  }) = _SettingsViewState;
}
