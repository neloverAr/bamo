import 'package:bamo/app/core/theme/app_text_style.dart';
import 'package:bamo/app/modules/widgets/AppButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/constants/appShadow.dart';

class UserCardWidget extends StatelessWidget {
  final String icon;
  final String text;
  final String buttonText;
  final LinearGradient gradient;
  final Function() onTap;
  const UserCardWidget({Key? key, required this.icon,
    required this.text, required this.buttonText,
    required this.gradient, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 198.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: cardsShadow
      ),
      child: (
      Column(
        children: [
          SizedBox(height:24.h,),
          Container(
            height:58.h,
            width: 58.w,
            decoration: BoxDecoration(
              color: Color(0xFFF7F7F7),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                width: 1,
                color: Color(0xFFF7F7F7),
              ),
            ),child: Center(
            child: SvgPicture.asset(icon),
          ),
          ), SizedBox(height:12.h,),
          Container(width:117.w,
              child: Text(text,style: AppTextStyles.r14,
            textAlign: TextAlign.center,)),
          Spacer(),
          AppButton(//color: Colors.white,
              title: buttonText, onPressed: onTap,
            linearGradient: gradient,height: 38.h,fontSize: 12.sp,
            fontWeight: FontWeight.w600,)
        ],
      )
      ),
    );
  }
}
