import 'package:bamo/app/core/values/colors.dart';
import 'package:bamo/app/core/values/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/theme/app_text_style.dart';

class SocialMediaWidget extends StatelessWidget {
  SocialMediaWidget({Key? key, required this.object,this.onTap}) : super(key: key);
  SocailMedia object;
  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        if (onTap != null){
          onTap!();
        }
      },
      child: Container(
        padding: EdgeInsetsDirectional.all(16),
        decoration: BoxDecoration(
            color: AppColor.ColorF4F4F4,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(width: 2, color: AppColor.ColorF7F7F7)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SvgPicture.asset(object.icon),
            Text(
              object.title,
              style: AppTextStyles.b14,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}

enum SocailMedia {
  google,
  facebook;

  String get icon {
    switch (this) {
      case SocailMedia.google:
        return AppIcon.google;
      case SocailMedia.facebook:
        return AppIcon.facebook;
    }
  }

  String get title {
    switch (this) {
      case SocailMedia.google:
        return "Se connecter avec Google";
      case SocailMedia.facebook:
        return "Se connecter avec Google";
    }
  }
}
