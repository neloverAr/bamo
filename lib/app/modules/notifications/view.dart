import 'package:bamo/app/core/constants/padding.dart';
import 'package:bamo/app/core/theme/app_text_style.dart';
import 'package:bamo/app/core/values/icons.dart';
import 'package:bamo/app/data/models/Notification.dart';
import 'package:bamo/app/modules/appDrawer/view.dart';
import 'package:bamo/app/modules/notifications/widgets/notificationWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal:15),
          child: GestureDetector(
            onTap: ()=>Navigator.pop(context),
              child: SvgPicture.asset(AppIcon.back)),
        ),
        title: Text("Notifications",style: AppTextStyles.m18484848,),
        actions: [
          Builder(
            builder: (context)=> Padding(
              padding: EdgeInsets.symmetric(horizontal: AppPadding.mainPadding),
              child: InkWell(onTap:()=>
                Scaffold.of(context).openDrawer()
              ,child: SvgPicture.asset(AppIcon.menu)),
            ),
          ),
        ],
      ),drawer: AppDrawer(),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppPadding.mainPadding,vertical: 32.h),
        children: [
          Text("Aujourd'hui",style: AppTextStyles.m12484848,),
          SizedBox(height: 12.h,),
          NotificationWidget(notification: NotificationModel(
              title: "Nouvelle offre d'emploi", desc: "Une nouvelle offre d'emploi correspondant à vos compétences a été publiée. Postulez maintenant ! - il ya 15 minutes",
              buttonText: "Voir l’offre", icon: AppIcon.fullTimeJob,seen: false)),
          SizedBox(height: 12.h,),
          NotificationWidget(notification: NotificationModel(
              title: "Nouvelle mission disponible", desc: "\"Une nouvelle mission freelance est disponible dans votre domaine d'expertise. Découvrez là maintenant ! - il ya 15 minutes",
              buttonText: "Explorer la mission", icon: AppIcon.freelancerJob,seen: false)),
          SizedBox(height: 16.h,),
          //////////////////////////
          Divider(color: Color(0xFFC8C8C8),height: 1,indent : 75, endIndent : 75, ),
          SizedBox(height: 16.h,),
          Text("Cette Semaine",style: AppTextStyles.m12484848,),
          SizedBox(height: 12.h,),
          NotificationWidget(notification: NotificationModel(
              title: "Rappel de réunion", desc: "Une nouvelle offre d'emploi correspondant à vos compétences a été publiée. Postulez maintenant ! - il ya 15 minutes",
              buttonText: "Voir les détails", icon: AppIcon.calender,seen: true)),
          SizedBox(height: 12.h,),
          NotificationWidget(notification: NotificationModel(
              title: "Confirmation de Préselection", desc: "Vous avez été présélectionné pour le poste que vous avez postulé. Veuillez préparer pour la prochaine étape du processus de recrutement.",
              buttonText: "Voir les détails", icon: AppIcon.checkedSquare,seen: true
          )),
        ],
      ),
    );
  }
}
