import 'package:fitter/styles/theme_changer.dart';
import 'package:flutter/material.dart';
import 'styles/color_schemes.g.dart';
import 'styles/typography.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ThemeState(
      mode: ThemeMode.system,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: lightColorScheme,
          textTheme: textTheme,
        ),
        darkTheme: ThemeData(
          useMaterial3: true,
          colorScheme: darkColorScheme,
          textTheme: textTheme,
        ),
        themeMode: ThemeState.of(context)?.mode,
        home: const Scaffold(),
      ),
    );
  }
}
