
import 'package:bamo/app/core/values/colors.dart';
import 'package:bamo/app/core/values/icons.dart';
import 'package:bamo/app/core/values/images_path.dart';
import 'package:bamo/app/modules/home/widgets/circularIconWidget.dart';
import 'package:bamo/app/modules/home/widgets/jobWidget.dart';
import 'package:bamo/app/modules/home/widgets/textNumber.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/theme/app_text_style.dart';


class EmployeeHomePage extends StatelessWidget{
  EmployeeHomePage({Key? key}) : super(key: key);
  //EmployerHomePageController controller =
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical:24),
          children: [
            const JobWidget(jobName: "Développeur Flutter", jobLocation: "Birkhadem, Alger", days: 29, waiting: 0,
                determined: 8, rejected: 8, image: AppImage.card1, jobSalary: "60,000 - 90,000 DA"),
            SizedBox(height: 16.h,),
            //////////////////////////////////////////////////////////////////
            const JobWidget(jobName: "Support ERP", jobLocation: "Birkhadem, Alger",
                days: 02, waiting: 4, determined: 2, rejected: 0,
                image: AppImage.card2, jobSalary: "30,000 - 60,000 DA"),
            //////////////////////////////////////////////////////////////////
            SizedBox(height: 16.h,),
            const JobWidget(jobName: "Développeur Flutter", jobLocation: "Birkhadem, Alger", days: 29, waiting: 0,
                determined: 8, rejected: 8, image: AppImage.card1, jobSalary: "60,000 - 90,000 DA"),

          ],
        );
  }

}
