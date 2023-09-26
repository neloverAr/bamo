import 'package:bamo/app/core/theme/app_text_style.dart';
import 'package:bamo/app/core/values/colors.dart';
import 'package:flutter/material.dart';

class ProfileTextField extends StatelessWidget {
  final String hintText;
  final String? labelText;
  final int? maxLines;
  const ProfileTextField({Key? key, required this.hintText,  this.maxLines,
    this.labelText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines??1,
      decoration: InputDecoration(
        labelText: labelText??hintText,
        fillColor:AppColor.ColorF7F7F7,
        filled: true,
        hintStyle: AppTextStyles.r12.copyWith(color: Color(0xFF888888)),
        labelStyle: AppTextStyles.r12.copyWith(color: Color(0xFF888888)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColor.ColorF4F4F4,width: 2),
        ),focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColor.primaryColor,width: 2),
      ),
      ),
    );
  }
}
