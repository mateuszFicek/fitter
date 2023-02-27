import 'package:flutter/material.dart';

class ThemeState extends InheritedWidget {
  final ThemeMode mode;

  const ThemeState({Key? key, required this.mode, child})
      : super(key: key, child: child);

  static ThemeState? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ThemeState>();
  }

  @override
  bool updateShouldNotify(ThemeState oldWidget) {
    return mode != oldWidget.mode;
  }
}
