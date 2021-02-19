import 'package:flutter/material.dart';

abstract class PrimaryTheme {
  PrimaryTheme._();

  static ThemeData generateTheme(BuildContext context) {
    return ThemeData(
      brightness: Brightness.light,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        textTheme: TextTheme(
            title: TextStyle(
          color: Colors.black,
          fontSize: 22.0,
          fontFamily: 'Arial',
          fontWeight: FontWeight.bold,
        )),
        iconTheme: IconThemeData(color: Colors.black),
      ),
    );
  }
}
