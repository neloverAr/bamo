import 'package:bamo/app/core/theme/app_text_style.dart';
import 'package:bamo/app/core/values/colors.dart';
import 'package:flutter/material.dart';

class ProfileTextField extends StatelessWidget {
  final String hintText;
  final int? maxLines;
  final int? maxLength;
  final TextEditingController controller;
  final TextInputType? inputType;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? enabled;
  const ProfileTextField({Key? key, required this.hintText,  this.maxLines,
    required this.controller,this.inputType,this.maxLength, this.prefixIcon,
    this.suffixIcon, this.enabled}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: maxLines??1,
      enabled: enabled??true,
      keyboardType: inputType??TextInputType.text,
      style: AppTextStyles.r12.copyWith(color: Color(0xFF888888)),
      maxLength: maxLength,
      decoration: InputDecoration(
        fillColor:AppColor.ColorF7F7F7,
        filled: true,
        hintText: hintText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintStyle: AppTextStyles.r12.copyWith(color: Color(0xFF888888)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColor.ColorF4F4F4,width: 2),
        ),disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColor.ColorF4F4F4,width: 2),
      ),
        focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColor.primaryColor,width: 2),
      ),
      ),
    );
  }
}
