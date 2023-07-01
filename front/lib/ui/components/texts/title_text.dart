import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final String title;
  final Color color;
  final double padding;
  final double fontSize;

  const TitleText({
    super.key,
    required this.title,
    required this.color,
    this.padding = 3,
    this.fontSize = 24,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: fontSize,
          color: color,
        ),
      ),
    );
  }
}
