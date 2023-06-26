import 'package:flutter/material.dart';
import 'package:front/ui/components/buttons/big_button.dart';
import 'package:front/ui/components/texts/texts.dart';
import 'package:front/ui/pages/home/components/side_bar.dart';
import 'package:front/utils/constants.dart';

import 'views/views.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: here we should be choosing withing showing the doctor home page
    //  view or the pharmacist's.
    return Scaffold(
        appBar: AppBar(//AppBar is the same for every user
        backgroundColor: Colors.white,
          title: TextButton(onPressed: () {}, child: TitleText(title: Constants.APPBAR_TITLE, color: Colors.black)),
          leading: IconButton(onPressed:() {}, icon: Icon(Icons.menu, color: Colors.black)),
          actions: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.notifications_none_rounded, color: Colors.black)),
            IconButton(onPressed: (){}, icon: const Icon(Icons.account_circle_outlined, color: Colors.black)),
          ],
        ),

        body:Row(children: [
          Expanded(flex: 2, child: SideBar()),

          Expanded( flex: 10,
            child: Physicians()// differ  between de users
          ),
        ]),
    );
  }
}
