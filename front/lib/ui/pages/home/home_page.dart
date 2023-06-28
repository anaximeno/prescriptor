import 'package:flutter/material.dart';
import 'package:front/domain/controllers/login.dart';
import 'package:front/ui/components/texts/texts.dart';
import 'package:front/ui/pages/home/components/side_bar.dart';
import 'package:front/ui/pages/home/views/pharmacist.dart';
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
              Icons.power_settings_new_rounded,
              color: Theming.colorWhiteLike,
            ),
          ),
        ],
      ),
      body: const Row(children: [
        Expanded(flex: 2, child: SideBar()),
        Expanded(flex: 10, child: Pharmacist()),
      ]),
    );
  }
}
