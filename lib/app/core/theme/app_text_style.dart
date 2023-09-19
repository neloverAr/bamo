import 'package:bamo/app/core/values/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  static TextStyle get r14 => const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.3,
    color: AppColor.titleBlack
  );
  static TextStyle get b14 => const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      height: 1.3,
      color: AppColor.labelBlack
  );
  static TextStyle get r10 => const TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      height: 1.3,
      color: AppColor.titleBlack
  );
  static TextStyle get b12 => const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w600,
      height: 1.3,
      color: AppColor.titleBlack
  );

}