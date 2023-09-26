import 'package:bamo/app/core/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/app_text_style.dart';

class AnimatedWelcome extends AnimatedWidget{
  const AnimatedWelcome({required height}):
  super (listenable: height);

  Animation<double> get height
  => listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedWelcome(height: height),
        SizedBox(height: height.value.h,),
        //40.hp,
        Text(
          "Welcome To Bamo",
          style: AppTextStyles.b32,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

}