import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:front/pages/homePage/components/prescription.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme _MyTextTheme = TextTheme(
      displayLarge: GoogleFonts.roboto(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: GoogleFonts.roboto(
        fontSize: 16,
        fontWeight: FontWeight.normal
      ),
      //add more if needed
    );

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: _MyTextTheme,
      ),
      home: const Prescription()
    );
  }
}


