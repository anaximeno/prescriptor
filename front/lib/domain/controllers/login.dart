import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void onSubmit() {
    debugPrint('username: ${usernameController.text}');
    debugPrint('password: ${passwordController.text}');
  }
}
