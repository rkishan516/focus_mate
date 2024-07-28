import 'package:flutter/services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:focus_mate/app/menu_bar_icon/state/menu_bar_view_state.dart';
import 'package:supercharged/supercharged.dart';

part 'menu_bar_view_notifier.g.dart';

@riverpod
class MenuBarNotifier extends _$MenuBarNotifier {
  static const BasicMessageChannel _menuBarStateChannel = BasicMessageChannel(
      'com.pinnaclelabs/menu_bar_state', StandardMessageCodec());
  @override
  MenuBarViewState build() {
    _menuBarStateChannel.setMessageHandler((message) async {
      state = state.copyWith(duration: (message as int).seconds);
      return true;
    });
    return MenuBarViewState(duration: 25.minutes);
  }
}
