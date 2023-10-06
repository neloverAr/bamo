import 'package:bamo/app/core/constants/padding.dart';
import 'package:bamo/app/core/theme/app_text_style.dart';
import 'package:bamo/app/core/utils/extensions.dart';
import 'package:bamo/app/core/values/colors.dart';
import 'package:bamo/app/core/values/icons.dart';
import 'package:bamo/app/modules/OfferDetails/widgets/informationBox.dart';
import 'package:bamo/app/modules/OfferDetails/widgets/offerDetailsHeader.dart';
import 'package:bamo/app/modules/OfferDetails/widgets/stuckHeader.dart';
import 'package:bamo/app/modules/widgets/AppButton.dart';
import 'package:bamo/app/modules/widgets/horizontalList.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'controller.dart';

class OfferDetailsScreen extends StatelessWidget {
  OfferDetailsScreen({Key? key}) : super(key: key);
  OfferDetailsController controller = Get.put(OfferDetailsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: OfferDetailsHeaderDelegate(image:controller.jobDetails.image),),
            // SliverPersistentHeader(pinned: false,
            //     delegate: OfferDetailsHeaderDelegate(image:controller.jobDetails.image)),
            // SliverToBoxAdapter(child: SizedBox(height: 16.h,),),
            SliverPersistentHeader(
                pinned:true,floating: true,
                delegate: StuckHeaderDelegate(
                matching: controller.matchingPercentage,
                experience: controller.jobDetails.experience,
                duration: controller.jobDetails.duration??"")),
            SliverToBoxAdapter(child: ListView(
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 0,vertical: 0),
              shrinkWrap: true,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppPadding.mainPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text(controller.jobDetails.title,style: AppTextStyles.m16,),
                    8.hp,
                    Row(children: [
                      SvgPicture.asset(AppIcon.locationGrey),
                      4.wp,
                      Text("${controller.jobDetails.location} - ",style: AppTextStyles.m12484848,),
                      Text(controller.distance,style: AppTextStyles.m12.copyWith(color: AppColor.green),),
                    ],),
                    10.hp,
                    InformationBox(boxType: Axis.horizontal, label: "Contrat", value: controller.jobDetails.contractType??""),
                    8.hp,
                    InformationBox(boxType: Axis.horizontal, label: "Postes", value: "${controller.jobDetails.position}"),
                    8.hp,
                    InformationBox(boxType: Axis.horizontal, label: "Type de poste", value: controller.jobDetails.jobType??""),
                    8.hp,
                    InformationBox(boxType: Axis.horizontal, label: "Salaire", value: controller.jobDetails.salary??"Non mentionné"),
                    8.hp,
                    InformationBox(boxType: Axis.horizontal, label: "Entreprise", value: controller.jobDetails.entreprise!),
                    16.hp,
                    Text("Description",style: AppTextStyles.m16,),
                    4.hp,
                    Text(controller.jobDetails.desc??"",style: AppTextStyles.r14,),
                    16.hp,
                    Text("Localisation",style: AppTextStyles.m16,),
                    8.hp,
                    Container(
                      height: 222.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                              width: 2,
                              color: AppColor.ColorF4F4F4
                          )
                        //color: Colors.grey,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: GoogleMap(
                          //TODO google map position and keys
                            initialCameraPosition: CameraPosition(
                              target: LatLng(37.42796133580664, -122.085749655962),
                              zoom: 14.4746,
                            )),
                      ),
                    ),
                    16.hp,
                    Text("Publié le ${controller.jobDetails.datePublished} par",style: AppTextStyles.m12484848,),
                    8.hp,
                    Row(children: [SvgPicture.asset(AppIcon.EURLNAPEC),4.wp,Text(controller.jobDetails.entreprise??"Global Job",style: AppTextStyles.m14484848,)]),
                    16.hp,
                    Text("Offres Similaires",style: AppTextStyles.m16,),
                    8.hp,
                  ],),
                ),
                HorizontalList(jobs: controller.similarOffers),
                100.hp,
              ],
            ),)
          ],
        ),
      ),floatingActionButton: Container(
      color: Colors.white,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppPadding.mainPadding,vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColor.ColorF7F7F7
          ),child: Center(child: SvgPicture.asset(AppIcon.favorite,color: AppColor.red,),),),
          12.wp,
          AppButton(
              width: 286.w,
              height: 48,
              fontSize: 16,
              title: "Postuler Maintenant",
              color: AppColor.green,
              onPressed: (){
            //TODO
          })
        ],),
      ),
    ),floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
