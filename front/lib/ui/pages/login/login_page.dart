import 'package:flutter/material.dart';
import 'package:front/ui/pages/login/components/login.dart';
import 'package:front/utils/constants.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(flex: 7, child: Container(color: Color(Constants.DEFAULT_BLUE))),
          Expanded(flex: 3, child: Login()),
          Expanded(flex: 2, child: Container(color: Color(Constants.DEFAULT_2_BLUE))),
        ],
      ),
    );
  }
}
