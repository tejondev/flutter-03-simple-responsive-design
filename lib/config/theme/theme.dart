import 'package:flutter/material.dart';

class AppTheme {
  ThemeData myTheme() {
    return ThemeData(
      colorSchemeSeed: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      brightness: Brightness.dark,
    );
  }
}
