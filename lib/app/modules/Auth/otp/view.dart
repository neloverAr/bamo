import 'package:bamo/app/core/theme/app_text_style.dart';
import 'package:bamo/app/core/utils/extensions.dart';
import 'package:bamo/app/core/values/images_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../core/values/colors.dart';
import '../../../routes/pages_routes.dart';
import '../../widgets/AppButton.dart';
import '../confirmation_login/view.dart';
import 'controller.dart';

class OtpScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> keyOpt = GlobalKey();
  OtpScreen({
    Key? key,
  }) : super(key: key);
  OTPController controller = Get.put(OTPController());
  @override
  Widget build(BuildContext context) {

    controller.startTimer();
    return Scaffold(
      key: keyOpt,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.grey,
            )),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            physics: const ClampingScrollPhysics(),
            padding: EdgeInsetsDirectional.symmetric(
              horizontal: 16,
            ),
            children: [
              Image.asset(AppImage.otpBackground),
              8.hp,
              Text("Entrer OTP",style: AppTextStyles.b32,),
              40.hp,
              OtpTextField(
                numberOfFields: 5,
                borderColor: Color(0xFF512DA8),
                //set to true to show as box or false to show as dash
                showFieldAsBox: true,
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode){
                  showDialog(
                      context: context,
                      builder: (context){
                        return AlertDialog(
                          title: Text("Verification Code"),
                          content: Text('Code entered is $verificationCode'),
                        );
                      }
                  );
                }, // end onSubmit
              ),
              80.hp,
              Text("Vous n'avez pas reçu de code ?",style: AppTextStyles.r14,textAlign: TextAlign.center,),
              8.hp,
              Text("Demander à nouveau",style: AppTextStyles.b14,textAlign: TextAlign.center,),
              24.hp,
              GetBuilder<OTPController>(builder: (controller){
                return Text(
                  '00:${controller.start.toString()}'
                  ,style: AppTextStyles.r14,textAlign: TextAlign.center,
                );
              }),
              24.hp,
              AppButton(
                  color: AppColor.blueGradient,
                  title: "Vérifier et Créer votre Compte",
                  onPressed: () {
                    //Get.to(() => ConfirmationScreen(pageType: ConfirmationStatus.signUp));
                    Get.toNamed(AppRoutes.restPasswordStepTwo);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
