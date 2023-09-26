
import 'package:bamo/app/core/values/icons.dart';
import 'package:bamo/app/functions/nextRoute.dart';
import 'package:bamo/app/modules/chats/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../core/values/colors.dart';
import '../../../data/models/PageData.dart';
import '../../home/employer/view.dart';

class EmployerMainNavigationController extends GetxController {
  RxInt index = 0.obs;
  late List<PageData> pages;
  setPages() {
    pages = [
      PageData(
          page:  EmployerHomePage(),
          icon: AppIcon.offers,
          title: "Mes Offres"
      ),
      PageData(
          page:  const ChatsScreen(),
          icon: AppIcon.chats,
          title: "chats"
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
    Get.toNamed(getNextRoute("addIcon"));
  }

}