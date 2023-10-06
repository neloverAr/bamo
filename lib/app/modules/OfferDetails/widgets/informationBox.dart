import 'package:bamo/app/core/constants/ContainerDecoration.dart';
import 'package:bamo/app/core/theme/app_text_style.dart';
import 'package:bamo/app/core/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InformationBox extends StatelessWidget {
  final Axis boxType;
  final String label;
  final String value;
  const InformationBox({Key? key, required this.boxType,
    required this.label, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: boxType==Axis.horizontal?48.h:55.h,
      decoration: dataDecoration,
      child: boxType==Axis.horizontal?Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
        children: [
          Text("$label: ",style: AppTextStyles.m15,),
          Text(value,style: AppTextStyles.r15,)
        ],
    ),
      ):Padding(
      padding: const EdgeInsets.only(top: 8.0,left: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label,style: AppTextStyles.r10,),
          SizedBox(height: 4.h,),
          Text(value,style: AppTextStyles.m12,),
        ],
    ),
      ),
    );
  }
}
