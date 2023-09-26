import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TagProperty extends StatelessWidget {
  final String icon;
  final Widget property;
  final LinearGradient? linearGradient;
  final Color? color;
  const TagProperty({Key? key, required this.icon,
    required this.property, this.linearGradient, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
      ),
      child: Container(
        decoration: BoxDecoration(
          color: color?? Colors.white,
          gradient: linearGradient,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 6.w,vertical: 6.h),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(icon),
                SizedBox(width: 4.w,),
                property
              ],
            ),
          ),
        ),
      ),
    );
  }
}
