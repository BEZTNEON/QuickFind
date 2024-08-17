import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';

import 'services/router.dart';
import 'services/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(
        builder: (ColorScheme? lightDynamic, ColorScheme? darkDynamic) {
      return MaterialApp.router(
        title: 'Quick Find',
        theme: getThemeData(lightDynamic, Brightness.light),
        darkTheme: getThemeData(darkDynamic, Brightness.dark),
        routerConfig: routers,
      );
    });
  }
}
