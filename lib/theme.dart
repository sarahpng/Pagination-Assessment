import 'package:flutter/material.dart';

final ThemeData lightModeTheme = ThemeData(
  primaryColor: const Color(0xff5a45fe),
  cardColor: const Color(0xffedeef5),
  primaryTextTheme: const TextTheme(
    titleSmall: TextStyle(
      color: Colors.black,
      fontSize: 12,
      fontFamily: 'Poppins',
    ),
    titleMedium: TextStyle(
      color: Colors.black,
      fontSize: 13,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.bold,
    ),
    titleLarge: TextStyle(
      color: Colors.black,
      fontSize: 14,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.bold,
    ),
    labelMedium: TextStyle(
      color: Colors.white,
      fontFamily: 'Poppins',
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
  ),
);
