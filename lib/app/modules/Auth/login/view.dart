import 'package:bamo/app/core/constants/AppGradient.dart';
import 'package:bamo/app/core/theme/app_text_style.dart';
import 'package:bamo/app/core/utils/extensions.dart';
import 'package:bamo/app/core/values/colors.dart';
import 'package:bamo/app/core/values/icons.dart';
import 'package:bamo/app/core/values/images_path.dart';
import 'package:bamo/app/modules/Auth/confirmation_login/view.dart';
import 'package:bamo/app/modules/Auth/login/widgets/social_media.widget.dart';
import 'package:bamo/app/modules/widgets/AppButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../routes/pages_routes.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> keyLogin = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: keyLogin,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          physics: const ClampingScrollPhysics(),
          padding: EdgeInsetsDirectional.symmetric(
            horizontal: 16,
          ),
          children: [
            40.hp,
            Image.asset(AppImage.background),
            12.hp,
            Text(
              "Connexion",
              style: AppTextStyles.b32,
            ),
            24.hp,
            Text(
              "Email",
              style: AppTextStyles.r14484848,
            ),
            4.hp,
            Container(

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColor.ColorF4F4F4,
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Entrer votre Email",
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SvgPicture.asset(AppIcon.email),
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
              "Mot de Passe",
              style: AppTextStyles.r14484848,
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
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SvgPicture.asset(AppIcon.lock),
                  ),
                  suffixIcon: Icon(Icons.remove_red_eye_outlined,color: Colors.grey,),
                  border: OutlineInputBorder(
                    // width: 0.0 produces a thin "hairline" border
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            4.hp,
            GestureDetector(
              onTap: (){
                Get.toNamed(AppRoutes.restPasswordStepOne);
              },
              child: Text(
                "Mot de passe oublié ?",
                style: AppTextStyles.b12.copyWith(color: AppColor.primaryColor),
              ),
            ),
            40.hp,
            AppButton(
                color: AppColor.primaryColor,
                title: "Commencer",
                linearGradient: AppGradient.horizontalBlueGradient,
                onPressed: () {
                  Get.to(() => ConfirmationScreen(pageType: ConfirmationStatus.login));
                }),
            40.hp,
            Row(
              children: [
                Expanded(child: Divider(color: AppColor.grey, thickness: 1)),
                6.wp,
                Text("ou"),
                6.wp,
                Expanded(child: Divider(color: AppColor.grey, thickness: 1)),
              ],
            ),
            24.hp,
            SocialMediaWidget(object: SocailMedia.google),
            8.hp,
            SocialMediaWidget(object: SocailMedia.facebook),
            54.hp,
            Center(
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: "Nouveau sur BAMO ?",
                  style: AppTextStyles.b12,
                ),
                TextSpan(
                  text: " Inscrivez-vou",
                  style:
                      AppTextStyles.b12.copyWith(color: AppColor.blueGradient),
                )
              ])),
            )
          ],
        ),
      ),
    );
  }
}
