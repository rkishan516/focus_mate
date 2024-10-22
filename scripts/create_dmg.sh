#!/bin/sh
test -f focusmate.dmg && rm focusmate.dmg
create-dmg \
  --volname "FocusMate Installer" \
  --volicon "./assets/focusmate_installer.icns" \
  --window-pos 200 120 \
  --window-size 800 530 \
  --icon-size 130 \
  --text-size 14 \
  --icon "focus_mate.app" 260 250 \
  --hide-extension "focus_mate.app" \
  --app-drop-link 540 250 \
  --hdiutil-quiet \
  "build/macos/Build/Products/Release/FocusMate.dmg" \
  "build/macos/Build/Products/Release/focus_mate.app"