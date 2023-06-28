import 'package:flutter/material.dart';
import 'package:front/domain/entities/entities.dart';
import 'package:front/ui/pages/home/home_page.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final Rx<UserEntity?> _loginUser = Rx(null);

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  UserEntity? get loginUser => _loginUser.value;

  set loginUser(UserEntity? value) => _loginUser.value = value;

  void onSubmit() {
    // TODO: authenticate user
    debugPrint('username: ${usernameController.text}');
    debugPrint('password: ${passwordController.text}');

    if (usernameController.text != '' && passwordController.text != '') {
      // XXX
      loginUser = UserEntity(
        username: usernameController.text,
      );

      Get.to(HomePage());

      usernameController.clear();
      passwordController.clear();
    }
  }
}
