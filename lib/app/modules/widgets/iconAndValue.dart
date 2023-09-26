import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../core/theme/app_text_style.dart';

class IconAndValue extends StatelessWidget {
  final String icon;
  final String value;
  const IconAndValue({Key? key, required this.icon,
    required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      SvgPicture.asset(icon),
      SizedBox(width: 6.w,),
      Text(value,style: AppTextStyles.m10,maxLines: 1,overflow: TextOverflow.ellipsis,),
    ],);
  }
}
