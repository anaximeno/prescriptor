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
            color: Colors.white,
            padding: 20,
          ),
          Row(
            children: [
              Expanded(flex: 2, child: Container()),
              Expanded(flex:8,
                child: Card(
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
                              labelText: Constants.PACIENT_NAME,
                              hint: Constants.BLANK,
                              width: 170,
                              inputWidth: 110,
                            ),
                            SimpleInputForm(
                              enabled: writeEnable,
                              controller: controller.pacientLastnameController,
                              labelText: Constants.PACIENT_SURNAME,
                              hint: Constants.BLANK,
                              width: 170,
                              inputWidth: 110,
                            ),
                            SimpleInputForm(
                              enabled: writeEnable,
                              controller: controller.pacientBirthDateController,
                              labelText: Constants.PACIENT_NASC,
                              hint: Constants.BLANK,
                              width: 230,
                              inputWidth: 110,
                            ),
                            SimpleInputForm(
                              enabled: writeEnable,
                              controller: controller.pacientGenderController,
                              labelText: Constants.PACIENT_SEX,
                              hint: Constants.BLANK,
                              width: 95,
                              inputWidth: 50,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SimpleInputForm(
                              enabled: writeEnable,
                              controller: controller.pacientCniController,
                              labelText: Constants.PACIENT_CNI,
                              hint: Constants.BLANK,
                              width: 150,
                              inputWidth: 110,
                            ),
                            SimpleInputForm(
                              enabled: writeEnable,
                              controller: controller.pacientNifController,
                              labelText: Constants.PACIENT_NIF,
                              hint: Constants.BLANK,
                              width: 150,
                              inputWidth: 110,
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
                                ),
                            ),
                          ],
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SimpleInputForm(
                              enabled: writeEnable,
                              controller: controller.pacientAddressController,
                              labelText: Constants.PACIENT_ADDRESS,
                              hint: Constants.BLANK,
                              width: 300,
                              inputWidth: 200,
                            ),
                            SimpleInputForm(
                              enabled: writeEnable,
                              controller: controller.pacientPhoneController,
                              labelText: Constants.PACIENT_PHONE,
                              hint: Constants.BLANK,
                              width: 180,
                              inputWidth: 100,
                            ),
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
              ),
              Expanded(flex: 2, child: Container()),
            ],
          ),
        ],
      ),
    );
  }
}
