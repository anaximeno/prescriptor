import 'package:flutter/material.dart';
import 'package:front/domain/entities/entities.dart';
import 'package:front/domain/repositories/login.dart';
import 'package:front/ui/pages/home/home_page.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final Rx<UserEntity?> _loginUser = Rx(null);

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  UserEntity? get loginUser => _loginUser.value;

  set loginUser(UserEntity? value) => _loginUser.value = value;

  LoginRepository loginRepository;

  LoginController(this.loginRepository);

  void onSubmit() async {
    debugPrint('username: ${usernameController.text}');
    debugPrint('password: ${passwordController.text}');

    if (usernameController.text != '' && passwordController.text != '') {
      try {
        loginUser = await loginRepository.login(
          username: usernameController.text,
          password: passwordController.text,
        );

        Get.to(HomePage());

        usernameController.clear();
        passwordController.clear();
      } catch (e) {
        debugPrint(e.toString());
      }
    }
  }
}
