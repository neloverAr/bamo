import 'package:bamo/app/core/constants/AppGradient.dart';
import 'package:bamo/app/core/theme/app_text_style.dart';
import 'package:bamo/app/core/values/colors.dart';
import 'package:bamo/app/core/values/icons.dart';
import 'package:bamo/app/core/values/images_path.dart';
import 'package:bamo/app/data/services/storage/services.dart';
import 'package:bamo/app/modules/SelectUser/view.dart';
import 'package:bamo/app/modules/appDrawer/controller.dart';
import 'package:bamo/app/modules/widgets/AppButton.dart';
import 'package:bamo/app/modules/widgets/avatar.dart';
import 'package:bamo/app/modules/widgets/avatarWithEdit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../core/utils/keys.dart';
import 'widgets/drawerLine.dart';

class AppDrawer extends StatelessWidget {
  AppDrawer({Key? key}) : super(key: key);
  AppDrawerController controller = Get.put(AppDrawerController());

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 227.h,
            child: Center(
              child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AvatarWithEdit(image: AppImage.avatar, radius: 50),
                    SizedBox(height: 8.h,),
                    Text("Hachemi Mouhamed",style: AppTextStyles.m14484848,),
                    SizedBox(height: 4.h,),
                    GradientText("Graphic Designer", colors: blueColors)
                  ],
                ),
              ),
            ),
          ),Divider(color: AppColor.Color888888,thickness: 1,height: 1,),
          SizedBox(height: 27.h,),
          GetX<AppDrawerController>(builder: (controller){
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  List.generate(
                  controller.items.length,
                      (index) => GestureDetector(
                      onTap: (){
                        controller.changePage(index);
                        Scaffold.of(context).closeDrawer();
                        Get.to(()=>controller.items[index].page);
                      },
                      child: DrawerLine(selected: controller.index.value==index,
                        value: controller.items[index].label,
                        icon: controller.items[index].icon,
                      ))),
            );
          }),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 26.w,vertical: 8.h),
            child: GestureDetector(
              onTap: (){
                StorageService storage = Get.find();
                storage.write(isLoggedIn, false);
                Get.off(()=>SelectUserScreen());
              },
              child: Row(
                children: [
                  SvgPicture.asset(AppIcon.logout,),
                  SizedBox(width: 8.w,),
                  Text("Déconnexion",style: AppTextStyles.m14.copyWith(
                      color: AppColor.red),)],
              ),
            ),
          ),Spacer(),
          Center(
            child: AppButton(title: "Espace Pro",width: 102.w,height: 33.h,
              onPressed: (){},linearGradient: AppGradient.horizontalBlueGradient,),
          ),SizedBox(height: 24.h,),
          Divider(color: AppColor.Color888888,thickness: 1,height: 1,),
          Container(
            height: 72.h,
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 26.w,vertical: 8.h),                child: Row(
                  children: [
                    SvgPicture.asset(AppIcon.freelance,color:AppColor.titleBlack ,),
                    SizedBox(width: 8.w,),
                    Text("Français",style: AppTextStyles.m14.copyWith(
                        color: AppColor.titleBlack),)],
                ),
              ),
            ),
          )

      ])
    );
  }
}
