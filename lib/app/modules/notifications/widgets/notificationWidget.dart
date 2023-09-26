import 'package:bamo/app/core/constants/AppGradient.dart';
import 'package:bamo/app/core/theme/app_text_style.dart';
import 'package:bamo/app/core/values/colors.dart';
import 'package:bamo/app/data/models/Notification.dart';
import 'package:bamo/app/modules/widgets/AppButton.dart';
import 'package:bamo/app/modules/widgets/AppButtonFittedWidth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationWidget extends StatelessWidget {
  final NotificationModel notification;
  const NotificationWidget({Key? key, required this.notification}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColor.ColorF7F7F7,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            width: 2,
            color: AppColor.ColorF4F4F4
          )
        ),child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(flex:1,child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //SizedBox(height: ,),
                SvgPicture.asset(notification.icon,height: 24,width: 24,)
              ],
            )),
            Expanded(flex:5,child: Column(
              mainAxisAlignment : MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(notification.title,style: AppTextStyles.m14,),
                SizedBox(height: 8.h,),
                Text(notification.desc,maxLines:3,
                  overflow: TextOverflow.ellipsis,style: AppTextStyles.r10,),
                SizedBox(height: 8.h,),
                (notification.seen==false)?AppButtonFitted(title:notification.buttonText, onPressed: (){
                  //TODO
                },
                  fontColor:Colors.white,
                  height: 30.h,
                  linearGradient:AppGradient.horizontalBlueGradient,
                ):AppButtonFitted(title:notification.buttonText, onPressed: (){
                  //TODO
                },//width: double.maxFinite,
                  fontColor:AppColor.primaryColor,
                  height: 30.h,
                  borderColor: AppColor.primaryColor,
                  color: AppColor.ColorF4F4F4,
                )
              ],
            )),(notification.seen==false)?Expanded(flex:1,child:
            Column(
              children: [
                Container(
                  height: 8,width: 8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: AppGradient.curvedBlueGradient
                  ),
                )
              ],
            )):Expanded(flex:1,child: SizedBox()),
          ],
      ),
        ),
      ),
    );
  }
}
