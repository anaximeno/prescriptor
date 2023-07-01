import 'package:flutter/material.dart';
import 'package:front/ui/theming.dart';

class LoginTitleSection extends StatelessWidget {
  final String title;
  final String? subtitle;

  const LoginTitleSection({
    super.key,
    required this.title,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 50,
            color: Theming.colorWhiteLike,
            decoration: TextDecoration.none,
          ),
        ),
        if (subtitle != null) ...{
          const SizedBox(
            height: 16,
          ),
          Text(
            subtitle!,
            style: const TextStyle(
              fontSize: 18,
              color: Theming.colorWhiteLike,
              decoration: TextDecoration.none,
            ),
          ),
        }
      ],
    );
  }
}
