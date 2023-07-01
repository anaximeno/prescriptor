import 'package:flutter/material.dart';
import 'package:front/ui/pages/home/components/register_pacient.dart';

import 'package:front/ui/theming.dart';
import 'package:front/utils/constants.dart';

class Receptionist extends StatelessWidget {
  const Receptionist({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      // Container(
      //   padding: EdgeInsets.all(10.0),
      //   child: Row(
      //     children: [
      //       Expanded(
      //         child: Container(
      //           child: TitleText(
      //             title: Constants.DASHBOARD,
      //             color: Colors.black,
      //           ),
      //         ),
      //       ),

      //       // SimpleSearchBar(),

      //       //BigButton(text: Constants.PRESCRIPTION_SEARCH, buttonColor: Colors.white, textColor: Colors.black),
      //       BigButton(
      //           text: Constants.PRESCRIPTION_CREATE,
      //           buttonColor: Color(Constants.DEFAULT_BLUE),
      //           textColor: Colors.white),
      //     ],
      //   ),
      // ),
      Expanded(
        child: Container(
          color: Theming.colorBasicBlue,
          child: RegisterPacient(
            goal: Constants.INSERT_BUTTON,
            writeEnable: true,
          ),
        ),
      ),
    ]);
  }
}
