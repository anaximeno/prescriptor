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
                child: IconTextButton(onPressed: (){}, name: Constants.ICON_DASHBOARD, icon: Icons.house_rounded, color: Colors.blue, height: 35, widht: 200)),
            Container(padding:EdgeInsets.all(5.0),
                child: IconTextButton(onPressed: (){}, name: Constants.ICON_PATIENT, icon: Icons.person, color: Colors.blue, height: 35, widht: 200)),
            Container(padding: EdgeInsets.all(5.0),
                child: IconTextButton(onPressed: (){}, name: Constants.ICON_PRESCRIPTION, icon: Icons.medical_information_rounded, color: Colors.blue, height: 35, widht: 200)),
            Container(padding: EdgeInsets.all(5.0),
                child: IconTextButton(onPressed: (){}, name: Constants.ICON_MEDICINE, icon: Icons.medication, color: Colors.blue, height: 35, widht: 200)),
            ],
          ),
          Container(padding:EdgeInsets.all(5.0),
              alignment: Alignment.bottomLeft, //not working. To be at bottom
              child: IconTextButton(onPressed: (){}, name: Constants.ICON_HELP, icon: Icons.chat, color: Colors.blue, height: 35, widht: 200))
          
        ],

      ),
    );
  }
}