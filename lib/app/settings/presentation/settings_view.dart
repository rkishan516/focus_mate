import 'package:duration_picker/duration_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:focus_mate/app/settings/notifiers/settings_view_notifier.dart';

class SettingsView extends ConsumerWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(settingsNotifierProvider);
    final notifier = ref.watch(settingsNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  children: [
                    SettingDurationCard(
                      duration: state.focusDuration,
                      icon: '🧘‍♂️',
                      title: 'Focus Duration',
                      onDurationChanged: notifier.updateFocusDuration,
                    ),
                    SettingDurationCard(
                      duration: state.restDuration,
                      icon: '😴',
                      title: 'Rest Duration',
                      onDurationChanged: notifier.updateRestDuration,
                    ),
                    SettingDurationCard(
                      duration: state.longRestDuration,
                      icon: '💤',
                      title: 'Long Rest Duration',
                      onDurationChanged: notifier.updateLongRestDuration,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SettingDurationCard extends StatelessWidget {
  const SettingDurationCard({
    super.key,
    required this.duration,
    required this.icon,
    required this.title,
    required this.onDurationChanged,
  });
  final Duration duration;
  final String icon;
  final String title;
  final Function(Duration)? onDurationChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        final updatedDuration = await showDurationPicker(
          context: context,
          initialTime: duration,
        );
        if (updatedDuration == null) return;
        onDurationChanged?.call(updatedDuration);
      },
      child: Card(
        color: Theme.of(context).colorScheme.secondary,
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Theme.of(context).colorScheme.onSecondary,
            child: Text(
              icon,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          title: Text(
            title,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          trailing: Text(
            '${duration.inMinutes.toString().padLeft(2, '0')}:${(duration.inSeconds.remainder(60).toString().padLeft(2, '0'))}',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
      ),
    );
  }
}
