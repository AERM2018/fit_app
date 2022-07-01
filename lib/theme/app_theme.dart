import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData getLightAppTheme() {
    const Color primary = Colors.orange;
    return ThemeData.light().copyWith(
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            unselectedItemColor: Colors.grey,
            elevation: 15,
            selectedItemColor: primary));
  }

  static const TextStyle h1w =
      TextStyle(fontSize: 45, color: Colors.white, fontWeight: FontWeight.bold);
  static const TextStyle h3w =
      TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold);
  static const TextStyle h4w =
      TextStyle(fontSize: 15, color: Colors.grey, fontWeight: FontWeight.w300);
  static const TextStyle h1b =
      TextStyle(fontSize: 45, color: Colors.black, fontWeight: FontWeight.bold);
  static const TextStyle h3b =
      TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold);
  static const TextStyle h4b =
      TextStyle(fontSize: 15, color: Colors.grey, fontWeight: FontWeight.w300);
}
