import 'package:get/get.dart';
import 'package:front/domain/controllers/login.dart';
import 'package:front/domain/controllers/prescription.dart';

void dependencyInjection() {
  Get.put(LoginController());
  Get.put(PrescriptionController());
}
