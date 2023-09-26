
import 'package:bamo/app/core/values/icons.dart';
import 'package:bamo/app/modules/EmployeeMainPagesContent/view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class FreelancerScreen extends StatelessWidget{
  FreelancerScreen({Key? key}) : super(key: key);
  FreelancerController controller = Get.put(FreelancerController());

  @override
  Widget build(BuildContext context) {
    return EmployeeMainPagesContent(jobsSpecific: controller.jobs,
      specificIcon: AppIcon.freelancerJob,specificType: "Freelance",);
  }

}
