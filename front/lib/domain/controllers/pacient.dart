import 'package:flutter/material.dart';
import 'package:front/domain/repositories/pacient.dart';
import 'package:get/get.dart';

class PacientController extends GetxController {
  TextEditingController pacientNameController = TextEditingController();
  TextEditingController pacientLastnameController = TextEditingController();
  TextEditingController pacientBirthDateController = TextEditingController();
  TextEditingController pacientGenderController = TextEditingController();
  TextEditingController pacientPhoneController = TextEditingController();
  TextEditingController pacientCniController = TextEditingController();
  TextEditingController pacientNifController = TextEditingController();
  TextEditingController pacientAddressController = TextEditingController();

  RxBool pacientHasInsurance = false.obs;

  final PacientRepository pacientRepository;

  PacientController(this.pacientRepository);

  void onSubmit() {
    // TODO
  }
}
