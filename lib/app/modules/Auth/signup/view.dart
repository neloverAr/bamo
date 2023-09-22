import 'package:bamo/app/core/theme/app_text_style.dart';
import 'package:bamo/app/core/utils/extensions.dart';
import 'package:bamo/app/core/values/colors.dart';
import 'package:bamo/app/modules/Auth/login/widgets/social_media.widget.dart';
import 'package:bamo/app/routes/pages_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../widgets/AppButton.dart';
import '../confirmation_login/view.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          physics: const ClampingScrollPhysics(),
          padding: const EdgeInsetsDirectional.symmetric(
            horizontal: 16,
          ),
          children: [
            40.hp,
            Text(
              "Welcome To Bamo",
              style: AppTextStyles.b32,
              textAlign: TextAlign.center,
            ),
            16.hp,
            Text(
              "Votre prochain emploi est ici",
              style: AppTextStyles.r16,
              textAlign: TextAlign.center,
            ),
            24.hp,
            Text(
              "Inscriver rapidement avec",
              style: AppTextStyles.r16.copyWith(color: AppColor.labelBlack),
              textAlign: TextAlign.center,
            ),
            8.hp,
            Row(
              children: [
                Expanded(
                    child: SocialMediaWidget(
                        object: SocailMedia.google,
                        title: SocailMedia.google.signUpTitle)),
                16.wp,
                Expanded(
                    child: SocialMediaWidget(
                        object: SocailMedia.facebook,
                        title: SocailMedia.facebook.signUpTitle)),
              ],
            ),
            24.hp,
            Row(
              children: [
                Expanded(child: Divider(color: AppColor.grey, thickness: 1)),
                6.wp,
                Text("ou"),
                6.wp,
                Expanded(child: Divider(color: AppColor.grey, thickness: 1)),
              ],
            ),
            14.hp,
            Text(
              "Nom Complet",
              style: AppTextStyles.b14,
            ),
            8.hp,
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColor.ColorF4F4F4,
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: "Entrer votre nom complet ",
                  prefixIcon: Icon(
                    Icons.person,
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
              "Email",
              style: AppTextStyles.b14,
            ),
            8.hp,
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColor.ColorF4F4F4,
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: "Entrer votre Email",
                  prefixIcon: Icon(
                    Icons.email,
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
              "Numéro de téléphone",
              style: AppTextStyles.b14,
            ),
            8.hp,
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColor.ColorF4F4F4,
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: "Entrer votre numéro de téléphone",
                  prefixIcon: Icon(
                    Icons.phone,
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
            48.hp,
            AppButton(
                color: AppColor.blueGradient,
                title: "Continuer",
                onPressed: () {
                  Get.toNamed(AppRoutes.otp);
                }),
            16.hp,
            Row(
              children: [
                Checkbox(value: false, onChanged: (val) {}),
                6.wp,
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: "j'ai lu et j'accepte les",
                    style: AppTextStyles.b12,
                  ),
                  TextSpan(
                    text: "termes et conditions",
                    style: AppTextStyles.b12
                        .copyWith(color: AppColor.blueGradient),
                  )
                ]))
              ],
            ),
            15.hp,
            Center(
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: "Vous avez déja un compte ?",
                  style: AppTextStyles.b12,
                ),
                TextSpan(
                  text: " Connectez-vous",
                  style:
                      AppTextStyles.b12.copyWith(color: AppColor.blueGradient),
                )
              ])),
            ),
            16.hp,
          ],
        ),
      ),
    );
  }
}
