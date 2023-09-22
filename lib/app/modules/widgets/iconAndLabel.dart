import 'package:bamo/app/core/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconAndLabel extends StatelessWidget {
  final Function() onTap;
  final bool selected;
  final String icon;
  final String label;
  const IconAndLabel({Key? key, required this.onTap, required this.selected, required this.icon, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            SvgPicture.asset(icon,color: selected?AppColor.primaryColor:AppColor.grey,),
            Text(label,style: TextStyle(
              color: selected ?
              AppColor.primaryColor : AppColor.grey,
              fontSize: 10.sp
            ),)
          ],
        ));
  }
}
