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

class LanguageSectionScreen extends StatelessWidget {
  LanguageSectionScreen({Key? key}) : super(key: key);
  LangSectionController controller = Get.put(LangSectionController());

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
            Text("AAjouter une Langue",style: AppTextStyles.m14,),
            16.hp,
            ProfileTextField(hintText: "Langue",
              controller: controller.langController,
              prefixIcon: Icon(icon:AppIcon.language),suffixIcon:
                Icon(icon:AppIcon.arrowRight)),
            12.hp,
            ProfileTextField(hintText: "Niveau",
              controller: controller.levelController,
              prefixIcon: Icon(icon:AppIcon.level),suffixIcon:
                Icon(icon:AppIcon.arrowRight)),
            12.hp,
            ProfileTextField(hintText: "Diplôme",
              controller: controller.diplomaController,
              prefixIcon: Icon(icon:AppIcon.diplome),)

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

