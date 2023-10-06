
import 'package:bamo/app/modules/MainNavigation/employee/view.dart';
import 'package:bamo/app/modules/cv/view.dart';
import 'package:bamo/app/modules/notifications/view.dart';
import 'package:bamo/app/modules/profile/view.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../core/values/icons.dart';
import '../../data/models/drawerItem.dart';

class AppDrawerController extends GetxController {
  RxInt index = 0.obs;
  List<DrawerItem> items = [
    DrawerItem(label: "Offres d’Emplois",
        icon: AppIcon.stage,
        page: EmployeeMainNavigation(),
    ),
    DrawerItem(label: "Mon CV",
      icon: AppIcon.edit,
      page: CVScreen(),
    ),
    DrawerItem(label: "Notifications",
      icon: AppIcon.notification,
      page: NotificationScreen(),
    ),
    DrawerItem(label: "Mes Offres",
      icon: AppIcon.favorite,
      page: EmployeeMainNavigation(),
    ),
    DrawerItem(label: "inviter Vos Amis",
      icon: AppIcon.share,
      page: EmployeeMainNavigation(),
    ),
    DrawerItem(label: "FQA",
      icon: AppIcon.fqa,
      page: EmployeeMainNavigation(),
    ),
  ];

  changePage(int newIndex) {
    if (index == newIndex) {
      return;
    }
    index.value = newIndex;
  }

  @override
  void onInit() {
    super.onInit();
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