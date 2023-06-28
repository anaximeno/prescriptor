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
    this.backgroundColor = const Color(0xFF7FB8D6),
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.all(8.0),
      width: width,
      height: 35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: backgroundColor,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: null,
          //minimumSize: const Size(80, 30),
          elevation: 10
        ),
        child: Text(text, style: const TextStyle(color: Colors.white, fontSize: 15)),
      ),
    );
  }
}
