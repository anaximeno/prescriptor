import 'package:flutter/material.dart';

class BigButton extends StatelessWidget {
  final String text;
  final Color buttonColor;
  final Color textColor;
  final void Function()? onPressed;

  const BigButton({
    super.key,
    required this.text,
    required this.buttonColor,
    required this.textColor,
    this.onPressed
  });



  @override
  Widget build(BuildContext context) {
  return SizedBox(
    height: 60,
    width: 170,
    child: TextButton(
      onPressed: onPressed,
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
            color: buttonColor,
        borderRadius: BorderRadius.circular(4.0),
        ),
        child: Text(text, style: TextStyle(color: textColor, fontSize: 15)),
      ),
    ),
  );
  }
}
