import 'package:flutter/material.dart';
import 'package:front/utils/constants.dart';

import '../../../components/buttons/simple_button.dart';
import '../../../components/inputs/simple_input_form.dart';

class Prescription extends StatelessWidget {
  const Prescription({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox( //TODO: design the layout to put prescription in foreground
      height: 650,
      width: 700,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          elevation: 10,
          color: Colors.lightBlueAccent,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: Title(
                    color: Colors.black,
                    child: Text(
                      Constants.PRESCRIPTION_TITLE,
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                ),
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
                                    Constants.PACIENT_PRESCRIPTION_SUBTITLE,
                                    style: const TextStyle(fontSize: 16),
                                  ))),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SimpleInputForm(
                              labelText: Constants.PACIENT_PRESCRIPTION_NAME,
                              hint: Constants.PACIENT_PRESCRIPTION_NAME_HINT,
                              width: 200,
                              inputWidth: 150,
                            ),
                            SimpleInputForm(
                              labelText: Constants.PACIENT_PRESCRIPTION_CNI,
                              hint: Constants.PACIENT_PRESCRIPTION_CNI_HINT,
                              width: 190,
                              inputWidth: 150,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SimpleInputForm(
                              labelText: Constants.PACIENT_PRESCRIPTION_NASC,
                              hint: Constants.PACIENT_PRESCRIPTION_NASC_HINT,
                              width: 250,
                              inputWidth: 120,
                            ),
                            SimpleInputForm(
                              labelText: Constants.PACIENT_PRESCRIPTION_PHONE,
                              hint: Constants.PACIENT_PRESCRIPTION_PHONE_HINT,
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
                                Constants.MEDICINE_PRESCRIPTION_SUBTITLE,
                                style: const TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SimpleInputForm(
                              labelText: Constants.MEDICINE_PRESCRIPTION_NAME,
                              hint: Constants.MEDICINE_PRESCRIPTION_NAME_HINT,
                              width: 250,
                              inputWidth: 150,
                            ),
                            SimpleInputForm(
                              labelText: Constants.MEDICINE_PRESCRIPTION_DOSAGE,
                              hint: Constants.MEDICINE_PRESCRIPTION_DOSAGE_HINT,
                              width: 150,
                              inputWidth: 80,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SimpleInputForm(
                              labelText: Constants.MEDICINE_PRESCRIPTION_AMOUNT,
                              hint: Constants.BLANK,
                              width: 150,
                              inputWidth: 60,
                            ),
                            SimpleInputForm(
                              labelText: Constants.MEDICINE_PRESCRIPTION_USAGE,
                              hint: Constants.MEDICINE_PRESCRIPTION_USAGE_HINT,
                              width: 180,
                              inputWidth: 90,
                            ),
                            SimpleInputForm(
                              labelText: Constants
                                  .MEDICINE_PRESCRIPTION_ADMINISTRATION,
                              hint: Constants
                                  .MEDICINE_PRESCRIPTION_ADMINNISTRATION_HINT,
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
                                  Constants.MEDICINE_PRESCRIPTION_DESCRIPTION,
                              hint: Constants.BLANK,
                              width: 300,
                              inputWidth: 220,
                            ),
                            SimpleInputForm(
                              labelText:
                                  Constants.MEDICINE_PRESCRIPTION_DURATION,
                              hint: Constants.BLANK,
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
                                Constants.DOCTOR_PRESCRIPTION_SUBTITLE,
                                style: const TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SimpleInputForm(
                              labelText: Constants.DOCTOR_PRESCRIPTION_CIPS,
                              hint: Constants.DOCTOR_PRESCRIPTION_CIPS_HINT,
                              width: 150,
                              inputWidth: 100,
                            ),
                            SimpleButton(
                              text: Constants
                                  .DOCTOR_PRESCRIPTION_SIGNATURE_BUTTON,
                              width: 200,
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        SimpleButton(
                          text: Constants.PRESCRIPRION_CREATE_BUTTON,
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
      ),
    );
  }
}
