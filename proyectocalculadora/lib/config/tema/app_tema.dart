import "package:flutter/material.dart";

// const Color _customColor = Color(0xFF49149f);

// const List<Color> _colorThemes = [
//   _customColor,
//   Colors.blue,
//   Colors.teal,
//   Colors.green,
//   Colors.yellow,
//   Colors.orange,
//   Colors.pink,
// ];



class AppTheme {
  static ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: _customColor,
        primary: _customColor,
        secondary: _secondaryColor,
        tertiary: _tertiaryColor,
        
      ),
    );
  }

  static const Color _customColor = Color.fromARGB(255, 249, 243, 249); 
  static const Color _secondaryColor = Color.fromARGB(255, 240, 242, 177); 
  static const Color _tertiaryColor = Color.fromARGB(255, 144, 152, 54); 
}