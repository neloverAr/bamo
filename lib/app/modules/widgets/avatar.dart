import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String image;
  final double radius;
  const Avatar({Key? key, required this.image, required this.radius}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: AssetImage(image),
    );
  }
}
