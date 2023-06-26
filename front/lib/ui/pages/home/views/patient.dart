import 'package:flutter/material.dart';
import 'package:front/ui/components/buttons/simple_button.dart';
import 'package:front/ui/components/inputs/simple_input_form.dart';
import 'package:front/utils/constants.dart';

import '../../../components/texts/texts.dart';

class Patient extends StatelessWidget {
  const Patient({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(//TODO: design the layout to put prescription in foreground
        color: Colors.lightBlueAccent.shade100,
        child: Padding(
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
                            labelText: Constants.PACIENT_NAME,
                            hint: Constants.PACIENT_NAME_HINT,
                            width: 200,
                            inputWidth: 150,
                          ),
                          SimpleInputForm(
                            labelText: Constants.PACIENT_CNI,
                            hint: Constants.PACIENT_CNI_HINT,
                            width: 190,
                            inputWidth: 150,
                          ),
                          SimpleInputForm(
                            labelText: Constants.PACIENT_NASC,
                            hint: Constants.PACIENT_NASC_HINT,
                            width: 250,
                            inputWidth: 120,
                          ),
                          SimpleInputForm(
                            labelText: Constants.PACIENT_SEX,
                            hint: Constants.PACIENT_SEX_HINT,
                            width: 100,
                            inputWidth: 100,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SimpleInputForm(
                            labelText: Constants.PACIENT_CITY,
                            hint: Constants.PACIENT_CITY_HINT,
                            width: 190,
                            inputWidth: 150,
                          ),
                          SimpleInputForm(
                            labelText: Constants.PACIENT_DISTRICT,
                            hint: Constants.PACIENT_DISTRICT_HINT,
                            width: 250,
                            inputWidth: 120,
                          ),
                          SimpleInputForm(
                            labelText: Constants.PACIENT_PHONE,
                            hint: Constants.PACIENT_PHONE_HINT,
                            width: 200,
                            inputWidth: 120,
                          ),
                        ],
                      ),
                      //TODO: ADICIONAR ENTIDADE E NUMERO BENEFICIARIO QUANDO O PACIENTE TEM "VALE REMEDIOS"
                      const SizedBox(height: 20),
                      SimpleButton(
                        text: Constants.CREATE_BUTTON,
                        width: 100,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
