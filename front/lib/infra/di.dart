import 'package:front/domain/controllers/login.dart';
import 'package:get/get.dart';

void dependencyInjection() {
  Get.put(LoginController());
}
