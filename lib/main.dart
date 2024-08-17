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
    return MaterialApp.router(
      title: 'Quick Find',
      theme: getThemeData(Brightness.light),
      darkTheme: getThemeData(Brightness.dark),
      routerConfig: routers,
    );
  }
}
