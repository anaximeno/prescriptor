import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class Theming {
  // Text Themes

  static final TextTheme textTheme = TextTheme(
    displayLarge: GoogleFonts.roboto(
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    bodyLarge: GoogleFonts.roboto(
      fontSize: 16,
      fontWeight: FontWeight.normal,
    ),
  );

  // App Theme

  static final ThemeData appTheme = ThemeData(
    primarySwatch: Colors.blue,
    textTheme: textTheme,
  );

  // Colors

  static const Color colorLightBlue = Color(0xFF81D4FA);
  static const Color colorNiceBlue = Color(0xFF0DA0F0);
  static const Color colorDartherBlue = Color(0xFF5D8FC2);
  static const Color colorBasicBlue = Color(0xFF7FB8D6);
  static const Color colorWhiteLike = Color(0xFFEEEEFF);
}
