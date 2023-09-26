import 'package:bamo/app/core/theme/app_text_style.dart';
import 'package:bamo/app/core/values/colors.dart';
import 'package:bamo/app/data/models/tagModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TagWidget extends StatelessWidget {
  final TagModel tag;
  const TagWidget({Key? key, required this.tag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
    elevation: 0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12)
      ),
      color: AppColor.ColorF7F7F7,
      child: InkWell(
        onTap: tag.onTap,
          borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 8.h),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(tag.icon),
                SizedBox(width: 8.w,),
                Text(tag.label,style: AppTextStyles.m13,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
