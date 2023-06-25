import 'package:flutter/material.dart';
import 'package:front/ui/pages/home/components/side_bar.dart';
import 'package:front/utils/constants.dart';

class Physicians extends StatelessWidget {
  const Physicians({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(flex: 2, child: SideBar()),

      Expanded( flex: 10,
          child: Column(
            children: [
              Placeholder(),
            ]),
      ),
    ]);
  }
}