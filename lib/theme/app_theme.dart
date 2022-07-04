import 'package:flutter/material.dart';

class AppTheme {
  static const primary = Colors.orange;
  static ThemeData getLightAppTheme() {
    const Color primary = Colors.orange;
    const Color secondary = Colors.black;
    return ThemeData.light().copyWith(
        appBarTheme: const AppBarTheme(
            backgroundColor: secondary,
            actionsIconTheme: IconThemeData(color: primary),
            elevation: 0),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            unselectedItemColor: Colors.grey,
            elevation: 15,
            selectedItemColor: primary),
        scaffoldBackgroundColor: Colors.grey[300]);
  }

  static const TextStyle h1w =
      TextStyle(fontSize: 70, color: Colors.white, fontWeight: FontWeight.bold);
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
