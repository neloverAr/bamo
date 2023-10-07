
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
class MessagesController extends GetxController {
  late TextEditingController textController;

  @override
  void onInit() {
    textController = TextEditingController();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    textController.dispose();
    super.onClose();
  }

}