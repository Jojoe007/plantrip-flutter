import 'package:flutter/material.dart';

ThemeData defualtTheme() {
  return ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.lightGreen,
    fontFamily: 'Anuphan',
    textTheme: const TextTheme(
        displayLarge: TextStyle(fontSize: 57, fontWeight: FontWeight.bold),
        displayMedium: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
        displaySmall: TextStyle(
          color: Colors.black,
          fontSize: 36,
          fontWeight: FontWeight.w700,
        ),
        // Title
        titleLarge: TextStyle(
          fontSize: 22,
          wordSpacing: 1.6,
          letterSpacing: 0,
          fontWeight: FontWeight.w600,
        ),
        titleMedium: TextStyle(
          fontSize: 16,
          wordSpacing: 1.6,
          letterSpacing: 0.15,
          fontWeight: FontWeight.w600,
          height: 1.4,
        ),
        titleSmall: TextStyle(
          fontSize: 14,
          wordSpacing: 1.6,
          letterSpacing: 0.1,
          fontWeight: FontWeight.w600,
          // height: 1,
        ),
        //Lebel

        labelLarge: TextStyle(
          fontSize: 14,
          wordSpacing: 1.6,
          letterSpacing: 0.1,
          fontWeight: FontWeight.w500,
          height: 1.4,
        ),
        labelMedium: TextStyle(
          fontSize: 12,
          wordSpacing: 1.6,
          letterSpacing: 0.5,
          fontWeight: FontWeight.w500,
          height: 1.2,
        ),
        labelSmall: TextStyle(
          fontSize: 11,
          wordSpacing: 1.6,
          letterSpacing: 0.4,
          fontWeight: FontWeight.w500,
          height: 1,
        ),

        // Body
        bodyLarge: TextStyle(
          color: Colors.black,
          fontSize: 16.0,
        ),
        bodyMedium: TextStyle(
          color: Colors.black,
          fontSize: 14.0,
        ),
        bodySmall: TextStyle(
            color: Colors.black,
            fontSize: 12,
            wordSpacing: 1.6,
            letterSpacing: 0.4,
            fontWeight: FontWeight.w300,
            overflow: TextOverflow.clip)),
  );
}

ThemeData darkTheme() {
  return ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.lightBlue,
    fontFamily: 'Anuphan',
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
      titleLarge: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
      bodyMedium: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
    ),
  );
}
