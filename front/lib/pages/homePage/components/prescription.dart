import 'package:flutter/material.dart';
import 'package:front/utilities/Constants.dart';

class Prescription extends StatelessWidget {
  const Prescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 650,
      width: 700,
      child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Card(
            elevation: 10,
            color: Colors.lightBlueAccent,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(child: Title(color: Colors.black, child: Text(Constants.PRESCRIPTION_TITLE, style: TextStyle(fontSize: 20)))),
                  Card(
                    elevation: 5,
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column( //TODO: Add expanded widget to align all widgtes to make UI more consistent and usable
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Center(child: Title(color: Colors.black, child: Text(Constants.PACIENT_PRESCRIPTION_SUBTITLE, style: TextStyle(fontSize: 16),))),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _MyTextField(text_field: Constants.PACIENT_PRESCRIPTION_NAME, hint: Constants.PACIENT_PRESCRIPTION_NAME_HINT, cont_widht: 200, txt_widht: 150),
                              _MyTextField(text_field: Constants.PACIENT_PRESCRIPTION_CNI, hint: Constants.PACIENT_PRESCRIPTION_CNI_HINT, cont_widht: 190, txt_widht: 150),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _MyTextField(text_field: Constants.PACIENT_PRESCRIPTION_NASC, hint: Constants.PACIENT_PRESCRIPTION_NASC_HINT, cont_widht: 250, txt_widht:120),
                              _MyTextField(text_field: Constants.PACIENT_PRESCRIPTION_PHONE, hint: Constants.PACIENT_PRESCRIPTION_PHONE_HINT, cont_widht: 200, txt_widht: 120),
                            ],
                          ),
                          //TODO: ADICIONAR ENTIDADE E NUMERO BENEFICIARIO QUANDO O PACIENTE TEM "VALE REMEDIOS"
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Center(child: Title(color: Colors.black, child: Text(Constants.MEDICINE_PRESCRIPTION_SUBTITLE, style: TextStyle(fontSize: 16)))),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _MyTextField(text_field: Constants.MEDICINE_PRESCRIPTION_NAME, hint: Constants.MEDICINE_PRESCRIPTION_NAME_HINT, cont_widht: 250, txt_widht: 150),
                              _MyTextField(text_field: Constants.MEDICINE_PRESCRIPTION_DOSAGE, hint: Constants.MEDICINE_PRESCRIPTION_DOSAGE_HINT, cont_widht: 150, txt_widht: 80),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _MyTextField(text_field: Constants.MEDICINE_PRESCRIPTION_AMOUNT, hint: Constants.BLANK, cont_widht: 150, txt_widht: 60),
                              _MyTextField(text_field: Constants.MEDICINE_PRESCRIPTION_USAGE, hint: Constants.MEDICINE_PRESCRIPTION_USAGE_HINT, cont_widht: 180, txt_widht: 90),
                              _MyTextField(text_field: Constants.MEDICINE_PRESCRIPTION_ADMINISTRATION, hint: Constants.MEDICINE_PRESCRIPTION_ADMINNISTRATION_HINT, cont_widht: 130, txt_widht: 90),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _MyTextField(text_field: Constants.MEDICINE_PRESCRIPTION_DESCRIPTION, hint: Constants.BLANK, cont_widht: 300, txt_widht: 220),
                              _MyTextField(text_field: Constants.MEDICINE_PRESCRIPTION_DURATION, hint: Constants.BLANK, cont_widht: 200, txt_widht: 90),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Center(child: Title(color: Colors.black, child: Text(Constants.DOCTOR_PRESCRIPTION_SUBTITLE, style: TextStyle(fontSize: 16)))),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _MyTextField(text_field: Constants.DOCTOR_PRESCRIPTION_CIPS, hint: Constants.DOCTOR_PRESCRIPTION_CIPS_HINT, cont_widht: 150, txt_widht: 100),
                              _Button(name: Constants.DOCTOR_PRESCRIPTION_SIGNATURE_BUTTON, b_widht: 200),
                            ],
                          ),
                          SizedBox(height: 20),
                          _Button(name: Constants.PRESCRIPRION_CREATE_BUTTON, b_widht: 100),
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
  const _MyTextField({
    required this.text_field,
    required this.hint,
    required this.cont_widht,
    required this.txt_widht

  });

  final String text_field;
  final String hint;
  final double _height = 35;
  final double cont_widht;
  final double txt_widht;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: _height,
        width: cont_widht,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Text(text_field, style: TextStyle(color: Colors.black),),
            ),
            Container(
              width: txt_widht,
              padding: EdgeInsets.only(left: 20.0),
              decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius: BorderRadius.circular(5)),
              child: TextField(
                maxLines: null,
                style: TextStyle(fontSize: 15, color: Colors.black),
                decoration: InputDecoration(
                  contentPadding:EdgeInsets.only(bottom: _height / 2),
                  border:InputBorder.none,
                  hintText:hint,
                  hintStyle:TextStyle(fontSize: 15, color: Colors.grey[500]),
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
  const _Button({
    required this.name,
    required this.b_widht
});

  final String name;
  final double b_widht;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: b_widht,
      child: ElevatedButton(
        onPressed: (){},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.lightBlue[200],
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5)
          ),
          minimumSize:Size(80,30),
        ),
        child: Container(
          padding: EdgeInsets.all(8.0),
          child: Text(name, style: TextStyle(color: Colors.white, fontSize: 15)),
        ),
      ),
    );
  }
}
