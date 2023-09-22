
import 'package:bamo/app/core/theme/style_helper.dart';
import 'package:bamo/app/core/values/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'controller.dart';

class SplashScreen extends StatelessWidget with StylesHelper{
  SplashScreen({Key? key}) : super(key: key);
  SplashController controller = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: appLinearGradient(context,axis: Axis.horizontal,)
        ),
        child: GetX<SplashController>(
          builder: (controller){
            return Center(
              child:SvgPicture.asset(
                  controller.timer.value%2==0
                  ?AppIcon.splash1
                  :AppIcon.splash2)
              ,);
          },
        ),
      ),
    );
  }
}
