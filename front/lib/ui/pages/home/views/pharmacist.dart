//TODO: Make a prescription validate button and verification

import 'package:flutter/material.dart';
import 'package:front/ui/components/buttons/big_button.dart';
import 'package:front/ui/components/texts/title_text.dart';
import 'package:front/ui/pages/home/components/sidebar.dart';
import 'package:front/ui/pages/home/components/simple_search_bar.dart';
import 'package:front/utils/constants.dart';

class Pharmacist extends StatelessWidget {
  const Pharmacist({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Container(padding: EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(child: Container(child: TitleText(title: Constants.DASHBOARD, color: Colors.black))),

                SimpleSearchBar(),

                BigButton(text: Constants.PRESCRIPTION_SEARCH, buttonColor: Colors.white, textColor: Colors.black),
                BigButton(text: Constants.PRESCRIPTION_VALIDATE, buttonColor: Color(Constants.DEFAULT_BLUE), textColor: Colors.white),
              ],
            ),
          ),
          Expanded(child: Container(color: Color(Constants.DEFAULT_BLUE),
              padding: EdgeInsets.fromLTRB(20.0,20.0,20.0,0),
              child: Card(elevation:5,
                  child: Column(//TODO: Show basic info
                    children: [

                    ],
                  ) // If press create prescription
              ))),
        ]);
  }
}
