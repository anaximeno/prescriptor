import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class Theming {
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

  static final ThemeData appTheme = ThemeData(
    primarySwatch: Colors.blue,
    textTheme: textTheme,
  );
}
