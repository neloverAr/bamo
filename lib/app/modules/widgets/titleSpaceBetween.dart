import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import '../../core/constants/AppGradient.dart';
import '../../core/theme/app_text_style.dart';

class TitleSpaceBetween extends StatelessWidget {
  final String title;
  final TextStyle? textStyle;
  const TitleSpaceBetween({Key? key, required this.title,
    this.textStyle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,style: textStyle??AppTextStyles.m16,),
        GradientText("Voir tout", colors: blueColors,style:AppTextStyles.m13,),

      ],
    );
  }
}
