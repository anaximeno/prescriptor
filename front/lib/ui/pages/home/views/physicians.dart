import 'package:flutter/material.dart';
import 'package:front/ui/components/buttons/big_button.dart';
import 'package:front/ui/components/buttons/simple_button.dart';
import 'package:front/ui/components/texts/texts.dart';
import 'package:front/ui/pages/home/components/side_bar.dart';
import 'package:front/ui/pages/home/views/views.dart';
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
              Container(padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(child: Container(child: TitleText(title: Constants.DASHBOARD, color: Colors.black))),
                    
                    BigButton(text: Constants.PRESCRIPTION_CREATE, buttonColor: Colors.lightBlueAccent, textColor: Colors.white),
                    BigButton(text: Constants.PRESCRIPTION_SEARCH, buttonColor: Colors.white, textColor: Colors.black),
                  ],
                ),
              ),
              PrescriptionInsert(),
            ]),
      ),
    ]);
  }
}