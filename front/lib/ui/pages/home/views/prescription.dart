import 'package:flutter/material.dart';
import 'package:front/ui/components/buttons/checkbox.dart';
import 'package:front/ui/components/texts/texts.dart';
import 'package:front/utils/constants.dart';

import '../../../components/buttons/simple_button.dart';
import '../../../components/inputs/simple_input_form.dart';

class Prescription extends StatelessWidget {
  final String goal;//TODO: try make the input_forms not  touchable on view and validate mode

  const Prescription({super.key,
    required this.goal
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TitleText(title: Constants.PRESCRIPTION_TITLE, color: Colors.white),
          Card(
            elevation: 5,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SimpleInputForm(
                        labelText:
                        Constants.PRESCRIPTION_EMISSION_DATE,
                        hint: Constants.PRESCRIPTION_EMISSION_DATE_HINT,
                        width: 250,
                        inputWidth: 120,
                      ),
                      SimpleInputForm(
                        labelText:
                        Constants.PRESCRIPTION_EXPIRATION_DATE,
                        hint: Constants.PRESCRIPTION_EXPIRATION_DATE_HINT,
                        width: 250,
                        inputWidth: 120,
                      ),
                      //TODO: RENOVABLE CHECKBOX
                      Container(padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(Constants.PRESCRIPTION_AUTO_RENOVABLE,
                                style: TextStyle(fontSize: 15, color: Colors.black),
                              ),
                              CheckboxExample(),
                            ],
                          )),
                      SimpleInputForm(
                        labelText:
                        Constants.PRESCRIPTION_CYCLE,
                        hint: Constants.PRESCRIPTION_CYCLE_HINT,
                        width: 210,
                        inputWidth: 95,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                        child: Title(
                            color: Colors.black,
                            child: Text(
                              Constants.PACIENT_TITLE,
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
                        labelText: Constants.PACIENT_PHONE,
                        hint: Constants.PACIENT_PHONE_HINT,
                        width: 200,
                        inputWidth: 120,
                      ),
                    ],
                  ),
                  //TODO: ADICIONAR ENTIDADE E NUMERO BENEFICIARIO QUANDO O PACIENTE TEM "VALE REMEDIOS"
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Title(
                        color: Colors.black,
                        child: Text(
                          Constants.MEDICINE_TITLE,
                          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SimpleInputForm(
                        labelText: Constants.MEDICINE_NAME,
                        hint: Constants.MEDICINE_NAME_HINT,
                        width: 300,
                        inputWidth: 150,
                      ),
                      SimpleInputForm(
                        labelText: Constants.MEDICINE_DOSAGE,
                        hint: Constants.MEDICINE_DOSAGE_HINT,
                        width: 150,
                        inputWidth: 80,
                      ),
                      SimpleInputForm(
                        labelText: Constants.MEDICINE_AMOUNT,
                        hint: Constants.BLANK,
                        width: 150,
                        inputWidth: 60,
                      ),
                      SimpleInputForm(
                        labelText: Constants.MEDICINE_USAGE,
                        hint: Constants.MEDICINE_USAGE_HINT,
                        width: 180,
                        inputWidth: 90,
                      ),
                      SimpleInputForm(
                        labelText: Constants
                            .MEDICINE_ADMINISTRATION,
                        hint: Constants
                            .MEDICINE_ADMINNISTRATION_HINT,
                        width: 130,
                        inputWidth: 90,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SimpleInputForm(
                        labelText:
                            Constants.MEDICINE_OBSERVATIONS,
                        hint: Constants.MEDICINE_OBSERVATION_HINT,
                        width: 320,
                        inputWidth: 220,
                      ),
                      SimpleInputForm(
                        labelText:
                        Constants.MEDICINE_FREQUENCY,
                        hint: Constants.MEDICINE_FREQUENCY_HINT,
                        width: 200,
                        inputWidth: 110,
                      ),
                      SimpleInputForm(
                        labelText:
                            Constants.MEDICINE_DURATION,
                        hint: Constants.MEDICINE_DURATION_HINT,
                        width: 200,
                        inputWidth: 90,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Title(
                        color: Colors.black,
                        child: Text(
                          Constants.PHYSICIANS_TITLE,
                          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SimpleInputForm(
                        labelText: Constants.PHYSICIANS_CIPS,
                        hint: Constants.PHYSICIANS_CIPS_HINT,
                        width: 150,
                        inputWidth: 100,
                      ),
                      SimpleButton(
                        text: Constants
                            .PHYSICIANS_SIGNATURE_BUTTON,
                        width: 200,
                      ),
                    ],
                  ),
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
