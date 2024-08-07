import 'dart:async';

import 'package:flutter/services.dart';
import 'package:focus_mate/app/pigeon/popover.dart';
import 'package:focus_mate/app/settings/notifiers/settings_view_notifier.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:focus_mate/app/home/state/page_state.dart';
import 'package:supercharged/supercharged.dart';

part 'page_notifier.g.dart';

@riverpod
class HomePageNotifier extends _$HomePageNotifier implements MenuBarActions {
  static const BasicMessageChannel _menuBarStateChannel = BasicMessageChannel(
    'com.pinnaclelabs/menu_bar_state',
    StandardMessageCodec(),
  );
  Timer? _timer;

  @override
  HomePageState build() {
    MenuBarActions.setUp(this);
    ref.listenSelf((prev, next) {
      _menuBarStateChannel.send(next.runningDuration.inSeconds);
    });
    ref.onDispose(() {
      _timer?.cancel();
    });
    return HomePageState(
      runningDuration: ref.read(settingsNotifierProvider).focusDuration,
      running: false,
      durationType: DurationType.focus,
    );
  }

  void resetCurrentTimer() {
    stopTimer();
    state = state.copyWith(
      durationType: DurationType.focus,
      running: false,
      runningDuration: ref.read(settingsNotifierProvider).focusDuration,
    );
  }

  Duration maxDuration() {
    return switch (state.durationType) {
      DurationType.focus => ref.read(settingsNotifierProvider).focusDuration,
      DurationType.rest => ref.read(settingsNotifierProvider).restDuration,
      DurationType.longRest =>
        ref.read(settingsNotifierProvider).longRestDuration,
    };
  }

  void startTimer() {
    _timer?.cancel();
    state = state.copyWith(running: true);
    _timer = Timer.periodic(1.seconds, (timer) {
      if (state.runningDuration <= 0.seconds) {
        _timerOnComplete();
        return;
      }
      if (state.runningDuration > maxDuration()) {
        state = state.copyWith(runningDuration: maxDuration());
      }
      state = state.copyWith(
        runningDuration: state.runningDuration - 1.seconds,
        running: true,
      );
    });
  }

  void _timerOnComplete() {
    _timer?.cancel();
    final settings = ref.read(settingsNotifierProvider);

    state = state.copyWith(
      running: false,
      durationType: switch (state.durationType) {
        DurationType.focus =>
          state.currentFocus == 4 ? DurationType.longRest : DurationType.rest,
        DurationType.rest => DurationType.focus,
        DurationType.longRest => DurationType.focus,
      },
      currentFocus: switch (state.durationType) {
        DurationType.focus => state.currentFocus,
        DurationType.rest => state.currentFocus + 1,
        DurationType.longRest => 0,
      },
      runningDuration: state.durationType == DurationType.focus
          ? settings.restDuration
          : settings.focusDuration,
    );
    bool autoStartTimer = state.durationType == DurationType.focus &&
        settings.automaticallyStartFocus;
    autoStartTimer = autoStartTimer ||
        state.durationType == DurationType.rest &&
            settings.automaticallyStartRest;
    if (autoStartTimer) {
      startTimer();
    }
  }

  void stopTimer() {
    _timer?.cancel();
    state = state.copyWith(running: false);
  }

  @override
  void toggleRunningTimer() {
    if (state.running) {
      stopTimer();
    } else {
      startTimer();
    }
  }
}
