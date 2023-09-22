import 'package:bamo/app/core/theme/app_text_style.dart';
import 'package:bamo/app/core/utils/extensions.dart';
import 'package:bamo/app/core/values/colors.dart';
import 'package:bamo/app/core/values/images_path.dart';
import 'package:bamo/app/modules/widgets/AppButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ConfirmationScreen extends StatelessWidget {
  ConfirmationScreen({Key? key, required this.pageType}) : super(key: key);
  ConfirmationStatus pageType;

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
          child: Column(
            children: [
              70.hp,
              Text(
                pageType.title,
                style: AppTextStyles.b32,
              ),
              16.hp,
              Text(
                pageType.subTitle,
                style: AppTextStyles.r12,
                textAlign: TextAlign.center,
              ),
              60.hp,
              Expanded(child: Image.asset(pageType.image)),
              Expanded(child: Container()),
              AppButton(
                  height: 50,
                  color: AppColor.blueGradient,
                  title: "Trouver un Job",
                  onPressed: () {}),
              Visibility(
                visible: pageType == ConfirmationStatus.signUp,
                  child: Column(
                children: [
                  24.hp,
                  Text(
                    "Complète ton Profil",
                    style: AppTextStyles.r12,
                    textAlign: TextAlign.center,
                  ),
                ],
              )),
              Expanded(child: Container())
            ],
          ),
        ),
      ),
    );
  }
}

enum ConfirmationStatus {
  login,
  signUp;

  String get image {
    switch (this) {
      case ConfirmationStatus.login:
        return AppImage.background2;
      case ConfirmationStatus.signUp:
        return AppImage.successSignUp;
    }
  }

  String get title {
    switch (this) {
      case ConfirmationStatus.login:
        return "Connexion réussie";
      case ConfirmationStatus.signUp:
        return "Inscription réussie";
    }
  }

  String get subTitle {
    switch (this) {
      case ConfirmationStatus.login:
        return "Vous êtes connecté(e) avec succès ! Bienvenue de nouveau dans notre\ncommunauté dynamique";
      case ConfirmationStatus.signUp:
        return "Votre inscription est un succès !\n Bienvenue dans notre communauté dynamique.";
    }
  }
}
