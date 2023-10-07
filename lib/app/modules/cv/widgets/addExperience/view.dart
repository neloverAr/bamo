import 'package:bamo/app/core/constants/padding.dart';
import 'package:bamo/app/core/utils/extensions.dart';
import 'package:bamo/app/core/values/colors.dart';
import 'package:bamo/app/core/values/icons.dart';
import 'package:bamo/app/modules/widgets/appBarWithEnregister.dart';
import 'package:bamo/app/modules/widgets/profileTextField.dart';
import 'package:bamo/app/routes/pages_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../core/theme/app_text_style.dart';
import 'controller.dart';

class ExperienceSectionScreen extends StatelessWidget {
  ExperienceSectionScreen({Key? key}) : super(key: key);
  ExperienceSectionController controller = Get.put(ExperienceSectionController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithEnregister(title: "Mon CV", onTap: (){
        //TODO
      }),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppPadding.mainPadding,vertical: 16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Ajouter une Expérience",style: AppTextStyles.m14,),
            16.hp,
            ProfileTextField(hintText: "intitulé du poste (ex : Vendeur)",
                controller: controller.jobTitleController,
              prefixIcon: Icon(icon:AppIcon.jobTitle),),
            12.hp,
            ProfileTextField(hintText: "Nom de le société",
              controller: controller.jobTitleController,
              prefixIcon: Icon(icon:AppIcon.EURLNAPEC),),
            12.hp,
            GestureDetector(
              onTap: (){
                Get.toNamed(AppRoutes.sectors);
              },
              child: GetX<ExperienceSectionController>(builder: (controller){
                return ProfileTextField(hintText: controller.sector.value,
                  controller: controller.jobTitleController,
                  prefixIcon: Icon(icon:AppIcon.stage),suffixIcon:
                  Icon(icon:AppIcon.arrowRight),enabled: false,);
              }),
            ),
            12.hp,
            ProfileTextField(hintText: "Date début",
              controller: controller.jobTitleController,
              prefixIcon: Icon(icon:AppIcon.calender),),
            12.hp,
            ProfileTextField(hintText: "Date fin",
              controller: controller.jobTitleController,
              prefixIcon: Icon(icon:AppIcon.calender),),
            12.hp,
            ProfileTextField(hintText: "Description du poste (Réalisation, Tâche...)",
              controller: controller.jobTitleController,maxLines: 6,),
            16.hp,
            Row(
              children: [
                Text("Travail en cours",style: AppTextStyles.r12484848,),
                16.wp,
                GetX<ExperienceSectionController>(builder: (controller){
                  return Switch(
                    // This bool value toggles the switch.
                    value: controller.stillWork.value,
                    activeColor: AppColor.green,
                    onChanged: (bool value) {
                      controller.changeSwitchValue(value);
                    },
                  );
                })
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Icon extends StatelessWidget {
  final String icon;
  const Icon({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SvgPicture.asset(icon,color: AppColor.Color888888,),
    );
  }
}

