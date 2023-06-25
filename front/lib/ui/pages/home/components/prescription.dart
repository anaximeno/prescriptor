import 'package:flutter/material.dart';
import 'package:front/utils/constants.dart';

class Prescription extends StatelessWidget {
  const Prescription({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                            _MyTextField(
                              labelText: Constants.PACIENT_PRESCRIPTION_NAME,
                              hint: Constants.PACIENT_PRESCRIPTION_NAME_HINT,
                              width: 200,
                              inputWidth: 150,
                            ),
                            _MyTextField(
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
                            _MyTextField(
                              labelText: Constants.PACIENT_PRESCRIPTION_NASC,
                              hint: Constants.PACIENT_PRESCRIPTION_NASC_HINT,
                              width: 250,
                              inputWidth: 120,
                            ),
                            _MyTextField(
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
                            _MyTextField(
                              labelText: Constants.MEDICINE_PRESCRIPTION_NAME,
                              hint: Constants.MEDICINE_PRESCRIPTION_NAME_HINT,
                              width: 250,
                              inputWidth: 150,
                            ),
                            _MyTextField(
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
                            _MyTextField(
                              labelText: Constants.MEDICINE_PRESCRIPTION_AMOUNT,
                              hint: Constants.BLANK,
                              width: 150,
                              inputWidth: 60,
                            ),
                            _MyTextField(
                              labelText: Constants.MEDICINE_PRESCRIPTION_USAGE,
                              hint: Constants.MEDICINE_PRESCRIPTION_USAGE_HINT,
                              width: 180,
                              inputWidth: 90,
                            ),
                            _MyTextField(
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
                            _MyTextField(
                              labelText:
                                  Constants.MEDICINE_PRESCRIPTION_DESCRIPTION,
                              hint: Constants.BLANK,
                              width: 300,
                              inputWidth: 220,
                            ),
                            _MyTextField(
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
                            _MyTextField(
                              labelText: Constants.DOCTOR_PRESCRIPTION_CIPS,
                              hint: Constants.DOCTOR_PRESCRIPTION_CIPS_HINT,
                              width: 150,
                              inputWidth: 100,
                            ),
                            _Button(
                              name: Constants
                                  .DOCTOR_PRESCRIPTION_SIGNATURE_BUTTON,
                              width: 200,
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        _Button(
                          name: Constants.PRESCRIPRION_CREATE_BUTTON,
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

class _MyTextField extends StatelessWidget {
  final double _contentHeight = 35;

  final String labelText;
  final double inputWidth;
  final String hint;
  final double width;

  const _MyTextField({
    required this.labelText,
    required this.hint,
    required this.width,
    required this.inputWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: _contentHeight,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Text(
                labelText,
                style: const TextStyle(color: Colors.black),
              ),
            ),
            Container(
              width: inputWidth,
              padding: const EdgeInsets.only(left: 20.0),
              decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius: BorderRadius.circular(5)),
              child: TextField(
                maxLines: null,
                style: const TextStyle(fontSize: 15, color: Colors.black),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(bottom: _contentHeight / 2),
                  border: InputBorder.none,
                  hintText: hint,
                  hintStyle: TextStyle(fontSize: 15, color: Colors.grey[500]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _Button extends StatelessWidget {
  final String name;
  final double width;

  const _Button({required this.name, required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.lightBlue[200],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          minimumSize: const Size(80, 30),
        ),
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
