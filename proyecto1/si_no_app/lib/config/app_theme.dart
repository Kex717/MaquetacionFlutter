import "package:flutter/material.dart";

const Color _customColor = Color(0xFF49149f);

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];

class AppTheme {
  static ThemeData theme() {
    return ThemeData(useMaterial3: true, colorSchemeSeed: _colorThemes[3]);
  }
}
