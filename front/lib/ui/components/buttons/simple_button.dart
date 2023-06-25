import 'package:flutter/material.dart';

class SimpleButton extends StatelessWidget {
  final String text;
  final double width;
  final Color backgroundColor;
  final void Function()? onPressed;

  const SimpleButton({
    super.key,
    required this.text,
    required this.width,
    this.backgroundColor = const Color(0xFF81D4FA),
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          minimumSize: const Size(80, 30),
        ),
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
