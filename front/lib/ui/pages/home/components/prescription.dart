import 'package:flutter/material.dart';
import 'package:front/domain/controllers/prescription.dart';
import 'package:front/ui/components/texts/texts.dart';
import 'package:front/ui/theming.dart';
import 'package:front/utils/constants.dart';
import 'package:get/get.dart';

import '../../../components/buttons/simple_button.dart';
import '../../../components/inputs/simple_input_form.dart';

class Prescription extends StatelessWidget {
  //TODO: try make the input_forms not  touchable on view and validate mode
  final String goal;
  final bool writeEnable;

  final PrescriptionController controller = Get.find();

  Prescription({
    super.key,
    required this.goal,
    required this.writeEnable,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TitleText(
            title: Constants.PRESCRIPTION_TITLE,
            color: Theming.colorWhite,
            padding: 20,
          ),
          Card(
            elevation: 5,
            color: Theming.colorWhite,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SimpleInputForm(
                        enabled: writeEnable,
                        labelText: Constants.PRESCRIPTION_EMISSION_DATE,
                        hint: Constants.PRESCRIPTION_EMISSION_DATE_HINT,
                        width: 230,
                        inputWidth: 110,
                        controller: controller.emissionDateController,
                      ),
                      SimpleInputForm(
                        enabled: writeEnable,
                        labelText: Constants.PRESCRIPTION_EXPIRATION_DATE,
                        hint: Constants.PRESCRIPTION_EXPIRATION_DATE_HINT,
                        width: 235,
                        inputWidth: 110,
                        controller: controller.expirationDateController,
                      ),
                      //TODO: RENOVABLE CHECKBOX
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              Constants.PRESCRIPTION_AUTO_RENOVABLE,
                              style: const TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                            Obx(
                              () => Checkbox(
                                checkColor: Colors.white,
                                focusColor: Colors.lightBlueAccent,
                                value: controller.autoRenovable.value,
                                onChanged: (bool? value) {
                                  if (value != null) {
                                    controller.autoRenovable.value = value;
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      SimpleInputForm(
                        enabled: writeEnable,
                        labelText: Constants.PRESCRIPTION_CYCLE,
                        hint: Constants.BLANK,
                        width: 260,
                        inputWidth: 95,
                        controller: controller.cycleController,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Center(
                      child: TitleText(
                        title: Constants.PACIENT_TITLE,
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SimpleInputForm(
                        enabled: writeEnable,
                        labelText: Constants.PACIENT_NAME,
                        hint: Constants.BLANK,
                        width: 180,
                        inputWidth: 130,
                      ),
                      SimpleInputForm(
                        enabled: writeEnable,
                        labelText: Constants.PACIENT_SURNAME,
                        hint: Constants.BLANK,
                        width: 180,
                        inputWidth: 120,
                      ),
                      SimpleInputForm(
                        enabled: writeEnable,
                        labelText: Constants.PACIENT_CNI,
                        hint: Constants.BLANK,
                        width: 185,
                        inputWidth: 130,
                        controller: controller.pacientCniController,
                      ),
                      SimpleInputForm(
                        enabled: writeEnable,
                        labelText: Constants.PACIENT_NASC,
                        hint: Constants.PACIENT_NASC_HINT,
                        width: 260,
                        inputWidth: 130,
                      ),
                      SimpleInputForm(
                        enabled: writeEnable,
                        labelText: Constants.PACIENT_PHONE,
                        hint: Constants.BLANK,
                        width: 180,
                        inputWidth: 100,
                      ),
                    ],
                  ),
                  //TODO: ADICIONAR ENTIDADE E NUMERO BENEFICIARIO QUANDO O PACIENTE TEM "VALE REMEDIOS"
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Center(
                      child: TitleText(
                        title: Constants.MEDICINE_TITLE,
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SimpleInputForm(
                        enabled: writeEnable,
                        labelText: Constants.MEDICINE_NAME,
                        hint: Constants.BLANK,
                        width: 220,
                        inputWidth: 150,
                        controller: controller.medicineNameController,
                      ),
                      SimpleInputForm(
                        enabled: writeEnable,
                        labelText: Constants.MEDICINE_DOSAGE,
                        hint: Constants.MEDICINE_DOSAGE_HINT,
                        width: 150,
                        inputWidth: 80,
                        controller: controller.medicineDoseController,
                      ),
                      SimpleInputForm(
                        enabled: writeEnable,
                        labelText: Constants.MEDICINE_AMOUNT,
                        hint: Constants.MEDICINE_AMOUNT_HINT,
                        width: 150,
                        inputWidth: 60,
                        controller: controller.medicineAmountController,
                      ),
                      SimpleInputForm(
                        enabled: writeEnable,
                        labelText: Constants.MEDICINE_USAGE,
                        hint: Constants.MEDICINE_USAGE_HINT,
                        width: 180,
                        inputWidth: 90,
                        controller: controller.medicineUsageController,
                      ),
                      SimpleInputForm(
                        enabled: writeEnable,
                        labelText: Constants.MEDICINE_ADMINISTRATION,
                        hint: Constants.MEDICINE_ADMINISTRATION_HINT,
                        width: 160,
                        inputWidth: 80,
                        controller: controller.medicineAdministrationController,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SimpleInputForm(
                        enabled: writeEnable,
                        labelText: Constants.MEDICINE_OBSERVATIONS,
                        hint: Constants.BLANK,
                        width: 330,
                        inputWidth: 220,
                        isBig: true,
                        controller: controller.medicineObsController,
                      ),
                      SimpleInputForm(
                        enabled: writeEnable,
                        labelText: Constants.MEDICINE_FREQUENCY,
                        hint: Constants.MEDICINE_FREQUENCY_HINT,
                        width: 180,
                        inputWidth: 95,
                        controller: controller.medicineFreqController,
                      ),
                      SimpleInputForm(
                        enabled: writeEnable,
                        labelText: Constants.MEDICINE_DURATION,
                        hint: Constants.MEDICINE_DURATION_HINT,
                        width: 200,
                        inputWidth: 90,
                        controller: controller.medicineDurationController,
                      ),
                    ],
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: Center(
                  //     child: Title(
                  //       color: Colors.black,
                  //       child: Text(
                  //         Constants.PHYSICIANS_TITLE,
                  //         style: const TextStyle(
                  //             fontSize: 15, fontWeight: FontWeight.bold),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     SimpleInputForm(
                  //       enabled: writeEnable,
                  //       labelText: Constants.PHYSICIANS_NAME,
                  //       hint: Constants.PHYSICIANS_NAME_HINT,
                  //       width: 180,
                  //       inputWidth: 130,
                  //     ),
                  //     SimpleInputForm(
                  //       enabled: writeEnable,
                  //       labelText: Constants.PHYSICIANS_SPECIALITY,
                  //       hint: Constants.PHYSICIANS_SPECIALITY_HINT,
                  //       width: 300,
                  //       inputWidth: 200,
                  //     ),
                  //     SimpleInputForm(
                  //       enabled: writeEnable,
                  //       labelText: Constants.PHYSICIANS_CIPS,
                  //       hint: Constants.PHYSICIANS_CIPS_HINT,
                  //       width: 150,
                  //       inputWidth: 100,
                  //     ),
                  //     SimpleButton(
                  //       text: Constants.PHYSICIANS_SIGNATURE_BUTTON,
                  //       width: 200,
                  //     ),
                  //   ],
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: SimpleButton(
                      onPressed: controller.onSubmit,
                      text: goal,
                      width: 100,
                    ),
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
