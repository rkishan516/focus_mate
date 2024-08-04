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
        title: Text(
          'Settings',
          style: Theme.of(context).textTheme.titleLarge,
        ),
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
                    SettingToggleCard(
                      title: 'Automatically Start Focus',
                      enabled: state.automaticallyStartFocus,
                      onChanged: notifier.updateAutomaticallyStartFocus,
                    ),
                    const SizedBox(height: 8),
                    SettingDurationCard(
                      duration: state.focusDuration,
                      icon: '🧘‍♂️',
                      title: 'Focus Duration',
                      onDurationChanged: notifier.updateFocusDuration,
                    ),
                    const SizedBox(height: 8),
                    SettingToggleCard(
                      title: 'Automatically Start Rest',
                      enabled: state.automaticallyStartRest,
                      onChanged: notifier.updateAutomaticallyStartRest,
                    ),
                    const SizedBox(height: 8),
                    SettingDurationCard(
                      duration: state.restDuration,
                      icon: '😴',
                      title: 'Rest Duration',
                      onDurationChanged: notifier.updateRestDuration,
                    ),
                    const SizedBox(height: 8),
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
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      tileColor: Theme.of(context).colorScheme.secondary,
      onTap: () async {
        final updatedDuration = await showDurationPicker(
          context: context,
          initialTime: duration,
        );
        if (updatedDuration == null) return;
        onDurationChanged?.call(updatedDuration);
      },
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
    );
  }
}

class SettingToggleCard extends StatelessWidget {
  const SettingToggleCard({
    super.key,
    required this.enabled,
    required this.title,
    required this.onChanged,
  });
  final bool enabled;
  final String title;
  final Function(bool)? onChanged;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile.adaptive(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      tileColor: Theme.of(context).colorScheme.secondary,
      onChanged: onChanged,
      value: enabled,
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}
