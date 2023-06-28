import 'package:flutter/material.dart';
import 'package:front/utils/constants.dart';

class SimpleInputForm extends StatelessWidget {
  final double _contentHeight = 37;

  final String labelText;
  final double inputWidth;
  final String hint;
  final double width;
  final  bool isBig;
  final bool writeEnable;

  const SimpleInputForm({
    super.key,
    required this.labelText,
    required this.hint,
    required this.width,
    required this.inputWidth,
    required this.writeEnable,
    this.isBig = false

  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: isBig ? 60 : _contentHeight,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 5,
              ),
              child: Text(
                labelText,
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              width: inputWidth,
              padding: const EdgeInsets.only(
                left: 20.0,
              ),
              decoration: BoxDecoration(
                color: Color(Constants.DEFAULT_BLUE_LIGHT),//Colors.blue[100], //choose color
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: TextField(
                  enabled: writeEnable,
                  obscureText: hint == Constants.PASSWORD_HINT,
                  maxLines: hint == Constants.MEDICINE_OBSERVATION_HINT ? null : 1,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(
                      bottom: _contentHeight / 2,
                    ),
                    border: InputBorder.none,
                    hintText: hint,
                    hintStyle: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[500],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
