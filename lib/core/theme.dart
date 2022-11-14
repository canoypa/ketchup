import 'package:flutter/material.dart';
import 'package:ketchup/core/constant.dart';

ThemeData createTheme(ThemeMode mode) {
  return ThemeData(
    useMaterial3: true,
    colorSchemeSeed: appBrandColor,
    brightness: mode == ThemeMode.dark ? Brightness.dark : Brightness.light,
  );
}

ThemeData appLightTheme = createTheme(ThemeMode.light);
ThemeData appDarkTheme = createTheme(ThemeMode.dark);
