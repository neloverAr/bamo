
import 'package:bamo/app/functions/nextRoute.dart';
import 'package:bamo/app/routes/pages_routes.dart';
import 'package:get/get.dart';

import '../../core/values/AppConstatns.dart';

class SelectUserController extends GetxController {


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

  goToNextScreen(Users usertype){
    if(usertype==Users.employee) {
      Get.toNamed(getNextRoute("${AppRoutes.selectUser} ${Users.employee}"));
    }else{
      Get.toNamed(getNextRoute("${AppRoutes.selectUser} ${Users.employer}"));
    }
  }


}