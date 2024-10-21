part of 'page.dart';

enum _PopupItemType {
  stats,
  settings,
}

class _PopupMenu extends StatelessWidget {
  const _PopupMenu();

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<_PopupItemType>(
      onSelected: (value) {
        switch (value) {
          case _PopupItemType.stats:
            StatsPageRoute().go(context);
            break;
          case _PopupItemType.settings:
            SettingsPageRoute().go(context);
        }
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<_PopupItemType>>[
        const PopupMenuItem<_PopupItemType>(
          value: _PopupItemType.stats,
          child: Text('Stats'),
        ),
        const PopupMenuItem<_PopupItemType>(
          value: _PopupItemType.settings,
          child: Text('Settings'),
        ),
      ],
    );
  }
}
