import 'package:bamo/app/core/constants/AppGradient.dart';
import 'package:bamo/app/core/values/images_path.dart';
import 'package:flutter/material.dart';

class HeaderSecondWidget extends StatelessWidget {
  final Widget content;
  final double height;
  const HeaderSecondWidget({Key? key, required this.content, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
        //color: color,
        gradient: AppGradient.curvedBlueGradient,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(24),
        ),
          image: DecorationImage(image: AssetImage(
          AppImage.header2background,
        ),fit: BoxFit.fitWidth)
      ),child: Center(
      child: content,
    ),
    );
  }
}
