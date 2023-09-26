
import 'package:bamo/app/core/theme/style_helper.dart';
import 'package:bamo/app/core/values/icons.dart';
import 'package:bamo/app/modules/appDrawer/view.dart';
import 'package:bamo/app/modules/widgets/iconAndLabel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/utils/keys.dart';
import '../../../data/models/PageData.dart';

class HomeLayout extends StatelessWidget with StylesHelper{
  final AppBar? appBar;
  final Widget screenContent;
  final List<PageData> pages;
  final Widget centerIcon;
  final Widget? floatingActionButton;
  final Color? scaffoldBG;
  final int currentIndex;
  final Function() onTap;
  final controller;

  HomeLayout({Key? key,
    this.appBar, required this.screenContent,
    required this.pages, this.floatingActionButton,
    required this.centerIcon,
    required this.currentIndex, required this.onTap,
    this.controller, this.scaffoldBG}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      backgroundColor: scaffoldBG,
      drawer: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppDrawer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0,vertical: 50),
            child: InkWell(
              onTap: ()=>Navigator.pop(context),
                child: SvgPicture.asset(AppIcon.closeDrawer)),
          ),
        ],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          screenContent,
          PositionedDirectional(
              bottom: 10,
              start: 0,
              end: 0,
              child:
              SafeArea(
                child: Column(
                  children: [
                    (floatingActionButton!=null)?Padding(
                      padding: EdgeInsets.symmetric(horizontal: 19.w,vertical:15.h ),
                      child: Row(
                        mainAxisAlignment:MainAxisAlignment.end,
                        children: [
                          floatingActionButton!,
                        ],
                      ),
                    ):SizedBox(),
                    Container(
                      //margin: const EdgeInsets.symmetric(horizontal: 20, ),
                      padding: EdgeInsets.symmetric(horizontal: 18.w,
                          vertical: 10.h),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular(30)
                          ),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.9),
                                blurRadius: 7,
                                offset: Offset(0, 3),
                                spreadRadius: 1)
                          ]),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            for(int i=0;i<pages.length/2;i++)...[
                              Expanded(
                                child: IconAndLabel(
                                    onTap:()=>controller.changePage(i),
                                    selected: i==currentIndex?true:false,
                                    icon: pages[i].icon,
                                    label: pages[i].title!),
                              )
                            ],
                            Expanded(child: centerIcon),
                            for(int i=(pages.length/2).floor();i<pages.length;i++)...[
                              Expanded(
                                child: IconAndLabel(onTap:()=>controller.changePage(i),
                                    selected: i==currentIndex?true:false,
                                    icon: pages[i].icon,
                                    label: pages[i].title!),
                              )
                            ],
                          ]
                      ),
                    ),
                  ],
                ),
              )
          )

        ],),
    );
  }

}
