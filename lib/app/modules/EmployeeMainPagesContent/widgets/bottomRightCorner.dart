import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomRightCorner extends StatelessWidget {
  final Widget content;
  final double height;
  final double borderRadius;
  final Color? color;
  const BottomRightCorner({Key? key, required this.content,
    required this.height,this.color, required this.borderRadius}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(borderRadius),
        ),
      ),child: Center(
      child: content,
    ),

    );
  }
}
