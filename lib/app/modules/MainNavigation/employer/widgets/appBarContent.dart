import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import '../../../../core/theme/app_text_style.dart';
import '../../../../core/values/icons.dart';

class AppBarContent extends StatelessWidget {
  const AppBarContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      leading: SvgPicture.asset(AppIcon.logo),
      title: Text("Global Job",style: AppTextStyles.r14484848,),
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
    );
  }
}
