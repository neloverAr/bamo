import 'package:bamo/app/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class TextNumber extends StatelessWidget {
  final int num;
  final String text;
  const TextNumber({Key? key, required this.num, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("$num",style: AppTextStyles.b12,),
        Text(text,style: AppTextStyles.b12,)
      ],
    );
  }
}
