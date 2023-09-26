import 'package:bamo/app/core/constants/AppGradient.dart';
import 'package:bamo/app/core/theme/app_text_style.dart';
import 'package:bamo/app/core/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_storage/get_storage.dart';

class DrawerLine extends StatelessWidget {
  final bool selected;
  final String icon;
  final String value;
  const DrawerLine({Key? key, required this.selected, required this.icon, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 217.w,
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.horizontal(
          right: Radius.circular(10)
        ),gradient: selected?AppGradient.horizontalBlueGradient:LinearGradient(colors: [Colors.transparent,Colors.transparent]),
      ),child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 26.w,vertical: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SvgPicture.asset(icon,color: selected?Colors.white:AppColor.titleBlack,),
          SizedBox(width: 8.w,),
          Text(value,style: AppTextStyles.m14.copyWith(
              color: selected?Colors.white:AppColor.titleBlack),)
        ],
      ),
    ),
    );
  }
}
