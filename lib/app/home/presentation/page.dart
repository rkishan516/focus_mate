import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:focus_mate/app/common/notifiers/theme_mode_notifier.dart';
import 'package:focus_mate/app/home/notifiers/page_notifier.dart';
import 'package:focus_mate/app/home/state/page_state.dart';
import 'package:focus_mate/app/routes/notifiers/app_router.dart';
import 'package:focus_mate/app/settings/notifiers/settings_view_notifier.dart';
import 'package:supercharged/supercharged.dart';

part 'theme_switcher.dart';
part 'reset_timer.dart';
part 'popup_menu.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homePageState = ref.watch(homePageNotifierProvider);
    final notifier = ref.watch(homePageNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            exit(0);
          },
          child: Icon(
            Icons.cancel,
            color: Theme.of(context).disabledColor,
          ),
        ),
        actions: [
          _ResetTimerButton(),
          const _ThemeSwitcher(),
          _PopupMenu(),
          const SizedBox(width: 15),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                homePageState.durationType == DurationType.focus
                    ? 'Focus Mate'
                    : 'Rest Time Mate',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 10),
              Builder(builder: (context) {
                final duration = homePageState.runningDuration;
                return Text(
                  '${duration.inMinutes.toString().padLeft(2, '0')}:${(duration.inSeconds.remainder(60).toString().padLeft(2, '0'))}',
                  style: Theme.of(context).textTheme.displayLarge,
                );
              }),
              const SizedBox(height: 10),
              Container(
                width: 100,
                height: 6,
                decoration: BoxDecoration(
                  color: Theme.of(context).splashColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                alignment: Alignment.centerLeft,
                child: FractionallySizedBox(
                  widthFactor: min(
                      1,
                      (homePageState.runningDuration /
                          switch (homePageState.durationType) {
                            DurationType.focus => ref.watch(
                                settingsNotifierProvider
                                    .select((value) => value.focusDuration)),
                            DurationType.rest => ref.watch(
                                settingsNotifierProvider
                                    .select((value) => value.restDuration)),
                            DurationType.longRest => ref.watch(
                                settingsNotifierProvider
                                    .select((value) => value.longRestDuration)),
                          })),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              IconButton(
                autofocus: true,
                focusColor: Theme.of(context).primaryColor.withOpacity(0.2),
                onPressed: homePageState.running
                    ? notifier.stopTimer
                    : notifier.startTimer,
                icon: Icon(
                  homePageState.running
                      ? Icons.pause
                      : Icons.play_arrow_outlined,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
