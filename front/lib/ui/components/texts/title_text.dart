import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final String title;
  final Color color;
  const TitleText({
    super.key,
    required this.title,
    required this.color
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3.0),
      child: Text(title,style: TextStyle(
          fontSize: 24, color: color),),
    );
  }
}
