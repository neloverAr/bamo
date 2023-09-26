

import 'package:bamo/app/core/values/icons.dart';
import 'package:bamo/app/modules/EmployeeMainPagesContent/view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';


class PartTimeScreen extends StatelessWidget{
  PartTimeScreen({Key? key}) : super(key: key);
  PartTimeController controller = Get.put(PartTimeController());

  @override
  Widget build(BuildContext context) {
    return EmployeeMainPagesContent(jobsSpecific: controller.jobs,
      specificIcon: AppIcon.partTimeJob,specificType: "Mi-temps",);
  }

}
