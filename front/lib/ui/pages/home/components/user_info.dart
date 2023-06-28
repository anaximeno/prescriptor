import 'package:flutter/material.dart';
import 'package:front/ui/components/texts/simple_text_box.dart';
import 'package:front/ui/components/texts/texts.dart';
import 'package:front/utils/constants.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10.0,10.0,10.0,0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TitleText(title: Constants.USER_INFO_TITLE, color: Color(Constants.DEFAULT_2_BLUE)),
          Card(
              elevation: 5,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column( //TODO: Limitate the widht from simpletextbox to add Safira info
                  children: [
                    SimpleTextBox(
                        nameText: Constants.USER_INFO_USERNAME,
                        info: Constants.TEST
                    ),
                    Row(
                      children: [
                        SimpleTextBox(
                            nameText: Constants.USER_INFO_FULLNAME,
                            info: Constants.TEST
                        ),
                        SimpleTextBox(
                            nameText: Constants.USER_INFO_PHONENUMBER,
                            info: Constants.TEST
                        ),
                      ],
                    ),
                    SimpleTextBox(
                        nameText: Constants.USER_INFO_ADDRESS,
                        info: Constants.TEST,
                    ),
                    Row(
                      children: [
                        SimpleTextBox(
                            nameText: Constants.USER_INFO_JOB,
                            info: Constants.TEST,
                        ),
                        SimpleTextBox(
                            nameText: Constants.USER_INFO_JOB_ID,
                            info: Constants.TEST,
                        ),
                      ],
                    ),
                    SimpleTextBox(
                        nameText: Constants.USER_INFO_ORGANIZATION,
                        info: Constants.TEST,
                    ),
                  ],
                ),
                /*Padding( TODO: This code to be in a row with the column above
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      TitleText(title: '(Image add)', color: Colors.black),
                      TitleText(title: 'Safira Corporation Account', color: Colors.black),
                    ],
                  ),
                ),*/
              ),
          ),
        ],
      ),
    );
  }
}
