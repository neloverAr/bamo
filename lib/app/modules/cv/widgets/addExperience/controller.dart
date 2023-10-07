
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/values/AppConstatns.dart';
class ExperienceSectionController extends GetxController {
  late TextEditingController jobTitleController;
  late TextEditingController companyNameController;
  late TextEditingController dateStartController;
  late TextEditingController dateEndController;
  RxString sector  = "Secteur".obs;
  RxBool stillWork = false.obs;

  @override
  void onInit() {
    jobTitleController = TextEditingController();
    companyNameController = TextEditingController();
    dateStartController = TextEditingController();
    dateEndController = TextEditingController();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    jobTitleController.dispose();
    companyNameController.dispose();
    dateStartController.dispose();
    dateEndController.dispose();
    super.onClose();
  }

  changeSwitchValue(bool value){
    stillWork.value = value;
  }
}