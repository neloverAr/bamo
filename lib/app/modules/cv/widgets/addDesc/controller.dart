
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class DescSectionController extends GetxController {
  late TextEditingController descController;

  @override
  void onInit() {
    descController = TextEditingController();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    descController.dispose();
    super.onClose();
  }

}