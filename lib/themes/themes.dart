import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: Colors.blue,
    hintColor: Colors.orange,
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Roboto',
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      displayMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        color: Colors.grey,
      ),
      bodyLarge: TextStyle(
        fontSize: 14,
        color: Colors.black,
      ),
      bodyMedium: TextStyle(
        fontSize: 12,
        color: Colors.black54,
      ),
    ),
    appBarTheme: AppBarTheme(
      color: Colors.white,
      elevation: 0,
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
      toolbarTextStyle: const TextTheme(
        titleLarge: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ).bodyMedium,
      titleTextStyle: const TextTheme(
        titleLarge: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ).titleLarge,
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.orange,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.grey.shade200,
      contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: BorderSide.none,
      ),
      hintStyle: const TextStyle(
        fontSize: 14,
        color: Colors.grey,
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: const Color.fromARGB(255, 0, 29, 53),
    hintColor: Colors.orange,
    scaffoldBackgroundColor: const Color.fromARGB(255, 21, 21, 21),
    fontFamily: 'Roboto',
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      displayMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        color: Colors.grey,
      ),
      bodyLarge: TextStyle(
        fontSize: 14,
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        fontSize: 12,
        color: Colors.white54,
      ),
    ),
    appBarTheme: AppBarTheme(
      color: const Color.fromARGB(255, 0, 29, 53),
      elevation: 0,
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
      toolbarTextStyle: const TextTheme(
        titleLarge: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ).bodyMedium,
      titleTextStyle: const TextTheme(
        titleLarge: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ).titleLarge,
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.orange,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.grey.shade800,
      contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: BorderSide.none,
      ),
      hintStyle: const TextStyle(
        fontSize: 14,
        color: Colors.grey,
      ),
    ),
  );
}
