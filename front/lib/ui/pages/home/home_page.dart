import 'package:flutter/material.dart';
import 'package:front/domain/controllers/login.dart';
import 'package:front/ui/components/texts/texts.dart';
import 'package:front/ui/pages/home/views/physicians.dart';
import 'package:front/ui/pages/home/views/receptionist.dart';
import 'package:front/ui/pages/login/login_page.dart';
import 'package:front/ui/theming.dart';
import 'package:front/utils/constants.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final LoginController loginController = Get.find();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theming.colorNiceBlue,
        title: TitleText(
          title: Constants.APPBAR_TITLE,
          color: Theming.colorWhiteLike,
        ),
        leadingWidth: 0,
        leading: Container(),
        actions: [
          IconButton(
            onPressed: () => Get.to(LoginPage()),
            icon: const Icon(
              Icons.login_rounded,
              color: Theming.colorWhiteLike,
            ),
          ),
        ],
      ),
      body: const Row(children: [
        // Expanded(
        //   flex: 2,
        //   child: Sidebar(
        //     sections: [
        //     ],
        //   ),
        // ),
        Expanded(child: Receptionist()), //remove expanded cause isn't necessary
      ]),
    );
  }
}
