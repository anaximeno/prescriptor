import 'package:flutter/material.dart';
import 'package:front/ui/components/components.dart';
import 'package:front/ui/theming.dart';
import 'package:front/utils/constants.dart';

class LoginSection extends StatelessWidget {
  final TextEditingController usernameController;
  final TextEditingController passwordController;
  final void Function() onSubmit;

  const LoginSection({
    super.key,
    required this.onSubmit,
    required this.usernameController,
    required this.passwordController,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Card(
        elevation: 10,
        color: Colors.grey.shade50,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: Text(
                Constants.LOGIN_RECEPTION,
                style: const TextStyle(
                  fontSize: 20,
                  color: Theming.colorKindaGrey,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Center(
              child: Container(
                height: 3,
                width: 40,
                color: Theming.colorLightBlue,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 0,
              ),
              child: Column(
                children: [
                  SimpleInputForm(
                    enabled: true,
                    controller: usernameController,
                    labelText: Constants.BLANK,
                    hint: Constants.LOGIN_EMAIL_HINT,
                    width: 230,
                    inputWidth: 215,
                  ),
                  SimpleInputForm(
                    enabled: true,
                    controller: passwordController,
                    labelText: Constants.BLANK,
                    hint: Constants.PASSWORD_HINT,
                    width: 230,
                    inputWidth: 215,
                  ),
                ],
              ),
            ),
            SimpleButton(
              onPressed: onSubmit,
              text: Constants.LOGIN_BUTTON,
              width: 100,
            ),
          ],
        ),
      ),
    );
  }
}
