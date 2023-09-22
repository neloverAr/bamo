import 'package:bamo/app/core/theme/app_text_style.dart';
import 'package:bamo/app/core/utils/extensions.dart';
import 'package:bamo/app/core/values/colors.dart';
import 'package:bamo/app/core/values/icons.dart';
import 'package:bamo/app/core/values/images_path.dart';
import 'package:bamo/app/modules/Auth/login/widgets/social_media.widget.dart';
import 'package:bamo/app/modules/widgets/AppButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
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
                  hintText: "Entrer votre Email",
                  prefixIcon: Icon(Icons.email,color: Colors.grey,),
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
                  prefixIcon: Icon(Icons.lock,color: Colors.grey,),
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
            Text(
              "Mot de passe oublié ?",
              style: AppTextStyles.b12.copyWith(color: AppColor.blueGradient),
            ),
            40.hp,
            AppButton(
                color: AppColor.blueGradient,
                title: "Commencer",
                onPressed: () {}),
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
