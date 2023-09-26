
import 'package:bamo/app/core/theme/style_helper.dart';
import 'package:bamo/app/modules/MainNavigation/employer/controller.dart';
import 'package:bamo/app/modules/widgets/layouts/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../core/constants/padding.dart';
import '../../../core/values/icons.dart';
import 'widgets/appBarContent.dart';

class EmployerMainNavigation extends StatelessWidget with StylesHelper{
  EmployerMainNavigation({Key? key}) : super(key: key);
  EmployerMainNavigationController controller = Get.put(
    EmployerMainNavigationController(),
    permanent: true,);

  @override
  Widget build(BuildContext context) {
    return GetX<EmployerMainNavigationController>(builder: (controller){
      return HomeLayout(
          appBar: AppBar(
            toolbarHeight:  100.h,
            shadowColor: Color(0xFF18274B).withOpacity(.12),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
              ),
            ),
            flexibleSpace: SafeArea(
              child: Padding(
                padding: EdgeInsets.only(
                  left: AppPadding.mainPadding,
                  //  top:32.0,
                  //bottom: 20.0
                ),
                child: const Center(
                  child: AppBarContent(),
                ),
              ),
            ),
            backgroundColor: Colors.white,
          ),

          screenContent: controller.pages[controller.index.value].page,
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
