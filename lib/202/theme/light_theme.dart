import 'package:flutter/material.dart';

class LightTheme {
  final _lightColor = _LightColor();
  late ThemeData theme;

  LightTheme() {
    theme = ThemeData(
        appBarTheme: AppBarTheme(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        scaffoldBackgroundColor: Colors.white,
        floatingActionButtonTheme:
            const FloatingActionButtonThemeData(backgroundColor: Colors.red),
        buttonTheme: ButtonThemeData(
            colorScheme: ColorScheme.light(
                onPrimary: Colors.purple, onSecondary: _lightColor.blueSea)),
        colorScheme: const ColorScheme.light(),
        checkboxTheme: const CheckboxThemeData(
            fillColor: MaterialStatePropertyAll(Colors.green),
            side: BorderSide(color: Colors.green)),
        textTheme: ThemeData.light().textTheme.copyWith(
                titleMedium: TextStyle(
              fontSize: 14,
              color: _lightColor._textColor,
            )));
  }
}

class _LightColor {
  final Color _textColor = const Color.fromARGB(255, 27, 25, 25);
  final Color blueSea = const Color.fromARGB(95, 188, 248, 1);
}
