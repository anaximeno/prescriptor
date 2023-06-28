import 'package:flutter/material.dart';
import 'package:front/domain/controllers/login.dart';
import 'package:front/ui/pages/login/components/login_title_section.dart';
import 'package:front/ui/pages/login/components/login_section.dart';
import 'package:front/ui/theming.dart';
import 'package:front/utils/constants.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  final LoginController controller = Get.find();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 7,
          child: Container(
            color: Theming.colorLightBlue,
            child: LoginTitleSection(
              title: Constants.APPBAR_TITLE,
              subtitle: Constants.APP_DESCRIPTION,
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: LoginSection(
            onSubmit: controller.onSubmit,
            usernameController: controller.usernameController,
            passwordController: controller.passwordController,
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: Theming.colorNiceBlue,
          ),
        ),
      ],
    );
  }
}
