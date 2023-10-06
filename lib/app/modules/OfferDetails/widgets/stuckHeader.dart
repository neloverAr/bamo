
import 'package:bamo/app/core/constants/padding.dart';
import 'package:bamo/app/modules/OfferDetails/widgets/informationBox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'matchingBox.dart';

class StuckHeaderDelegate extends SliverPersistentHeaderDelegate{
  final double matching;
  final String experience;
  final String duration;
  StuckHeaderDelegate( {required this.experience,
    required this.matching, required this.duration,});

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppPadding.mainPadding,vertical: 16),
        child: Row(
          children: [
            Expanded(child: MatchingBox( label: "Matching", percentage: matching)),
            SizedBox(width: 8.w,),
            Expanded(child: InformationBox(boxType: Axis.vertical, label: "Expérience", value: experience)),
            SizedBox(width: 8.w,),
            Expanded(child: InformationBox(boxType: Axis.vertical, label: "Durée", value:duration)),
          ],
        ),
      ),
    );
  }

  @override
  double get maxExtent => 87.h;

  @override
  double get minExtent => 87.h;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}