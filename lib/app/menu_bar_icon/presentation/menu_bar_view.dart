import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:focus_mate/app/menu_bar_icon/notifiers/menu_bar_view_notifier.dart';
import 'package:focus_mate/app/pigeon/popover.dart';

class MenuBarView extends ConsumerWidget {
  const MenuBarView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(menuBarNotifierProvider);

    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: InkWell(
          autofocus: true,
          borderRadius: BorderRadius.circular(4),
          focusColor: Theme.of(context).primaryColor,
          onTap: () {
            PopOverAPI().togglePopOver();
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: Builder(builder: (context) {
              final duration = state.duration;
              return Text(
                '${duration.inMinutes.toString().padLeft(2, '0')}:${(duration.inSeconds.remainder(60).toString().padLeft(2, '0'))}',
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
