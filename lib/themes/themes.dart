import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: Colors.blue,
    hintColor: Colors.orange,
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Roboto',
    textTheme: const TextTheme(
      headline1: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      headline2: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      subtitle1: TextStyle(
        fontSize: 16,
        color: Colors.grey,
      ),
      bodyText1: TextStyle(
        fontSize: 14,
        color: Colors.black,
      ),
      bodyText2: TextStyle(
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
        headline6: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ).bodyText2,
      titleTextStyle: const TextTheme(
        headline6: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ).headline6,
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
      headline1: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      headline2: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      subtitle1: TextStyle(
        fontSize: 16,
        color: Colors.grey,
      ),
      bodyText1: TextStyle(
        fontSize: 14,
        color: Colors.white,
      ),
      bodyText2: TextStyle(
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
        headline6: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ).bodyText2,
      titleTextStyle: const TextTheme(
        headline6: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ).headline6,
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
