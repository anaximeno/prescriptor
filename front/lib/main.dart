import 'package:flutter/material.dart';
import 'package:front/infra/di.dart';
import 'package:get/get.dart';

import 'package:front/ui/pages/home/home_page.dart';
import 'package:front/ui/pages/login/login_page.dart';
import 'package:front/utils/utils.dart';

import './ui/theming.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    dependencyInjection();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Theming.appTheme,
      title: Constants.APPBAR_TITLE,
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(),
        '/': (context) => HomePage(),
      },
    );
  }
}
