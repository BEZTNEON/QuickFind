import 'package:flutter/material.dart';

ThemeData getThemeData(Brightness brightness) {
  final colorScheme = ColorScheme.fromSeed(
    seedColor: Colors.blueAccent,
    brightness: brightness,
  );

  return ThemeData(
    colorScheme: colorScheme,
    useMaterial3: true,
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: colorScheme.onInverseSurface,
    ),
  );
}
