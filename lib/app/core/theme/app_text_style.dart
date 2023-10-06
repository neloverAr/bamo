import 'package:bamo/app/core/values/colors.dart';
import 'package:bamo/app/functions/getFontsFamily.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyles {
  static TextStyle get r10 =>  TextStyle(
    fontSize: 10.sp,
    //fontWeight: FontWeight.w400,
    height: 1.3,
    color: AppColor.titleBlack,//484848
    //fontFamily: fontMedium,
  );
  static TextStyle get m10 =>  TextStyle(
      fontSize: 10.sp,
      //fontWeight: FontWeight.w400,
      height: 1.3,
      color: AppColor.titleBlack,
    fontFamily: fontMedium,
  );
  static TextStyle get m11 =>  TextStyle(
    fontSize: 10.sp,
    //fontWeight: FontWeight.w400,
    height: 1.3,
    color: AppColor.labelBlack,
    fontFamily: fontMedium,
  );
  static TextStyle get r12 => TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      height: 1.3,
      color: AppColor.labelBlack
  );
  static TextStyle get m12 => TextStyle(
      fontSize: 12.sp,
      //fontWeight: FontWeight.w400,
      fontFamily: fontMedium,
      height: 1.3,
      color: AppColor.labelBlack
  );
  static TextStyle get m12000000 => TextStyle(
      fontSize: 12.sp,
      //fontWeight: FontWeight.w400,
      fontFamily: fontMedium,
      height: 1.3,
      color: Colors.black
  );
  static TextStyle get m12484848 => TextStyle(
      fontSize: 12.sp,
      //fontWeight: FontWeight.w400,
      fontFamily: fontMedium,
      height: 1.3,
      color: AppColor.titleBlack
  );
  static TextStyle get b12 => TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w600,
      height: 1.3,
      color: AppColor.titleBlack
  );
  static TextStyle get m13 => TextStyle(
      fontSize: 13.sp,
      //fontWeight: FontWeight.w600,
      height: 1.3,
      fontFamily: fontMedium,
      color: AppColor.titleBlack
  );
  static TextStyle get r14 =>  TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w500,
      height: 1.3,
      color: AppColor.labelBlack
  );
  static TextStyle get r14484848 =>  TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    height: 1.3,
    color: AppColor.titleBlack
  );
  static TextStyle get m14 =>  TextStyle(
      fontSize: 14.sp,
      height: 1.3,
      fontFamily: fontMedium,
      color: AppColor.labelBlack
  );
  static TextStyle get m14484848 =>  TextStyle(
      fontSize: 14.sp,
      height: 1.3,
      fontFamily: fontMedium,
      color: AppColor.titleBlack
  );
  static TextStyle get b14 =>  TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.bold,
      height: 1.3,
      color: AppColor.labelBlack
  );
  static TextStyle get r15 =>  TextStyle(
      fontSize: 15.sp,
      height: 1.3,
      fontFamily: fontRegular,
      color: AppColor.titleBlack,//484848
  );
  static TextStyle get m15 =>  TextStyle(
      fontSize: 15.sp,
      height: 1.3,
      fontFamily: fontMedium,
      color: AppColor.labelBlack
  );
  static TextStyle get r16 =>  TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      height: 1.3,
      color: AppColor.labelBlack
  );
  static TextStyle get m16 =>  TextStyle(
      fontSize: 16.sp,
      //fontWeight: FontWeight.w500,
      height: 1.3,
      color: AppColor.labelBlack,
      fontFamily: fontMedium
  );
  static TextStyle get b16484848 =>  TextStyle(
      fontSize: 16.sp,
      //fontWeight: FontWeight.w500,
      height: 1.3,
      color: AppColor.titleBlack,
      fontFamily: fontMedium
  );
  static TextStyle get m18484848 =>  TextStyle(
      fontSize: 18.sp,
      //fontWeight: FontWeight.w500,
      height: 1.3,
      color: AppColor.titleBlack,
      fontFamily: fontMedium
  );
  static TextStyle get b32 =>  TextStyle(
      fontSize: 32.sp,
      fontWeight: FontWeight.w500,
      height: 1.3,
      color: AppColor.labelBlack
  );
}