import 'package:bamo/app/core/constants/AppGradient.dart';
import 'package:bamo/app/core/constants/appShadow.dart';
import 'package:bamo/app/core/theme/app_text_style.dart';
import 'package:bamo/app/core/values/icons.dart';
import 'package:bamo/app/data/models/job.dart';
import 'package:bamo/app/modules/widgets/iconAndValue.dart';
import 'package:bamo/app/modules/widgets/tagProperty.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class LastOfferSpecificWidget extends StatelessWidget {
  final Job job;
  final String specificIcon;
  final String specificType;
  const LastOfferSpecificWidget({Key? key, required this.job,
    required this.specificIcon, required this.specificType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 285.h,
      decoration: BoxDecoration(
        boxShadow: jobCardShadow,
        color: Colors.white,
        borderRadius: BorderRadius.circular(12)
      ),child: Column(children: [
        Expanded(child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(job.image),fit: BoxFit.fill)
          ),child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16.w,vertical: 16.h),
            child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    TagProperty(icon: AppIcon.checked, property:
                    GradientText("Vérifier",colors: greenColors,style: AppTextStyles.m10,)),
                    SizedBox(width: 8.w,),
                    TagProperty(icon:specificIcon, property:
                    GradientText(specificType,colors: blueColors,style: AppTextStyles.m10,)),
                  ],),
                  Container(
                    height: 36,
                    width: 36,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: job.jobType=="Permanent"?AppGradient.curvedGreyGradient:AppGradient.curvedBlackGradient
                    ),child: Center(
                    child: SvgPicture.asset(AppIcon.favorite),
                  ),
                  )
                ],
              ),
              Row(
                children: [
                  TagProperty(icon: AppIcon.easyApply,linearGradient: AppGradient.horizontalYellowGradient, property:
                  Text("Inscription Facile",style: AppTextStyles.m10.copyWith(color: Colors.white),)),
                  SizedBox(width: 8.w,),
                  TagProperty(icon: AppIcon.candidates,linearGradient: AppGradient.horizontalBlueGradient, property:
                  Text("${job.candidates} Candidats",style: AppTextStyles.m10.copyWith(color: Colors.white),)),
                ],
              )
            ],
        ),
          ),
        )),
      Expanded(child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(job.title,style: AppTextStyles.m14,),
            SizedBox(height: 12.h,),
            IconAndValue(icon: AppIcon.locationGrey, value: job.location,),
            SizedBox(height: 8.h,),
            IconAndValue(icon: AppIcon.wallet, value: job.salary??""),
            SizedBox(height: 8.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconAndValue(icon: AppIcon.EURLNAPEC, value:"EURL NAPEC"),
                Text(job.datePublished,style: AppTextStyles.r10,)
              ],
            ),
          ],
        ),
      ))
    ],
    ),
    );
  }
}
