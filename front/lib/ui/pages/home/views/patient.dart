import 'package:flutter/material.dart';
import 'package:front/ui/components/buttons/checkbox.dart';
import 'package:front/ui/components/buttons/simple_button.dart';
import 'package:front/ui/components/inputs/simple_input_form.dart';
import 'package:front/utils/constants.dart';

import '../../../components/texts/texts.dart';

class Patient extends StatelessWidget {
  final String goal;//TODO: try make the input_forms not  touchable on view and validate mode
  final bool writeEnable;

  const Patient({super.key,
    required this.goal,
    required this.writeEnable
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TitleText(title: Constants.PACIENT_TITLE, color: Colors.white70),
          Card(
            elevation: 5,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                        child: Title(
                            color: Colors.black,
                            child: Text(
                              Constants.PERSONAL_DATA,
                              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                            ))),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SimpleInputForm(
                        writeEnable: writeEnable,
                        labelText: Constants.PACIENT_NAME,
                        hint: Constants.PACIENT_NAME_HINT,
                        width: 190,
                        inputWidth: 140,
                      ),
                      SimpleInputForm(
                        writeEnable: writeEnable,
                        labelText: Constants.PACIENT_SURNAME,
                        hint: Constants.PACIENT_SURNAME_HINT,
                        width: 200,
                        inputWidth: 140,
                      ),

                      SimpleInputForm(
                        writeEnable: writeEnable,
                        labelText: Constants.PACIENT_NASC,
                        hint: Constants.PACIENT_NASC_HINT,
                        width: 230,
                        inputWidth: 110,
                      ),
                      SimpleInputForm(
                        writeEnable: writeEnable,
                        labelText: Constants.PACIENT_SEX,
                        hint: Constants.PACIENT_SEX_HINT,
                        width: 125,
                        inputWidth: 80,
                      ),
                      SimpleInputForm(
                        writeEnable: writeEnable,
                        labelText: Constants.PACIENT_PHONE,
                        hint: Constants.PACIENT_PHONE_HINT,
                        width: 175,
                        inputWidth: 95,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SimpleInputForm(
                        writeEnable: writeEnable,
                        labelText: Constants.PACIENT_CNI,
                        hint: Constants.PACIENT_CNI_HINT,
                        width: 175,
                        inputWidth: 140,
                      ),
                      SimpleInputForm(
                        writeEnable: writeEnable,
                        labelText: Constants.PACIENT_NIF,
                        hint: Constants.PACIENT_NIF_HINT,
                        width: 150,
                        inputWidth: 115,
                      ),
                      SimpleInputForm(
                        writeEnable: writeEnable,
                        labelText: Constants.PACIENT_ADDRESS,
                        hint: Constants.PACIENT_ADDRESS_HINT,
                        width: 260,
                        inputWidth: 190,
                      ),
                      Container(padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(Constants.PACIENT_INSURANCE,
                              style: TextStyle(fontSize: 15, color: Colors.black),
                            ),
                            CheckboxExample(),
                          ],
                        )),
                    ],
                  ),
                  //TODO: ADICIONAR ENTIDADE E NUMERO BENEFICIARIO QUANDO O PACIENTE TEM "VALE REMEDIOS"
                  const SizedBox(height: 20),
                  SimpleButton(
                    text: goal,
                    width: 100,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
