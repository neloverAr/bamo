import 'package:bamo/app/core/constants/padding.dart';
import 'package:bamo/app/core/theme/app_text_style.dart';
import 'package:bamo/app/core/utils/extensions.dart';
import 'package:bamo/app/modules/chats/widgets/chatWidget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'controller.dart';

class ChatsScreen extends StatelessWidget {
  ChatsScreen({Key? key}) : super(key: key);
  ChatController controller = Get.put(ChatController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal:AppPadding.mainPadding,vertical: 24.h),
      child: ListView(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Messages",style: AppTextStyles.m1405100B,),
          16.hp,
          Text("Today",style: AppTextStyles.m12797979,),
          12.hp,
          ListView.separated(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext, index){
            return GestureDetector(
                onTap: (){
                  //Get.to();
                },
                child: ChatWidget(chat: controller.todayChats[index]));
          }, separatorBuilder: (BuildContext context, int index)
          =>SizedBox(height:16.h ,),
            itemCount: controller.todayChats.length,),
          24.hp,
          Text("This week",style: AppTextStyles.m12797979,),
          12.hp,
          ListView.separated(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext, index){
              return GestureDetector(
                  onTap:(){

                  },
                  child: ChatWidget(chat: controller.weekChats[index]));
            }, separatorBuilder: (BuildContext context, int index)
          =>SizedBox(height:16.h,),
            itemCount: controller.weekChats.length,),
        ],
      ),
    );
  }
}
