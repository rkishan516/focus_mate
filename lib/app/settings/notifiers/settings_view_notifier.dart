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
    ref.listenSelf(onStateChange);

    SettingsConfig config = ref.read(settingsRepositoryProvider).getConfig() ??
        SettingsConfig(
          focusDuration: 25.minutes,
          restDuration: 5.minutes,
          longRestDuration: 30.minutes,
        );

    return SettingsViewState(
      focusDuration: config.focusDuration,
      restDuration: config.restDuration,
      longRestDuration: config.longRestDuration,
    );
  }

  void onStateChange(SettingsViewState? prevState, SettingsViewState newState) {
    final updatedConfig = SettingsConfig(
      focusDuration: newState.focusDuration,
      restDuration: newState.restDuration,
      longRestDuration: newState.longRestDuration,
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
}
