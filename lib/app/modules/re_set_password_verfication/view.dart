import 'package:bamo/app/core/theme/app_text_style.dart';
import 'package:bamo/app/core/utils/extensions.dart';
import 'package:bamo/app/core/values/images_path.dart';
import 'package:bamo/app/routes/pages_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../core/values/colors.dart';
import '../widgets/AppButton.dart';

class RestPasswordStepTwoScreen extends StatelessWidget {
  RestPasswordStepTwoScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.grey,
            )),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            shrinkWrap: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            physics: const ClampingScrollPhysics(),
            padding: EdgeInsetsDirectional.symmetric(
              horizontal: 16,
            ),
            children: [
              Image.asset(AppImage.girlBackground,height: 170,),
              20.hp,
              Text(
                "Vérification",
                style: AppTextStyles.b32,
              ),
              40.hp,
              Text(
                "Mot de passe",
                style: AppTextStyles.r14,
              ),
              4.hp,
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColor.ColorF4F4F4,
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Entrer votre mot de passe",
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                      // width: 0.0 produces a thin "hairline" border
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              12.hp,
              Text(
                "Confirmer le mot de passe",
                style: AppTextStyles.r14,
              ),
              4.hp,
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColor.ColorF4F4F4,
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Confirmer le nouveau mot de passe",
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                      // width: 0.0 produces a thin "hairline" border
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              100.hp,
              AppButton(
                  color: AppColor.blueGradient,
                  title: "Confirmer",
                  onPressed: () {
                    Get.toNamed(AppRoutes.otp);
                  }),
              24.hp
            ],
          ),
        ),
      ),
    );
  }
}
