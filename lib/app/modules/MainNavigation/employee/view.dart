
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../core/theme/style_helper.dart';
import '../../../core/values/icons.dart';
import '../../widgets/layouts/home.dart';
import 'controller.dart';

class EmployeeMainNavigation extends StatelessWidget with StylesHelper{
  EmployeeMainNavigation({Key? key}) : super(key: key);
  EmployeeMainNavigationController controller = Get.put(
    EmployeeMainNavigationController(),
    permanent: true,);
  double height2 = 138.h;

  @override
  Widget build(BuildContext context) {
    return GetX<EmployeeMainNavigationController>(builder: (controller){
      return HomeLayout(
        scaffoldBG: Colors.white,
          screenContent:controller.pages[controller.index.value].page,
          pages: controller.pages,
          centerIcon: GestureDetector(
            onTap: (){
              controller.goToCenterIconScreen();
            },child: SvgPicture.asset(AppIcon.clipboard,),
          ), currentIndex: controller.index.value,
          controller: controller,
          floatingActionButton: FloatingActionButton(
            key: Key("location"),
            child: SvgPicture.asset(AppIcon.locationFloating),
            backgroundColor: Colors.white,
            onPressed: () {
              controller.goToLocationScreen();
            },
          ),
          onTap: ()=> controller.changePage(1));
    });
  }

}
