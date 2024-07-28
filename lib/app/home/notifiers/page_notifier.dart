import 'dart:async';

import 'package:flutter/services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:focus_mate/app/home/state/page_state.dart';
import 'package:supercharged/supercharged.dart';

part 'page_notifier.g.dart';

@riverpod
class HomePageNotifier extends _$HomePageNotifier {
  static const BasicMessageChannel _menuBarStateChannel = BasicMessageChannel(
      'com.pinnaclelabs/menu_bar_state', StandardMessageCodec());
  Timer? _timer;

  @override
  HomePageState build() {
    ref.listenSelf((prev, next) {
      _menuBarStateChannel.send(next.runningDuration.inSeconds);
    });
    ref.onDispose(() {
      _timer?.cancel();
    });
    return HomePageState(
      runningDuration: 25.minutes,
      running: false,
      durationType: DurationType.focus,
    );
  }

  void resetCurrentTimer() {
    stopTimer();
    state = state.copyWith(
      runningDuration:
          state.durationType == DurationType.rest ? 5.minutes : 25.minutes,
    );
  }

  void startTimer() {
    _timer?.cancel();
    state = state.copyWith(running: true);
    _timer = Timer.periodic(1.seconds, (timer) {
      if (state.runningDuration <= 0.seconds) {
        _stopTimerOnComplete();
        return;
      }
      state = state.copyWith(
        runningDuration: state.runningDuration - 1.seconds,
        running: true,
      );
    });
  }

  void _stopTimerOnComplete() {
    _timer?.cancel();
    state = state.copyWith(
      running: false,
      durationType: state.durationType == DurationType.focus
          ? DurationType.rest
          : DurationType.focus,
      runningDuration:
          state.durationType == DurationType.focus ? 5.minutes : 25.minutes,
    );
  }

  void stopTimer() {
    _timer?.cancel();
    state = state.copyWith(running: false);
  }
}
