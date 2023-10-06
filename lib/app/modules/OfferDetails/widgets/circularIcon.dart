import 'package:bamo/app/core/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CircularIcon extends StatelessWidget {
  final double? radius;
  final String icon;
  const CircularIcon({Key? key, this.radius,
    required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius??16,
      backgroundColor: AppColor.colorD9D9D9,
      child: Center(child: SvgPicture.asset(icon)),
    );
  }
}
