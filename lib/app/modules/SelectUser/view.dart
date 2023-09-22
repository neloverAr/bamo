import 'package:bamo/app/core/constants/AppGradient.dart';
import 'package:bamo/app/core/constants/padding.dart';
import 'package:bamo/app/core/theme/app_text_style.dart';
import 'package:bamo/app/core/theme/style_helper.dart';
import 'package:bamo/app/core/values/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../core/values/AppConstatns.dart';
import 'controller.dart';
import 'widgets/userCardWidget.dart';

class SelectUserScreen extends StatelessWidget with StylesHelper{
  SelectUserScreen({Key? key}) : super(key: key);
  SelectUserController controller = Get.put(SelectUserController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset(AppIcon.selectUser),
            SizedBox(height: 24.h,),
            Container(
              width: 272.w,
              child: Text("Trouvez les meilleurs talents ou votre prochain emploi avec Bamo",
                textAlign:TextAlign.center,style: AppTextStyles.r16),
            ),
            SizedBox(height: 88.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppPadding.mainPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                  child: UserCardWidget(icon: AppIcon.employeeUser,
                      text: "Trouvez votre prochain emploi",
                      buttonText: "Je suis un employé",
                  gradient:AppGradient.curvedGreenGradient, onTap: () {
                    controller.goToNextScreen(Users.employee);
                    },
                  ),
                ),SizedBox(width: 16.w,),
                    Expanded(
                    child: UserCardWidget(icon: AppIcon.employerUser,
                        text: "Recrutez les meilleurs talents",
                        buttonText: "Je suis un employeur",
                      gradient: AppGradient.curvedBlueGradient, onTap: () {
                        controller.goToNextScreen(Users.employer);
                      },
                    ),
                  ),
              ],),
            ),
            SizedBox(height: 131.h,),
            SafeArea(
              child: Text("Bamo, by Global Job",
                style: AppTextStyles.r14.copyWith(color: Color(0xFF888888)),),
            )
          ],
        ),
      ),
    );
  }
}
