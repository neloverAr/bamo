
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class LangSectionController extends GetxController {
  late TextEditingController langController;
  late TextEditingController levelController;
  late TextEditingController diplomaController;

  @override
  void onInit() {
    langController = TextEditingController();
    levelController = TextEditingController();
    diplomaController = TextEditingController();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    langController.dispose();
    levelController.dispose();
    diplomaController.dispose();
    super.onClose();
  }

}