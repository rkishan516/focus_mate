import 'package:focus_mate/app/settings/model/settings_config.dart';
import 'package:focus_mate/app/settings/repository/settings_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:focus_mate/app/settings/state/settings_view_state.dart';
import 'package:supercharged/supercharged.dart';

part 'settings_view_notifier.g.dart';

@riverpod
class SettingsNotifier extends _$SettingsNotifier {
  @override
  SettingsViewState build() {
    listenSelf(onStateChange);

    SettingsConfig config = ref.read(settingsRepositoryProvider).getConfig() ??
        SettingsConfig(
          focusDuration: 25.minutes,
          restDuration: 5.minutes,
          longRestDuration: 30.minutes,
          automaticallyStartFocus: false,
          automaticallyStartRest: false,
        );

    return SettingsViewState(
      focusDuration: config.focusDuration,
      restDuration: config.restDuration,
      longRestDuration: config.longRestDuration,
      automaticallyStartFocus: config.automaticallyStartFocus,
      automaticallyStartRest: config.automaticallyStartRest,
    );
  }

  void onStateChange(SettingsViewState? prevState, SettingsViewState newState) {
    final updatedConfig = SettingsConfig(
      focusDuration: newState.focusDuration,
      restDuration: newState.restDuration,
      longRestDuration: newState.longRestDuration,
      automaticallyStartFocus: newState.automaticallyStartFocus,
      automaticallyStartRest: newState.automaticallyStartRest,
    );
    ref.read(settingsRepositoryProvider).setConfig(updatedConfig);
  }

  void updateFocusDuration(Duration duration) {
    state = state.copyWith(focusDuration: duration);
  }

  void updateRestDuration(Duration duration) {
    state = state.copyWith(restDuration: duration);
  }

  void updateLongRestDuration(Duration duration) {
    state = state.copyWith(longRestDuration: duration);
  }

  void updateAutomaticallyStartFocus(bool value) {
    state = state.copyWith(automaticallyStartFocus: value);
  }

  void updateAutomaticallyStartRest(bool value) {
    state = state.copyWith(automaticallyStartRest: value);
  }
}
