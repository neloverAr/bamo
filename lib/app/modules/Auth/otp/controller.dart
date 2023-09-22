
import 'dart:async';

import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class OTPController extends GetxController{
  late Timer _timer;
  int start = 60;
  bool isLoading = false;
  bool isDisable = true;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    startTimer();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    _timer.cancel();
  }

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
          (Timer timer) {
        if (start == 0) {
          timer.cancel();
          isLoading = false;
          update();
        } else {
          start--;
          update();
        }
      },
    );
  }
}