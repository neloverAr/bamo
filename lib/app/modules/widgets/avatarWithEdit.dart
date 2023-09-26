import 'package:bamo/app/core/constants/AppGradient.dart';
import 'package:bamo/app/core/values/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AvatarWithEdit extends StatelessWidget {
  final double radius;
  final String image;
  final String? editIcon;
  const AvatarWithEdit({Key? key, required this.radius,
    required this.image, this.editIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          SizedBox(
            child: CircleAvatar(
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(radius),
                    gradient: AppGradient.curvedBlueGradient
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 12.0,
                    child: SvgPicture.asset(AppIcon.galleryEdit),
                  ),
                ),
              ),
              radius: radius,
              backgroundImage: AssetImage(image),
            ),),
        ]
    );
  }
}
