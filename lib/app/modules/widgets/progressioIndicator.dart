import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/AppGradient.dart';
import '../../core/values/colors.dart';

class ProgressionIndicator extends StatelessWidget {
  final double progress;
  const ProgressionIndicator({Key? key, required this.progress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 11.h,
      width: double.infinity,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
          color: AppColor.ColorF7F7F7,
          borderRadius: BorderRadius.circular(9)
      ),child: FractionallySizedBox(
      widthFactor: progress,
      child: Container(
        decoration: BoxDecoration(
            gradient: AppGradient.curvedGreenGradient,
            borderRadius: BorderRadius.circular(9)
        ),
      ),
    ),
    );
  }
}
