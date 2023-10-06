import 'package:bamo/app/core/constants/AppGradient.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../core/theme/app_text_style.dart';

class MatchingBox extends StatelessWidget {
  final String label;
  final double percentage;
  const MatchingBox({Key? key, required this.label,
    required this.percentage}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: AppGradient.horizontalBlueGradient
      ),child: Padding(
      padding: const EdgeInsets.only(top: 8.0,left: 12),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label,style: AppTextStyles.r10.copyWith(color:Colors.white),),
          SizedBox(height: 3.h,),
          Row(
            children: [
              CircularPercentIndicator(
                radius: 11.0,
                lineWidth: 5.0,
                percent: percentage,animation: true,
                animationDuration: 900,
                linearGradient: AppGradient.curvedYellowGradient,
              ),
              Text(" ${(percentage*100).round()}%",style: AppTextStyles.m12.copyWith(color:Colors.white),),
            ],
          ),
        ],
    ),
      ),
    );
  }
}
