import 'package:bamo/app/core/values/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyles {
  static TextStyle get r10 =>  TextStyle(
      fontSize: 10.sp,
      fontWeight: FontWeight.w400,
      height: 1.3,
      color: AppColor.titleBlack
  );
  static TextStyle get r12 => TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      height: 1.3,
      color: AppColor.labelBlack
  );
  static TextStyle get b12 => TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w600,
      height: 1.3,
      color: AppColor.titleBlack
  );
  static TextStyle get r14 =>  TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    height: 1.3,
    color: AppColor.titleBlack
  );
  static TextStyle get b14 =>  TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.bold,
      height: 1.3,
      color: AppColor.labelBlack
  );
  static TextStyle get r16 =>  TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      height: 1.3,
      color: AppColor.labelBlack
  );
  static TextStyle get b16 =>  TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w500,
      height: 1.3,
      color: AppColor.labelBlack
  );
  static TextStyle get b32 =>  TextStyle(
      fontSize: 32.sp,
      fontWeight: FontWeight.w500,
      height: 1.3,
      color: AppColor.labelBlack
  );
}