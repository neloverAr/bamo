import 'package:bamo/app/core/constants/padding.dart';
import 'package:bamo/app/core/utils/extensions.dart';
import 'package:bamo/app/modules/cv/widgets/addExperience/controller.dart';
import 'package:bamo/app/modules/cv/widgets/sectorWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../core/theme/app_text_style.dart';
import '../../../../core/values/icons.dart';
import 'controller.dart';

class SectorsScreen extends StatelessWidget {
  SectorsScreen({Key? key}) : super(key: key);
  SectorsController controller = Get.put(SectorsController());

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
      ),body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppPadding.mainPadding,vertical: 16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Secteurs",style: AppTextStyles.m14,),
            8.hp,
            Text("Choisissez parmi les suggestions pour de meilleurs résultats",style: AppTextStyles.r10,),
            16.hp,
            Expanded(
              child: SafeArea(
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: controller.sectors.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                    ), itemBuilder: (BuildContext context, int index){
                      return GestureDetector(
                          onTap: (){
                            ExperienceSectionController expController = Get.find();
                            expController.sector.value = controller.sectors[index].sectorName;
                            Get.back();
                          },
                          child: SectorWidget(sector: controller.sectors[index]));
                }
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
