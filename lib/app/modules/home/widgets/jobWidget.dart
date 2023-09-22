import 'package:bamo/app/core/constants/padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/theme/app_text_style.dart';
import '../../../core/values/icons.dart';
import 'circularIconWidget.dart';
import 'textNumber.dart';

class JobWidget extends StatelessWidget {
  final String image;
  final String jobName;
  final String jobLocation;
  final String jobSalary;
  final int days;
  final int waiting;
  final int determined;
  final int rejected;
  const JobWidget({Key? key, required this.jobName,
    required this.jobLocation, required this.days,
    required this.waiting, required this.determined,
    required this.rejected, required this.image, required this.jobSalary}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 319.h,
      margin: EdgeInsets.symmetric(horizontal: AppPadding.mainPadding),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
                spreadRadius: 5,
                blurRadius:40 ,
                offset: Offset(0,16),
                color: Color(0xFF7090B0).withOpacity(.25)
            )
          ]
      ),
      child: Column(
        children: [
          //image
          Container(
            height: 157.h,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(12),
              ),
              image:DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.fitWidth
              ),
            ),child: Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w,vertical:8.h ),
              child: (
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CircularIconWidget(icon: AppIcon.edit),
                      SizedBox(width:8.w ,),
                      CircularIconWidget(icon: AppIcon.eye),
                    ],
                  )),
            ),
          ),
          ),
          //////////////////////////////////////
          //Data
          Container(
            height: 102.h,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w,),//vertical: 5.h
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(jobName,style: AppTextStyles.b14,),
                  SizedBox(height: 12.h,),
                  Row(children: [
                    SvgPicture.asset(AppIcon.locationGrey),
                    SizedBox(width: 6.w,),
                    Text(jobLocation,style: AppTextStyles.r10,),
                  ],),
                  SizedBox(height:8.h ,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [
                        SvgPicture.asset(AppIcon.wallet),
                        SizedBox(width: 6.w,),
                        Text(jobSalary,style: AppTextStyles.r10,),
                      ],),
                      Text("$days jours restants"),
                    ],)
                ],
              ),
            ),
          ),
          ///////
          Spacer(),
          //Numbers
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Divider(color: Color(0xFFD3D3D3),thickness: 1,height: 1.h,),
              Container(
                height: 50.h,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(child: TextNumber(num: waiting, text: "En attente")),
                    const VerticalDivider(color: Color(0xFFD3D3D3),thickness: 1,),
                    Expanded(child: TextNumber(num: determined, text: "Présélectionnés")),
                    const VerticalDivider(color: Color(0xFFD3D3D3),thickness: 1,),
                    Expanded(child: TextNumber(num: rejected, text: "Rejetés")),
                  ],
                ),
              ),
            ],
          )

        ],
      ),
    );
  }
}
