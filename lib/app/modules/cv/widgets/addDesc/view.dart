import 'package:bamo/app/core/constants/padding.dart';
import 'package:bamo/app/core/theme/app_text_style.dart';
import 'package:bamo/app/core/utils/extensions.dart';
import 'package:bamo/app/modules/widgets/appBarWithEnregister.dart';
import 'package:bamo/app/modules/widgets/profileTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'controller.dart';

class DescriptionSectionScreen extends StatelessWidget {
  DescriptionSectionScreen({Key? key}) : super(key: key);
  DescSectionController controller = Get.put(DescSectionController());

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
            Text("Ajouter une Description",style: AppTextStyles.m14,),
            16.hp,
            ProfileTextField(hintText: "Exemple 1 : Mes qualités : organisé, optimiste,\ndéterminé, felexible et toujours souriante",
                controller: controller.descController,maxLines: 5,maxLength: 300,)
          ],
        ),
      ),
    );
  }
}
