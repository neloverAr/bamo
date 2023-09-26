

import 'package:bamo/app/core/values/icons.dart';
import 'package:bamo/app/modules/EmployeeMainPagesContent/view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class StageScreen extends StatelessWidget{
  StageScreen({Key? key}) : super(key: key);
  StageController controller = Get.put(StageController());

  @override
  Widget build(BuildContext context) {
    return EmployeeMainPagesContent(jobsSpecific: controller.jobs,
      specificIcon: AppIcon.stageJob,specificType: "Stage",);
  }

}
