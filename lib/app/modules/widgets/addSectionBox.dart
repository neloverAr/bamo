import 'package:bamo/app/core/constants/AppGradient.dart';
import 'package:bamo/app/core/theme/app_text_style.dart';
import 'package:bamo/app/core/utils/extensions.dart';
import 'package:bamo/app/core/values/colors.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class AddSectionBox extends StatelessWidget {
  final Function() onTap;
  final String sectionName;
  final String sectionDesc;
  const AddSectionBox({Key? key, required this.onTap,
    required this.sectionName, required this.sectionDesc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
        color: AppColor.colorD3D3D3,
        dashPattern:  [9,8],
        borderType: BorderType.RRect,
        radius: Radius.circular(12),
        child: Center(
          child: Container(
            height: 88.h,
            width: double.infinity,
            decoration: BoxDecoration(
                color: AppColor.ColorF7F7F7,
                borderRadius: BorderRadius.circular(12)
            ),child: Material(
            color: AppColor.ColorF7F7F7,
              child: InkWell(
              onTap: onTap,
               // splashColor: AppColor.ColorF7F7F7,
                borderRadius: BorderRadius.circular(12),
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GradientText("+ $sectionName",style: AppTextStyles.m12, colors: blueColors),
                  8.hp,
                  Text(sectionDesc,textAlign:TextAlign.center,style: AppTextStyles.r10,)
                ],
          ),
              ),
            ),
          ),
        )
    );
  }
}
