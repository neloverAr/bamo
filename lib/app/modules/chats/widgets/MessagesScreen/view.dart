import 'package:bamo/app/core/constants/AppGradient.dart';
import 'package:bamo/app/core/constants/ContainerDecoration.dart';
import 'package:bamo/app/core/constants/padding.dart';
import 'package:bamo/app/core/theme/app_text_style.dart';
import 'package:bamo/app/core/utils/extensions.dart';
import 'package:bamo/app/core/values/colors.dart';
import 'package:bamo/app/core/values/images_path.dart';
import 'package:bamo/app/modules/chats/widgets/MessagesScreen/controller.dart';
import 'package:bamo/app/modules/widgets/avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import '../../../../core/values/icons.dart';
import '../../../../data/models/message.dart';

class MessagesScreen extends StatelessWidget {
  final List<Message> messages;
  final String senderName;
  final String? senderAvatar;
  MessagesScreen({Key? key, required this.messages,
    required this.senderName, required this.senderAvatar}) : super(key: key);
  MessagesController controller = Get.put(MessagesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: false,
          toolbarHeight: 100.h,
          backgroundColor: Colors.transparent,
          elevation: 0,
          flexibleSpace: SafeArea(
            child: Column(
              children: [
                Row(children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal:15),
                    child: GestureDetector(
                        onTap: ()=>Navigator.pop(context),
                        child: SvgPicture.asset(AppIcon.back)),
                  ),16.wp,
                  Avatar(image: senderAvatar??AppImage.profile, radius: 16),
                  8.wp,
                  Text(senderName,style: AppTextStyles.m12484848,),
                ],),8.hp,
                Container(
                  height: 4.h,
                  decoration: const BoxDecoration(
                    color: AppColor.ColorF8F8F8,
                    border: Border.symmetric(
                      vertical: BorderSide(width: .5,color: AppColor.ColorEDEDED),
                      horizontal: BorderSide(width: 0,color: AppColor.ColorEDEDED),
                    )
                  ),
                )
              ],
            ),
          ),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: GroupedListView<Message,DateTime>(
                useStickyGroupSeparators: true,
                floatingHeader: true,
                reverse: true,
                order: GroupedListOrder.DESC,
                shrinkWrap: true,
                padding: EdgeInsets.all(AppPadding.mainPadding),
                elements:messages,
                groupBy: (Message message)=> DateTime(
                  getDate(message.createdAt!).year,
                  getDate(message.createdAt!).month,
                  getDate(message.createdAt!).day,
                ),
                groupHeaderBuilder: (Message message)=>SizedBox(
                  height: 40,
                  child:
                  Center(
                    child: Text(//message.createdAt!,
                      DateFormat.yMMMd().format(getDate(message.createdAt!)),
                      style: AppTextStyles.r10797979,
                    ),
                  ),
                ),
                itemBuilder: (context,Message message)=>
                    Align(
                      alignment: message.isSentByMe??true?
                      Alignment.centerRight:Alignment.centerLeft,
                      child: message.isSentByMe??true?Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        elevation: 0,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              gradient: AppGradient.horizontalBlueGradient),
                          child: Padding(
                            padding: EdgeInsets.all(12),
                            child: Text(message.message!,
                              style: AppTextStyles.r10.copyWith(color: Colors.white),),
                          ),
                        ),
                      ):Row(children: [
                        Avatar(image: senderAvatar??AppImage.profile, radius: 16),8.wp,
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          elevation:0,
                          child: Container(
                            decoration: dataDecoration.copyWith(
                                borderRadius: BorderRadius.circular(8)),
                            child: Padding(
                              padding: EdgeInsets.all(12),
                              child: Text(message.message!,style: AppTextStyles.r1005100B,),
                            ),
                          ),
                        )
                      ],),
                    ),
              ),
            ),
            SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: AppPadding.mainPadding),
                child: Container(
                  height: 48.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: AppColor.ColorFDFDFD,
                    border: Border.all(
                      width: 2,
                      color: AppColor.ColorEAEAEA
                    )
                  ),
                  child: TextField(
                    controller: controller.textController,
                    decoration: InputDecoration(
                        border:  InputBorder.none,
                        contentPadding: EdgeInsets.all(12),
                        hintText: "Write your message...",
                        hintStyle: AppTextStyles.r12.copyWith(color: AppColor.Color888888),
                        suffixIcon: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                                onTap: (){
                                  final message = Message(
                                    message: controller.textController.text,
                                    isSentByMe: true,
                                    createdAt: DateTime.now().toString(),
                                  );messages.add(message);
                                  controller.textController.text="";

                                },
                                child: GradientText("Send",
                                  colors: blueColors,
                                  style: AppTextStyles.m12,)),
                          ],
                        )
                    ),
                    onSubmitted: (String? message){
                      // TODO

                    },

                  ),
                ),
              ),
            )
          ],
        )
    );
  }
}

DateTime getDate(String date){

  DateTime postTime = DateTime.parse(date); // post time
  return postTime;
}
