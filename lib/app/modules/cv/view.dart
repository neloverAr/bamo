import 'package:bamo/app/core/constants/ContainerDecoration.dart';
import 'package:bamo/app/core/utils/extensions.dart';
import 'package:bamo/app/core/values/colors.dart';
import 'package:bamo/app/modules/widgets/addSectionBox.dart';
import 'package:bamo/app/modules/widgets/progressioIndicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import '../../core/constants/AppGradient.dart';
import '../../core/constants/padding.dart';
import '../../core/theme/app_text_style.dart';
import '../../core/values/icons.dart';
import 'controller.dart';

class CVScreen extends StatelessWidget {
  CVScreen({Key? key}) : super(key: key);
  MonCVController controller = Get.put(MonCVController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal:15),
          child: GestureDetector(
              onTap: ()=>Navigator.pop(context),
              child: SvgPicture.asset(AppIcon.back)),
        ),
        title: Text("Mon CV",style: AppTextStyles.m18484848,),
        actions: [
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: AppPadding.mainPadding),
              child: InkWell(onTap: (){
                //TODO
              },
                  //Scaffold.of(context).openDrawer()
                  child: GradientText("Enregistrer",colors: blueColors,)),
            ),
          ),
        ],
      ),body: ListView(
      padding: EdgeInsets.symmetric(horizontal: AppPadding.mainPadding,),
      children: [
        Container(
          height: 60.h,
          decoration: dataDecoration,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width:300.w,child: Text("Remplissez vos informations et maximisez vos chances de trouver un emploi",
                  style: AppTextStyles.r12,)),
                SvgPicture.asset(AppIcon.warning)
              ],
            ),
          ),
        ),16.hp,
        Container(
          height: 69.h,
          decoration: dataDecoration,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Votre progression",
                      style: AppTextStyles.m12000000,),
                    Text("${(controller.progress*100).round()}%",
                      style: AppTextStyles.m12.copyWith(color: AppColor.green),),
                  ],
                ),12.hp,
                ProgressionIndicator(progress: controller.progress)
              ],
            ),
          ),
        ),16.hp,
        AddSectionBox(onTap: (){
        }, sectionName: "Ajouter une Description",
            sectionDesc: "Ajouter une brève desdcription pour\nvous présenter aux entreprises")
        ,16.hp,
        AddSectionBox(onTap: (){
    }, sectionName: "Ajouter une Expérience",
    sectionDesc: "Ajouter vos expériences professionnelles pour\ntrouver l’offre qui vous correspond")
        ,16.hp,
        AddSectionBox(onTap: (){
        }, sectionName: "Ajouter une Langue",
            sectionDesc: "Ajouter vos langues pour trouver l’offre qui vous\ncorrespond")
        ,16.hp,
        AddSectionBox(onTap: (){
        }, sectionName: "Ajouter formation ou diplôme",
            sectionDesc: "Ajouter votre niveau d’étude, vos cours ou\nformations")
      ],
    ),
    );
  }
}
