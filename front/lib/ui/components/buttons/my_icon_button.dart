import 'package:flutter/material.dart';

// I don't think this is necessary
// Delete

class MyIconButton extends StatelessWidget {
  final double height;
  final double widht;
  final IconData icon;
  final Color color;

  MyIconButton({
    required this.icon,
    required this.color,
    required this.height,
    required this.widht
});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      height: height,
      width: widht,
      child: IconButton(onPressed: (){},
          icon: Icon(icon,color: color,)
      ),
    );
  }
}
