
import 'package:bamo/app/core/values/icons.dart';
import 'package:bamo/app/modules/chats/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../core/values/colors.dart';
import '../../data/models/PageData.dart';
import '../home/view.dart';

class MainNavigationController extends GetxController {
  RxInt index = 0.obs;
  late List<PageData> pages;
  final GlobalKey<ScaffoldState> key = GlobalKey();
  setPages() {
    pages = [
      PageData(
          page: const HomePage(),
          icon: SvgPicture.asset(AppIcon.offers,color: AppColor.grey,),
          iconSelected: SvgPicture.asset(AppIcon.offers),
          index: 0,
          title: "Mes Offres"
      ),
      PageData(
          page:  const ChatsScreen(),
          icon: SvgPicture.asset(AppIcon.chats,color: AppColor.grey,),
          index: 1,
          iconSelected: SvgPicture.asset(AppIcon.chats,color: AppColor.primaryColor,),
          title: "chats"
      ),
    ];
  }
  changePage(int newIndex) {
    // if (index == newIndex) {
    //   return;
    // }
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

}