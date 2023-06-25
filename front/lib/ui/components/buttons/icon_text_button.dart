import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconTextButton extends StatelessWidget {
  final double height;
  final double widht;
  final String name;
  final IconData icon;
  final Color color;
  
  IconTextButton({
    required this.name,
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
      child: TextButton.icon(onPressed: (){},
          icon: Icon(icon, color: color,),
          label: Text(name, style: TextStyle(fontSize: 18, color: color)),
      ),
    );
  }
}
