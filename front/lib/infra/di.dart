import 'package:get/get.dart';
import 'package:front/domain/controllers/controllers.dart';

void dependencyInjection() {
  Get.put(LoginController());
  Get.put(PrescriptionController());
  Get.put(PacientController());
}
