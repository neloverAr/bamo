import 'package:bamo/app/core/constants/AppGradient.dart';
import 'package:bamo/app/core/constants/padding.dart';
import 'package:bamo/app/core/theme/app_text_style.dart';
import 'package:bamo/app/core/utils/keys.dart';
import 'package:bamo/app/core/values/colors.dart';
import 'package:bamo/app/core/values/images_path.dart';
import 'package:bamo/app/modules/widgets/avatar.dart';
import 'package:bamo/app/modules/widgets/progressioIndicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import '../../../core/values/icons.dart';

class HeaderLoggedUser extends StatelessWidget {
  final double profileCompleted = .24;
  const HeaderLoggedUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppPadding.mainPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            contentPadding: EdgeInsets.symmetric(vertical:0,horizontal: 0),
            //isualDensity: VisualDensity(horizontal: 0, vertical: -4),
            leading: Avatar(image: AppImage.avatar,radius: 28,),
            title: Text("Hachemi Mouhamed",style: AppTextStyles.m14484848,),
            subtitle: Row(children: [
              GradientText(
                'Alger ',
                colors: const [
                  Color(0xFF3E32D1),
                  Color(0xFF4C91FF),
                  //Colors.teal,
                ],
              ),
              SvgPicture.asset(AppIcon.location),
            ],),
            trailing: InkWell(onTap:(){
              Scaffold.of(context).openDrawer();
            },
                child: SvgPicture.asset(AppIcon.menu)),
          ),SizedBox(height: 16.h,),
          ProgressionIndicator(progress: profileCompleted),
          SizedBox(height: 8.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Bamo en progression de ${(profileCompleted*100).round()}%"),
              InkWell(
                onTap: (){
                  //TODO
                },
                child: GradientText("compléter ton Bamo", colors: blueColors,
                  style: TextStyle(decoration: TextDecoration.underline,),),
              )
            ],
          ),SizedBox(height: 8.h,),
        ],
      ),
    );
  }
}
