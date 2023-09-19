
import 'package:bamo/app/core/values/colors.dart';
import 'package:bamo/app/core/values/icons.dart';
import 'package:bamo/app/core/values/images_path.dart';
import 'package:bamo/app/modules/home/widgets/circularIconWidget.dart';
import 'package:bamo/app/modules/home/widgets/textNumber.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/theme/app_text_style.dart';


class HomePage extends StatelessWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical:24),
          children: [
          Container(
            height: 319,
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
                  height: 157,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(12),
                    ),
                    image:DecorationImage(
                      image: AssetImage(AppImage.card1),
                      fit: BoxFit.fitWidth
                    ),
                  ),child: const Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0,vertical:8.0 ),
                    child: (
                        Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CircularIconWidget(icon: AppIcon.edit),
                        SizedBox(width:8 ,),
                        CircularIconWidget(icon: AppIcon.eye),

                      ],
                    )),
                  ),
                ),
                ),
                //////////////////////////////////////
                //Data
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 16.0),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Développeur Flutter",style: AppTextStyles.b14,),
                        SizedBox(height: 12,),
                        Row(children: [
                          SvgPicture.asset(AppIcon.locationGrey),
                          SizedBox(width: 6,),
                          Text("Birkhadem, Alger",style: AppTextStyles.r10,),
                        ],),
                        SizedBox(height:8 ,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Row(children: [
                            SvgPicture.asset(AppIcon.wallet),
                            SizedBox(width: 6,),
                            Text("60,000 - 90,000 DA",style: AppTextStyles.r10,),
                          ],),
                          Text("29 jours restants"),
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
                     Divider(color: Color(0xFFD3D3D3),thickness: 1,height: 1,),
                     Container(
                       height: 50,
                       child: const Row(
                         crossAxisAlignment: CrossAxisAlignment.end,
                         children: [
                           Expanded(child: TextNumber(num: 0, text: "En attente")),
                           VerticalDivider(color: Color(0xFFD3D3D3),thickness: 1,endIndent: 0,indent: 0,),
                           Expanded(child: TextNumber(num: 8, text: "Présélectionnés")),
                           VerticalDivider(color: Color(0xFFD3D3D3),thickness: 1,),
                           Expanded(child: TextNumber(num: 8, text: "Rejetés")),
                         ],
                       ),
                     ),
                   ],
                 )

              ],
            ),
          ),
            SizedBox(height: 16,),
            //////////////////////////////////////////////////////////////////
            Container(
              height: 319,
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
                    height: 157,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(12),
                      ),
                      image:DecorationImage(
                          image: AssetImage(AppImage.card2),
                          fit: BoxFit.fitWidth
                      ),
                    ),child: const Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0,vertical:8.0 ),
                      child: (
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CircularIconWidget(icon: AppIcon.edit),
                              SizedBox(width:8 ,),
                              CircularIconWidget(icon: AppIcon.eye),

                            ],
                          )),
                    ),
                  ),
                  ),
                  //////////////////////////////////////
                  //Data
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 16.0),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Support ERP",style: AppTextStyles.b14,),
                          SizedBox(height: 12,),
                          Row(children: [
                            SvgPicture.asset(AppIcon.locationGrey),
                            SizedBox(width: 6,),
                            Text("Birkhadem, Alger",style: AppTextStyles.r10,),
                          ],),
                          SizedBox(height:8 ,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(children: [
                                SvgPicture.asset(AppIcon.wallet),
                                SizedBox(width: 6,),
                                Text("30,000 - 60,000 DA",style: AppTextStyles.r10,),
                              ],),
                              Text("02 jours restants",style: TextStyle(color: AppColor.red),),
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
                      Divider(color: Color(0xFFD3D3D3),thickness: 1,height: 1,),
                      Container(
                        height: 50,
                        child: const Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(child: TextNumber(num: 4, text: "En attente")),
                            VerticalDivider(color: Color(0xFFD3D3D3),thickness: 1,endIndent: 0,indent: 0,),
                            Expanded(child: TextNumber(num: 2, text: "Présélectionnés")),
                            VerticalDivider(color: Color(0xFFD3D3D3),thickness: 1,),
                            Expanded(child: TextNumber(num: 0, text: "Rejetés")),
                          ],
                        ),
                      ),
                    ],
                  )

                ],
              ),
            ),
            //////////////////////////////////////////////////////////////////
            // SizedBox(height: 16,),
            // Container(
            //   height: 319,
            //   decoration: BoxDecoration(
            //       color: Colors.white,
            //       borderRadius: BorderRadius.circular(12),
            //       boxShadow: [
            //         BoxShadow(
            //             spreadRadius: 5,
            //             blurRadius:40 ,
            //             offset: Offset(0,16),
            //             color: Color(0xFF7090B0).withOpacity(.25)
            //         )
            //       ]
            //   ),
            //   child: Column(
            //     children: [
            //       //image
            //       Container(
            //         height: 157,
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.vertical(
            //             top: Radius.circular(12),
            //           ),
            //           image:DecorationImage(
            //               image: AssetImage(AppImage.card1),
            //               fit: BoxFit.fitWidth
            //           ),
            //         ),child: const Align(
            //         alignment: Alignment.topRight,
            //         child: Padding(
            //           padding: EdgeInsets.symmetric(horizontal: 16.0,vertical:8.0 ),
            //           child: (
            //               Row(
            //                 mainAxisAlignment: MainAxisAlignment.end,
            //                 children: [
            //                   CircularIconWidget(icon: AppIcon.edit),
            //                   SizedBox(width:8 ,),
            //                   CircularIconWidget(icon: AppIcon.eye),
            //
            //                 ],
            //               )),
            //         ),
            //       ),
            //       ),
            //       //////////////////////////////////////
            //       //Data
            //       Padding(
            //         padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 16.0),
            //         child: Container(
            //           child: Column(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: [
            //               Text("Développeur Flutter",style: AppTextStyles.b14,),
            //               SizedBox(height: 12,),
            //               Row(children: [
            //                 SvgPicture.asset(AppIcon.locationGrey),
            //                 SizedBox(width: 6,),
            //                 Text("Birkhadem, Alger",style: AppTextStyles.r10,),
            //               ],),
            //               SizedBox(height:8 ,),
            //               Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                 children: [
            //                   Row(children: [
            //                     SvgPicture.asset(AppIcon.wallet),
            //                     SizedBox(width: 6,),
            //                     Text("60,000 - 90,000 DA",style: AppTextStyles.r10,),
            //                   ],),
            //                   Text("29 jours restants"),
            //                 ],)
            //             ],
            //           ),
            //         ),
            //       ),
            //       ///////
            //       Spacer(),
            //       //Numbers
            //       Column(
            //         mainAxisAlignment: MainAxisAlignment.end,
            //         children: [
            //           Divider(color: Color(0xFFD3D3D3),thickness: 1,height: 1,),
            //           Container(
            //             height: 50,
            //             child: const Row(
            //               crossAxisAlignment: CrossAxisAlignment.end,
            //               children: [
            //                 Expanded(child: TextNumber(num: 0, text: "En attente")),
            //                 VerticalDivider(color: Color(0xFFD3D3D3),thickness: 1,endIndent: 0,indent: 0,),
            //                 Expanded(child: TextNumber(num: 8, text: "Présélectionnés")),
            //                 VerticalDivider(color: Color(0xFFD3D3D3),thickness: 1,),
            //                 Expanded(child: TextNumber(num: 8, text: "Rejetés")),
            //               ],
            //             ),
            //           ),
            //         ],
            //       )
            //
            //     ],
            //   ),
            // ),
          ],
        );
  }

}
