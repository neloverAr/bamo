import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import '../../core/constants/AppGradient.dart';
import '../../core/constants/padding.dart';
import '../../core/theme/app_text_style.dart';
import '../../core/values/icons.dart';

class AppBarWithEnregister extends StatelessWidget {
  final String title;
  final Function() onTap;
  const AppBarWithEnregister({Key? key, required this.title, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Padding(
        padding: EdgeInsets.symmetric(horizontal:15),
        child: GestureDetector(
            onTap: ()=>Navigator.pop(context),
            child: SvgPicture.asset(AppIcon.back)),
      ),
      title: Text(title,style: AppTextStyles.m18484848,),
      actions: [
        Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppPadding.mainPadding),
            child: InkWell(onTap: onTap,
                //Scaffold.of(context).openDrawer()
                child: GradientText("Enregistrer",colors: blueColors,)),
          ),
        ),
      ],
    );
  }
}
