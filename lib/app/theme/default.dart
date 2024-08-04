import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

class DefaultTheme {
  static ThemeData get dark {
    final flexTheme = FlexThemeData.dark(
      scheme: FlexScheme.blueM3,
      useMaterial3: true,
    );

    // Add any other customizations (which cannot be set in the FlexThemeData.dark constructor) here
    return flexTheme.copyWith(
      dividerColor: Colors.grey[800],
    );
  }

  static ThemeData get light {
    final flexTheme = FlexThemeData.light(
      scheme: FlexScheme.blueM3,
      useMaterial3: true,
    );

    // Add any other customizations (which cannot be set in the FlexThemeData.light constructor) here
    return flexTheme.copyWith(
      dividerColor: Colors.grey[300],
    );
  }
}
