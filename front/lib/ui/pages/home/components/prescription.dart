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
            color: Theming.colorWhiteLike,
            padding: 20,
          ),
          Card(
            elevation: 5,
            color: Theming.colorWhiteLike,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SimpleInputForm(
                        enabled: writeEnable,
                        labelText: Constants.BLANK,
                        hint: Constants.PRESCRIPTION_EMISSION_DATE,
                        width: 230,
                        inputWidth: 110,
                        controller: controller.emissionDateController,
                      ),
                      SimpleInputForm(
                        enabled: writeEnable,
                        labelText: Constants.BLANK,
                        hint: Constants.PRESCRIPTION_EXPIRATION_DATE,
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
                        labelText: Constants.BLANK,
                        hint: Constants.PRESCRIPTION_CYCLE,
                        width: 210,
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
                        labelText: Constants.BLANK,
                        hint: Constants.PACIENT_NAME,
                        width: 140,
                        inputWidth: 130,
                      ),
                      SimpleInputForm(
                        enabled: writeEnable,
                        labelText: Constants.BLANK,
                        hint: Constants.PACIENT_SURNAME,
                        width: 140,
                        inputWidth: 120,
                      ),
                      SimpleInputForm(
                        enabled: writeEnable,
                        labelText: Constants.BLANK,
                        hint: Constants.PACIENT_CNI,
                        width: 135,
                        inputWidth: 130,
                        controller: controller.pacientCniController,
                      ),
                      SimpleInputForm(
                        enabled: writeEnable,
                        labelText: Constants.BLANK,
                        hint: Constants.PACIENT_NASC,
                        width: 180,
                        inputWidth: 130,
                      ),
                      SimpleInputForm(
                        enabled: writeEnable,
                        labelText: Constants.BLANK,
                        hint: Constants.PACIENT_PHONE,
                        width: 130,
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
                        hint: Constants.MEDICINE_NAME_HINT,
                        width: 180,
                        inputWidth: 150,
                        controller: controller.medicineNameController,
                      ),
                      SimpleInputForm(
                        enabled: writeEnable,
                        labelText: Constants.BLANK,
                        hint: Constants.MEDICINE_DOSAGE,
                        width: 100,
                        inputWidth: 80,
                        controller: controller.medicineDoseController,
                      ),
                      SimpleInputForm(
                        enabled: writeEnable,
                        labelText: Constants.BLANK,
                        hint: Constants.MEDICINE_AMOUNT,
                        width: 100,
                        inputWidth: 60,
                        controller: controller.medicineAmountController,
                      ),
                      SimpleInputForm(
                        enabled: writeEnable,
                        labelText: Constants.BLANK,
                        hint: Constants.MEDICINE_USAGE,
                        width: 130,
                        inputWidth: 90,
                        controller: controller.medicineUsageController,
                      ),
                      SimpleInputForm(
                        enabled: writeEnable,
                        labelText: Constants.BLANK,
                        hint: Constants.MEDICINE_ADMINISTRATION,
                        width: 90,
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
                        labelText: Constants.BLANK,
                        hint: Constants.MEDICINE_OBSERVATIONS,
                        width: 270,
                        inputWidth: 220,
                        isBig: true,
                        controller: controller.medicineObsController,
                      ),
                      SimpleInputForm(
                        enabled: writeEnable,
                        labelText: Constants.BLANK,
                        hint: Constants.MEDICINE_FREQUENCY,
                        width: 130,
                        inputWidth: 95,
                        controller: controller.medicineFreqController,
                      ),
                      SimpleInputForm(
                        enabled: writeEnable,
                        labelText: Constants.BLANK,
                        hint: Constants.MEDICINE_DURATION,
                        width: 150,
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
