import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/constants/AppGradient.dart';
import '../../../core/constants/padding.dart';
import '../../../core/theme/app_text_style.dart';
import '../../../core/values/colors.dart';
import '../../widgets/AppButton.dart';
import '../../MainNavigation/employee/controller.dart';

class HeaderFirstSection extends StatelessWidget {
  HeaderFirstSection({Key? key}) : super(key: key);
  EmployeeMainNavigationController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppPadding.mainPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Bienvenue sur Bamo !!",style: AppTextStyles.m16,),
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
    );
  }
}
