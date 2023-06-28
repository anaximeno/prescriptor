import 'package:flutter/material.dart';
import 'package:front/ui/pages/login/components/login_title_section.dart';
import 'package:front/ui/pages/login/components/login_section.dart';
import 'package:front/utils/constants.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 7,
          child: Container(
            color: Colors.lightBlueAccent,
            child: LoginTitleSection(
              title: Constants.APPBAR_TITLE,
              subtitle: Constants.APP_DESCRIPTION,
            ),
          ),
        ),
        const Expanded(
          flex: 3,
          child: LoginSection(),
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.blueAccent,
          ),
        ),
      ],
    );
  }
}
