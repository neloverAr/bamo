
import 'package:bamo/app/core/theme/app_text_style.dart';
import 'package:bamo/app/core/theme/style_helper.dart';
import 'package:bamo/app/core/utils/extensions.dart';
import 'package:bamo/app/modules/MainNavigation/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import '../../core/values/colors.dart';
import '../../core/values/icons.dart';

class MainNavigation extends StatelessWidget with StylesHelper{
  MainNavigation({Key? key}) : super(key: key);
  MainNavigationController controller = Get.put(
    MainNavigationController(),
    permanent: true,);

  @override
  Widget build(BuildContext context) {
    return GetX<MainNavigationController>(builder: (controller){
      return Scaffold(
        key: controller.key,
        appBar: AppBar(
          toolbarHeight: 80,
          shadowColor: Color(0xFF18274B).withOpacity(.12),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(30),
            ),
          ),
          flexibleSpace: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(
                left: 20.0,
                //  top:32.0,
                //bottom: 20.0
              ),
              child: ListTile(
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
              ),
            ),
          ),
          // leading: SvgPicture.asset(AppIcon.logo),
          // title: Text("Global Job"),
          backgroundColor: Colors.white,
        ),
        body: SafeArea(
          left: false,
          right: false,
          child: Stack(
            fit: StackFit.expand,
            children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: controller.pages[controller.index.value].page,
            ),
            PositionedDirectional(
                bottom: 10,
                start: 0,
                end: 0,
                child:
                Container(
                  //margin: const EdgeInsets.symmetric(horizontal: 20, ),
                  padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(30)
                      ),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.9),
                            blurRadius: 7,
                            offset: Offset(0, 3),
                            spreadRadius: 1)
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: GestureDetector(
                            onTap: (){
                              controller.changePage(0);
                            },
                            child: Column(
                              children: [
                                controller.index == 0 ? controller.pages[0].iconSelected:
                                controller.pages[0].icon,
                                Text(controller.pages[0].title!,style: TextStyle(
                                  color: controller.index == 0 ?
                                  AppColor.primaryColor : AppColor.grey,
                                ),)
                              ],
                            )),
                      ),Expanded(child: GestureDetector(
                        onTap: (){

                        },child: SvgPicture.asset(AppIcon.add,),
                      )),Expanded(child:GestureDetector(
                          onTap: (){
                            controller.changePage(1);
                          },
                          child: Column(
                            children: [
                              controller.index == 1 ? controller.pages[1].iconSelected:
                              controller.pages[1].icon,
                              Text(controller.pages[1].title!,style: TextStyle(
                                color: controller.index == 1 ?
                                AppColor.primaryColor : AppColor.grey,
                              ),)
                            ],
                          )),)
                    ]
                  ),
                )
            )

          ],),
        ),
      );
    });
  }

}
