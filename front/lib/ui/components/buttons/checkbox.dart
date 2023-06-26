import 'package:flutter/material.dart';

class CheckboxExample extends StatefulWidget {
  const CheckboxExample({super.key});

  @override
  State<CheckboxExample> createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {

    return Checkbox(
      checkColor: Colors.white,
      focusColor: Colors.lightBlueAccent,
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}
