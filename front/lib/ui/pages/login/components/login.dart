import 'package:flutter/material.dart';
import 'package:front/ui/components/components.dart';
import 'package:front/utils/constants.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Card(
        elevation: 10,
        color: Colors.grey.shade50,
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //TODO: ADD SOME IMAGE ON TOP OF LOGIN
              Flexible(child: Text(Constants.LOGIN_RECEPTION, style: TextStyle(fontSize: 20, color: Colors.black))),

              SizedBox(height: 20),
              Center(child: Container(height: 3, width: 40, color: Color(0xFF81D4FA))),
              SizedBox(height: 20),

              SimpleInputForm(labelText: Constants.BLANK, hint: Constants.LOGIN_EMAIL_HINT, width: 230, inputWidth: 215),
              SimpleInputForm(labelText: Constants.BLANK, hint: Constants.LOGIN_PASSWORD_HINT, width: 230, inputWidth: 215),

              SizedBox(height: 20),

              SimpleButton(text: Constants.LOGIN_BUTTON, width: 100),
            ],
          ),
        ),
      ),
    );
  }
}
