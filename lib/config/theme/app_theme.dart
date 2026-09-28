import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.yellow,
  Colors.pink
];

class AppTheme {

  ThemeData themeData(){
    return ThemeData(
      colorSchemeSeed: colorList[5],
      appBarTheme: AppBarTheme(
        backgroundColor: colorList[5],
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 32
        ),
      ),
      textTheme: TextTheme(
        displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        displayMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        displaySmall: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        titleLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        bodyLarge: TextStyle(fontSize: 16),
        bodyMedium: TextStyle(fontSize: 14),
        bodySmall: TextStyle(fontSize: 12),
      ),
      brightness: Brightness.dark
    );
  }
}