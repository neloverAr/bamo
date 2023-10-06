
import 'package:bamo/app/core/values/icons.dart';
import 'package:bamo/app/modules/EmployeeMainPagesContent/view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller.dart';

class EmployeeHomePage extends StatelessWidget{
  EmployeeHomePage({Key? key}) : super(key: key);
  EmployeeHomePageController controller = Get.put(EmployeeHomePageController());

  @override
  Widget build(BuildContext context) {
    return EmployeeMainPagesContent(jobsSpecific: controller.jobs,
      specificIcon: AppIcon.fullTimeJob,specificType: "Permanent",);
  }

}
