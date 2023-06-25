import 'package:flutter/material.dart';
import 'package:front/utils/constants.dart';

class SimpleInputForm extends StatelessWidget {
  final double _contentHeight = 37;

  final String labelText;
  final double inputWidth;
  final String hint;
  final double width;

  const SimpleInputForm({
    super.key,
    required this.labelText,
    required this.hint,
    required this.width,
    required this.inputWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: _contentHeight,
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
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextField(
                obscureText: hint == Constants.PASSWORD_HINT,
                maxLines: null,
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
            )
          ],
        ),
      ),
    );
  }
}
