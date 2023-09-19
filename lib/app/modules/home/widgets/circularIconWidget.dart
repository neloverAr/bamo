import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CircularIconWidget extends StatelessWidget {
  final String icon;
  const CircularIconWidget({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 16,
      backgroundColor: Color(0xFFFFFFFF).withOpacity(.8),
      child: SvgPicture.asset(icon),
    );
  }
}
