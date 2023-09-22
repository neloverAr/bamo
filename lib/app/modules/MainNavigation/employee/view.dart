
import 'package:bamo/app/core/constants/AppGradient.dart';
import 'package:bamo/app/core/constants/padding.dart';
import 'package:bamo/app/core/theme/app_text_style.dart';
import 'package:bamo/app/core/theme/style_helper.dart';
import 'package:bamo/app/core/values/colors.dart';
import 'package:bamo/app/modules/widgets/AppButton.dart';
import 'package:bamo/app/modules/widgets/layouts/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../core/values/icons.dart';
import 'controller.dart';

class EmployeeMainNavigation extends StatelessWidget with StylesHelper{
  EmployeeMainNavigation({Key? key}) : super(key: key);
  EmployeeMainNavigationController controller = Get.put(
    EmployeeMainNavigationController(),
    permanent: true,);

  @override
  Widget build(BuildContext context) {
    return GetX<EmployeeMainNavigationController>(builder: (controller){
      return HomeLayout(appBarHeight: 175.h, appBarContent:
      Padding(
        padding: EdgeInsets.symmetric(horizontal: AppPadding.mainPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Bienvenue sur Bamo !!",style: AppTextStyles.b16,),
            SizedBox(height: 4.h,),
            Text("Trouvez votre emploi idéal et boostez votre carrière avec notre plateforme de recrutement.",style: AppTextStyles.r12,),
            SizedBox(height: 4.h,),
            Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children: [
              Expanded(child: AppButton(color: Colors.white, title: "Inscription",
                onPressed: (){
                controller.goToSignup();
                },height: 40,borderRadius: 10,fontColor: AppColor.secondaryColor,
                borderColor:AppColor.secondaryColor ,)),
              SizedBox(width: 16.w,),
              Expanded(child: AppButton(color: Colors.white, title: "Connexion",
                onPressed: (){
                  controller.goToLogin();
                },height: 40,borderRadius: 10,
                linearGradient: AppGradient.horizontalGreenGradient,)),
            ],)
          ],
        ),
      )
          , screenContent: controller.pages[controller.index.value].page,
          pages: controller.pages,
          centerIcon: GestureDetector(
            onTap: (){
              controller.goToCenterIconScreen();
            },child: SvgPicture.asset(AppIcon.clipboard,),
          ), currentIndex: controller.index.value,
          controller: controller,
          floatingActionButton: FloatingActionButton(
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
