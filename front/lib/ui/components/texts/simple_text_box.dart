import 'package:flutter/material.dart';
import 'package:front/utils/constants.dart';

class SimpleTextBox extends StatelessWidget {
  final double _contentHeight = 37;

  final String nameText;
  final String info;
  final  bool isBig;

  const SimpleTextBox({
    super.key,
    required this.nameText,
    required this.info,
    this.isBig = false

  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: isBig ? 60 : _contentHeight,
          child: Row(
            children: [
              Padding(
                padding:  const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                    nameText,
                style: TextStyle(fontSize: 15,color: Colors.black),
                ),
              ),
              Text(
                info,
                style: TextStyle(fontSize: 15,color: Color(Constants.DEFAULT_GREY)),
              ),
            ]
          )
      ),
    );
  }
}
