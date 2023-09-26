import 'package:bamo/app/functions/getFontsFamily.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class AppButton extends StatelessWidget {
  final String title;
  final double height;
  final double? width;
  final LinearGradient? linearGradient;
  final double borderRadius;
  final Color? borderColor;
  final double fontSize;
  final Color? color;
  final BorderSide? borderSide;
  final Color fontColor;
  final void Function() onPressed;
  final FontWeight fontWeight;
  final TextStyle? style;
  final  TextAlign? textAlign;
  const AppButton(
      {Key? key,
        this.color,
        this.fontColor = Colors.white,
        this.borderSide,
        this.height = 48,
        this.fontWeight = FontWeight.w500,
        this.width,
        this.borderRadius = 12,
        this.fontSize = 14,
        required this.title,
        required this.onPressed,this.style,this.textAlign, this.linearGradient,
        this.borderColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height.h,
      width: width??double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(
          color: borderColor??Colors.transparent
        ),
        gradient: linearGradient
      ),child: ElevatedButton(
        onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius),),
      ),
        child: Text(title,
            style: TextStyle(
      fontSize: fontSize,
      color: fontColor,
      fontWeight: fontWeight,fontFamily: fontMedium)),
      ),
    );

  }
}

// Center(
//   child: Text(title,style: TextStyle(
//     fontSize: fontSize,
//     color: fontColor,
//     fontWeight: fontWeight)),
// ),