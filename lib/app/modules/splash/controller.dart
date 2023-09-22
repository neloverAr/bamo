
import 'dart:async';
import 'package:bamo/app/functions/nextRoute.dart';
import 'package:bamo/app/routes/pages_routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  RxInt timer = 0.obs;

  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 4), () {
      Get.offNamed(getNextRoute(AppRoutes.splash));
    });
    startTimer();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    //tmr.cancel();
    super.onClose();
  }

  void startTimer() {
    var period = const Duration(seconds:1);
    Timer.periodic(period,(arg){
      if(timer.value == 3){ //Stop if second equal to 4
        arg.cancel();
      }
      //print(timer.value);
      timer.value = (timer.value+1);
    });
  }

}
