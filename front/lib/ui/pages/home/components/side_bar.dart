import 'package:flutter/material.dart';
import 'package:front/ui/components/buttons/icon_text_button.dart';
import 'package:front/utils/constants.dart';

class SideBar extends StatelessWidget {
  const SideBar
({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
            Container(padding: EdgeInsets.all(5.0),
                child: IconTextButton(name: Constants.SIDEBAR_ICON_DASHBOARD, icon: Icons.house_rounded, color: Colors.lightBlueAccent, height: 35, widht: 200)),
            Container(padding:EdgeInsets.all(5.0),
                child: IconTextButton(name: Constants.SIDEBAR_ICON_PATIENT, icon: Icons.person, color: Colors.lightBlueAccent, height: 35, widht: 200)),
            Container(padding: EdgeInsets.all(5.0),
                child: IconTextButton(name: Constants.SIDEBAR_ICON_PRESCRIPTION, icon: Icons.medical_information_rounded, color: Colors.lightBlueAccent, height: 35, widht: 200)),
            Container(padding: EdgeInsets.all(5.0),
                child: IconTextButton(name: Constants.SIDEBAR_ICON_MEDICINE, icon: Icons.medication, color: Colors.lightBlueAccent, height: 35, widht: 200)),
            ],
          ),
          Container(padding:EdgeInsets.all(5.0),
              alignment: Alignment.bottomLeft, //not working. To be at bottom
              child: IconTextButton(name: Constants.SIDEBAR_ICON_HELP, icon: Icons.chat, color: Colors.lightBlueAccent, height: 35, widht: 200))
          
        ],

      ),
  );
  }
}