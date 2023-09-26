import 'package:bamo/app/core/constants/appShadow.dart';
import 'package:bamo/app/core/theme/app_text_style.dart';
import 'package:bamo/app/core/values/icons.dart';
import 'package:bamo/app/data/models/job.dart';
import 'package:bamo/app/modules/widgets/iconAndValue.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LastOffersWidget extends StatelessWidget {
  final Job job;
  const LastOffersWidget({Key? key, required this.job}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 151.w,
          height: 265.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Colors.white,
              boxShadow: cardsShadow
          ),child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(job.image),fit: BoxFit.fill)
                ),
              ),
            ), Expanded(child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(job.title,maxLines: 2,overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.m11,),
                    SizedBox(height: 8.h,),
                    IconAndValue(icon: AppIcon.locationGrey, value: job.location),
                    SizedBox(height: 8.h,),
                    IconAndValue(icon: AppIcon.experience, value: job.experience),
                    SizedBox(height: 8.h,),
                    Text(job.datePublished,style: AppTextStyles.r10,)
                  ],
                ),
              ),
            ))
          ],
        ),
        ),SizedBox(height: 24.h,)
      ],
    );
  }
}
