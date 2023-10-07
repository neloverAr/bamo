import 'package:bamo/app/core/theme/app_text_style.dart';
import 'package:bamo/app/core/utils/extensions.dart';
import 'package:bamo/app/core/values/icons.dart';
import 'package:bamo/app/core/values/images_path.dart';
import 'package:bamo/app/modules/widgets/avatar.dart';
import 'package:bamo/app/modules/widgets/notSeenDot.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../data/models/chat.dart';

class ChatWidget extends StatelessWidget {
  final Chat chat;
  const ChatWidget({Key? key, required this.chat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      //mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Avatar(image: chat.senderAvatar??AppImage.profile, radius: 24),
        12.wp,
        Expanded(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width:229.w,
                      child: Text(chat.senderName!,style: chat.seen==false
                          ?AppTextStyles.m1205100B:AppTextStyles.m12797979,
                        maxLines: 1,overflow: TextOverflow.ellipsis,),
                    ),
                    Text(chat.createdAt!,style: AppTextStyles.r109F9F9F,)
                  ],
                ),4.hp,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(
                      width:229.w,
                      child: Text(chat.messages![chat.messages!.length-1].message!,
                        maxLines: 1,overflow: TextOverflow.ellipsis,
                        style: AppTextStyles.r10797979,),
                    ),
                    chat.seen==true?SizedBox()
                        :NotSeenDot()
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
