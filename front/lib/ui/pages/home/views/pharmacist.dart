//TODO: Make a prescription validate button and verification

import 'package:flutter/material.dart';
import 'package:front/ui/pages/home/components/side_bar.dart';

class Pharmacist extends StatelessWidget {
  const Pharmacist({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(flex: 2, child: SideBar()), // TODO: remove pacient icon from pharmacist

      Expanded( flex: 10,
        child: Column(
            children: [
              Placeholder(),
            ]),
      ),
    ]);
  }
}
