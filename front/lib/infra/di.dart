import 'package:front/domain/repositories/repositories.dart';
import 'package:front/infra/api.dart';
import 'package:get/get.dart';
import 'package:front/domain/controllers/controllers.dart';

void dependencyInjection() {
  Get.put(Api());
  Get.put(LoginRepository(Get.find()));
  Get.put(PrescriptionRepository(Get.find()));
  Get.put(PacientRepository(Get.find()));
  Get.put(LoginController(Get.find()));
  Get.put(PrescriptionController(Get.find()));
  Get.put(PacientController(Get.find()));
}
