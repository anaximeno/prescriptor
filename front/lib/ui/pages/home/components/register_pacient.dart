import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:front/ui/components/buttons/simple_button.dart';
import 'package:front/ui/components/inputs/simple_input_form.dart';
import 'package:front/utils/constants.dart';

import '../../../../domain/controllers/pacient.dart';
import '../../../components/texts/texts.dart';

class RegisterPacient extends StatelessWidget {
  //TODO: try make the input_forms not  touchable on view and validate mode
  final String goal;
  final bool writeEnable;

  final PacientController controller = Get.find();

  RegisterPacient({
    super.key,
    required this.goal,
    required this.writeEnable,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TitleText(
            title: Constants.PACIENT_TITLE,
            color: Colors.white70,
            padding: 20,
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
                      child: TitleText(
                        title: Constants.PERSONAL_DATA,
                        color: Colors.black,
                        fontSize: 15,
                        padding: 10,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SimpleInputForm(
                        enabled: writeEnable,
                        controller: controller.pacientNameController,
                        labelText: Constants.BLANK,
                        hint: Constants.PACIENT_NAME,
                        width: 140,
                        inputWidth: 130,
                      ),
                      SimpleInputForm(
                        enabled: writeEnable,
                        controller: controller.pacientLastnameController,
                        labelText: Constants.BLANK,
                        hint: Constants.PACIENT_SURNAME,
                        width: 150,
                        inputWidth: 140,
                      ),
                      SimpleInputForm(
                        enabled: writeEnable,
                        controller: controller.pacientBirthDateController,
                        labelText: Constants.BLANK,
                        hint: Constants.PACIENT_NASC,
                        width: 180,
                        inputWidth: 170,
                      ),
                      SimpleInputForm(
                        enabled: writeEnable,
                        controller: controller.pacientGenderController,
                        labelText: Constants.BLANK,
                        hint: Constants.PACIENT_SEX,
                        width: 80,
                        inputWidth: 70,
                      ),
                      SimpleInputForm(
                        enabled: writeEnable,
                        controller: controller.pacientPhoneController,
                        labelText: Constants.BLANK,
                        hint: Constants.PACIENT_PHONE,
                        width: 125,
                        inputWidth: 100,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SimpleInputForm(
                        enabled: writeEnable,
                        controller: controller.pacientCniController,
                        labelText: Constants.BLANK,
                        hint: Constants.PACIENT_CNI,
                        width: 125,
                        inputWidth: 110,
                      ),
                      SimpleInputForm(
                        enabled: writeEnable,
                        controller: controller.pacientNifController,
                        labelText: Constants.BLANK,
                        hint: Constants.PACIENT_NIF,
                        width: 115,
                        inputWidth: 100,
                      ),
                      SimpleInputForm(
                        enabled: writeEnable,
                        controller: controller.pacientAddressController,
                        labelText: Constants.BLANK,
                        hint: Constants.PACIENT_ADDRESS,
                        width: 210,
                        inputWidth: 200,
                      ),
                      Container(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                Constants.PACIENT_INSURANCE,
                                style: const TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              Obx(
                                () => Checkbox(
                                  checkColor: Colors.white,
                                  focusColor: Colors.lightBlueAccent,
                                  value: controller.pacientHasInsurance.value,
                                  onChanged: (bool? value) {
                                    if (value != null) {
                                      controller.pacientHasInsurance.value =
                                          value;
                                    }
                                  },
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                  //TODO: ADICIONAR ENTIDADE E NUMERO BENEFICIARIO QUANDO O PACIENTE TEM "VALE REMEDIOS"
                  const SizedBox(height: 20),
                  SimpleButton(
                    onPressed: controller.onSubmit,
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
