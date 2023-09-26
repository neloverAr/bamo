import 'package:bamo/app/core/utils/keys.dart';
import 'package:bamo/app/data/services/storage/services.dart';
import 'package:bamo/app/modules/EmployeeMainPagesContent/widgets/headerLoggedUser.dart';
import 'package:bamo/app/modules/EmployeeMainPagesContent/widgets/lastOffersWidget.dart';
import 'package:bamo/app/modules/EmployeeMainPagesContent/widgets/tagWidget.dart';
import 'package:bamo/app/modules/widgets/lastOfferSpecificWidget.dart';
import 'package:bamo/app/modules/widgets/titleSpaceBetween.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../core/constants/padding.dart';
import '../../core/theme/app_text_style.dart';
import '../../data/models/job.dart';
import 'controller.dart';
import 'widgets/bottomRightCorner.dart';
import 'widgets/headerFirstSection.dart';
import 'widgets/headerSecondWidget.dart';
import 'widgets/searchField.dart';

class EmployeeMainPagesContent extends StatelessWidget {
  final List<Job> jobsSpecific;
  final String specificIcon;
  final String specificType;
  EmployeeMainPagesContent({Key? key, required this.jobsSpecific,
    required this.specificIcon, required this.specificType}) : super(key: key);
  EmployeeMainPagesContentController controller = Get.put(EmployeeMainPagesContentController());
  ScrollController scrollController = ScrollController();
  StorageService storageService = Get.find();
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: ListView(
        controller: controller.scrollController,
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: (135+138-24).h,
            child: Stack(
              fit: StackFit.loose,
              children: [
                Positioned(
                    top: (135-24).h,
                    left: 0,
                    right: 0,
                    child:HeaderSecondWidget(
                      height: 138.h,content: Padding(
                      padding: EdgeInsets.only(top:12.0,left: AppPadding.mainPadding,right: AppPadding.mainPadding),
                      child: SearchField(),
                    ),
                    )
                ),
                BottomRightCorner(content: storageService.read(isLoggedIn)==false?
                HeaderFirstSection():HeaderLoggedUser(),
                    borderRadius: 24,
                    color: Colors.white,
                    //backgroundImage: AppImage.header1background,
                    height:135.h
                ),

              ],),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical:16.h,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppPadding.mainPadding),
                  child: Text("Entreprises a la une",style: AppTextStyles.m16,),
                ),
                SizedBox(height: 16.h,),
                Container(
                  height: 70.h,
                  child: ListView.separated(
                    padding: EdgeInsets.symmetric(horizontal: AppPadding.mainPadding,vertical: 0),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index)=>SvgPicture.asset(controller.companiesIcons[index]),
                      separatorBuilder: (context,index)=>SizedBox(width:12.w ,),
                    itemCount: controller.companiesIcons.length),
                ),SizedBox(height: 24.h,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppPadding.mainPadding,vertical: 0),
                  child: TitleSpaceBetween(title: "Rechercher Par Catégorie",),
                ),SizedBox(height: 12.h,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  controller: scrollController,
                  child: SizedBox(
                    width: 880.w,
                    height: 80.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: ListView.separated(
                            controller: scrollController,
                              physics: NeverScrollableScrollPhysics(),
                              padding: EdgeInsets.symmetric(
                                  horizontal: AppPadding.mainPadding,vertical: 0),
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context,index)=>TagWidget(tag: controller.tags[index],),//SvgPicture.asset(controller.companiesIcons[index]),
                              separatorBuilder: (context,index)=>SizedBox(width:10.w,),
                              itemCount: 4),
                        ),
                        //SizedBox(height: 8.h,),
                        Expanded(
                          child: ListView.separated(
                              controller: scrollController,
                              physics: NeverScrollableScrollPhysics(),
                              padding: EdgeInsets.symmetric(
                                  horizontal: AppPadding.mainPadding,vertical: 0),
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context,index)=>TagWidget(tag: controller.tags[index+4],),//SvgPicture.asset(controller.companiesIcons[index]),
                              separatorBuilder: (context,index)=>SizedBox(width:10.w,),
                              itemCount: 4),
                        ),
                      ],
                    ),
                  ),
                ),SizedBox(height: 24.h,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppPadding.mainPadding),
                  child: TitleSpaceBetween(title: "Dernières Offres",textStyle: AppTextStyles.b16484848,),
                ),
                SizedBox(height: 12.h,),
                SizedBox(
                  height: 290.h,
                  child: ListView.separated(
                      padding: EdgeInsets.symmetric(
                          horizontal: AppPadding.mainPadding,vertical: 0),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index)=>LastOffersWidget(job: controller.job[index],),//SvgPicture.asset(controller.companiesIcons[index]),
                      separatorBuilder: (context,index)=>SizedBox(width:8.w,),
                      itemCount: controller.job.length),
                ), //SizedBox(height: 24.h,),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppPadding.mainPadding,vertical: 0),
                  child: Text("Dernières Offres",style: AppTextStyles.m16,),
                ),
                SizedBox(height: 12.h,),
                ...jobsSpecific.map((e) => Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: AppPadding.mainPadding),
                      child: LastOfferSpecificWidget(job: e, specificIcon: specificIcon, specificType: specificType,),
                    ),
                    SizedBox(height: 16.h,),
                  ],
                )),
                SizedBox(height: 100.h,),
              ],
            ),
          )
        ],
      ),
    );
  }
}