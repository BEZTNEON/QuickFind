import 'package:flutter/material.dart';

ThemeData getThemeData(ColorScheme? dynamicColor, Brightness brightness) {
  final colorScheme = _getColorScheme(dynamicColor, brightness);

  return ThemeData(
    colorScheme: colorScheme,
    useMaterial3: true,
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: colorScheme.onInverseSurface,
    ),
  );
}

ColorScheme _getColorScheme(ColorScheme? dynamicColor, Brightness brightness) {
  final defaultColorScheme = ColorScheme.fromSeed(
    seedColor: Colors.blueAccent,
    brightness: brightness,
  );

  return dynamicColor ?? defaultColorScheme;
}
