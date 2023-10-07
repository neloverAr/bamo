import 'package:bamo/app/core/constants/ContainerDecoration.dart';
import 'package:bamo/app/core/theme/app_text_style.dart';
import 'package:bamo/app/core/utils/extensions.dart';
import 'package:bamo/app/data/models/sector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SectorWidget extends StatelessWidget {
  final Sector sector;
  const SectorWidget({Key? key, required this.sector}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 106.h,
      // width: 106.h,
      decoration: dataDecoration,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(sector.sectorIcon),
            12.hp,
            Text(sector.sectorName,style: AppTextStyles.r10,)
          ],
        ),
      ),
    );
  }
}
