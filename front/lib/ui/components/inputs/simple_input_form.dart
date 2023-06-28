import 'package:flutter/material.dart';
import 'package:front/utils/constants.dart';

class SimpleInputForm extends StatelessWidget {
  final double _height = 37;
  final String labelText;
  final String? hint;
  final double inputWidth;
  final double width;
  final bool isBig;
  final bool enabled;

  final TextEditingController? controller;

  const SimpleInputForm({
    super.key,
    this.controller,
    required this.labelText,
    required this.hint,
    required this.width,
    required this.inputWidth,
    required this.enabled,
    this.isBig = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: isBig ? 60 : _height,
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
                color: const Color.fromARGB(255, 213, 236, 255),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: TextField(
                  enabled: enabled,
                  controller: controller,
                  obscureText: hint == Constants.PASSWORD_HINT,
                  maxLines:
                      hint == Constants.MEDICINE_OBSERVATION_HINT ? null : 1,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(
                      bottom: _height / 2,
                    ),
                    border: InputBorder.none,
                    hintText: hint,
                    hintStyle: const TextStyle(
                      fontSize: 15,
                      color: Color.fromRGBO(138, 138, 138, 1),
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
