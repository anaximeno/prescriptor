import 'package:flutter/material.dart';
import 'package:front/ui/pages/home/home_page.dart';
import 'package:front/ui/pages/login/login_page.dart';
import './ui/theming.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prescriptor',
      routes: {
        '/login': (context) => const LoginPage(),
        '/': (context) => const HomePage(),
      },
      debugShowCheckedModeBanner: false,
      theme: Theming.appTheme,
    );
  }
}
