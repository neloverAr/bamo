
import 'package:bamo/app/routes/pages_routes.dart';
import 'package:get/get.dart';
class MonCVController extends GetxController {

  double progress = .24;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void goToDesc() {
    Get.toNamed(AppRoutes.addDesc);
  }

  void goToExperience() {
    Get.toNamed(AppRoutes.addExperience);
  }

  void goToLanguage() {
    Get.toNamed(AppRoutes.language);
  }

}