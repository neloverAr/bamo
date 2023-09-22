
import 'package:bamo/app/core/theme/app_text_style.dart';
import 'package:bamo/app/core/theme/style_helper.dart';
import 'package:bamo/app/modules/MainNavigation/employer/controller.dart';
import 'package:bamo/app/modules/widgets/layouts/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import '../../../core/values/icons.dart';

class EmployerMainNavigation extends StatelessWidget with StylesHelper{
  EmployerMainNavigation({Key? key}) : super(key: key);
  EmployerMainNavigationController controller = Get.put(
    EmployerMainNavigationController(),
    permanent: true,);

  @override
  Widget build(BuildContext context) {
    return GetX<EmployerMainNavigationController>(builder: (controller){
      return HomeLayout(appBarHeight: 100.h, appBarContent: ListTile(
        leading: SvgPicture.asset(AppIcon.logo),
        title: Text("Global Job",style: AppTextStyles.r14,),
        subtitle: Row(children: [
          GradientText(
            'Alger ',
            colors: const [
              Color(0xFF3E32D1),
              Color(0xFF4C91FF),
              //Colors.teal,
            ],
          ),
          SvgPicture.asset(AppIcon.location),
        ],),
      ), screenContent: controller.pages[controller.index.value].page,
          pages: controller.pages,
          centerIcon: GestureDetector(
            onTap: (){
              controller.goToCenterIconScreen();
            },child: SvgPicture.asset(AppIcon.add,),
          ), currentIndex: controller.index.value,
          controller: controller,
          onTap: ()=> controller.changePage(1));
    });
  }

}
