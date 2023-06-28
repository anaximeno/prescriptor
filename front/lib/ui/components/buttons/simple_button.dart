import 'package:flutter/material.dart';

class SimpleButton extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final Color enabledColor;
  final Color disabledColor;
  final Color textEnabledColor;
  final Color textDisabledColor;

  final void Function()? onPressed;

  const SimpleButton({
    super.key,
    required this.text,
    required this.width,
    this.onPressed,
    this.height = 35,
    this.enabledColor = const Color(0xFF0DA0F0),
    this.disabledColor = const Color(0xFF729BB1),
    this.textEnabledColor = const Color(0xFFFFFFFF),
    this.textDisabledColor = const Color(0xFFA7A7A7),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8.0),
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: onPressed != null ? enabledColor : disabledColor,
        ),
        child: TextButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(
              color: onPressed != null ? textEnabledColor : textDisabledColor,
              fontSize: 15,
            ),
          ),
        ));
  }
}
