
import 'package:flutter/animation.dart';
import 'package:get/get.dart';

class SignupController extends GetxController with  GetSingleTickerProviderStateMixin{
RxBool isLoading = true.obs;
late AnimationController animationController;
RxBool welcomeLoading = true.obs;
RxBool contentLoading = true.obs;

  @override
  void onInit() {
    getWidgetDelay();
    getWelcomeDelay();
    getContentDelay();
    animationController = AnimationController(vsync: this,
        duration: const Duration(seconds: 1));
    super.onInit();
  }

  @override
  void onReady() {

    super.onReady();
  }

  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }

  getWidgetDelay() async {
    isLoading.value = true;
    await Future.delayed(const Duration(seconds: 1),(){
      isLoading.value = false;
      //update();
    });
  }

  getWelcomeDelay() async {
    welcomeLoading.value = true;
    await Future.delayed(const Duration(milliseconds: 1),(){
      welcomeLoading.value = false;
      //update();
    });
  }

  getContentDelay() async {
    contentLoading.value = true;
    await Future.delayed(const Duration(seconds: 1,milliseconds: 150),(){
      contentLoading.value = false;
      //update();
    });
  }

  startAnimation(){
    //expanded.value = (!expanded.value);
    if(animationController.status==AnimationStatus.completed){
      animationController.reverse();
    }else{
      animationController.forward();
    }
  }



}