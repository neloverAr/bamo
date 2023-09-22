
import 'package:bamo/app/core/values/icons.dart';
import 'package:bamo/app/functions/nextRoute.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/models/PageData.dart';
import '../../home/employee/view.dart';

class EmployeeMainNavigationController extends GetxController {
  RxInt index = 0.obs;
  late List<PageData> pages;
  setPages() {
    pages = [
      PageData(
          page:  EmployeeHomePage(),
          icon: AppIcon.fullTime,
          title: "Permanent"
      ),
      PageData(
          page:  Text("partTime"),
          icon: AppIcon.partTime,
          title: "Mi-temps"
      ),
      PageData(
          page:  Text("Freelance"),
          icon: AppIcon.freelance,
          title: "Freelance"
      ),
      PageData(
          page: Text("Stage"),
          icon: AppIcon.stage,
          title: "Stage"
      ),
    ];
  }
  changePage(int newIndex) {
    if (index == newIndex) {
      return;
    }
    index.value = newIndex;
  }

  @override
  void onInit() {
    super.onInit();
    setPages();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  goToCenterIconScreen(){
    Get.toNamed(getNextRoute("clipboardIcon"));
  }

  goToLocationScreen(){
    Get.toNamed(getNextRoute("locationIcon"));
  }

  void goToSignup() {
    Get.toNamed(getNextRoute("signup"));
  }
  void goToLogin() {
    Get.toNamed(getNextRoute("login"));
  }

}