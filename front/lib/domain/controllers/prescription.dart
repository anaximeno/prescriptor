import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrescriptionController extends GetxController {
  TextEditingController emissionDateController = TextEditingController();
  TextEditingController expirationDateController = TextEditingController();
  TextEditingController cycleController = TextEditingController();
  TextEditingController pacientCniController = TextEditingController();
  TextEditingController medicineNameController = TextEditingController();
  TextEditingController medicineDoseController = TextEditingController();
  TextEditingController medicineAmountController = TextEditingController();
  TextEditingController medicineAdministrationController =
      TextEditingController();
  TextEditingController medicineObsController = TextEditingController();
  TextEditingController medicineFreqController = TextEditingController();
  TextEditingController medicineDurationController = TextEditingController();
  TextEditingController medicineUsageController = TextEditingController();

  RxBool autoRenovable = false.obs;

  void onSubmit() {
    // TODO
  }
}
