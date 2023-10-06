import 'package:bamo/app/core/constants/padding.dart';
import 'package:bamo/app/core/values/icons.dart';
import 'package:bamo/app/modules/OfferDetails/widgets/circularIcon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OfferDetailsHeaderDelegate extends StatelessWidget {
  final String image;
  const OfferDetailsHeaderDelegate({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "01110",
      child: Container(
        height: 161.h,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(image),fit: BoxFit.fill)
        ),child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.symmetric(horizontal: AppPadding.mainPadding),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                onTap:()=>Navigator.pop(context),
                    child: CircularIcon(icon: AppIcon.back)),
                GestureDetector(
                  onTap: (){
                    //TODO
                    },
                    child: CircularIcon(icon: AppIcon.shareDetailPage)
                  ),
              ],

            ),)
        ],
      ),
      ),
    );
  }
}


// class OfferDetailsHeaderDelegate extends SliverPersistentHeaderDelegate{
//   final String image;
//   OfferDetailsHeaderDelegate({required this.image});
//
//   @override
//   Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
//     return Container(
//       height: 161.h,
//       decoration: BoxDecoration(
//         image: DecorationImage(
//             image: AssetImage(image),fit: BoxFit.fill)
//       ),child: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Padding(padding: EdgeInsets.symmetric(horizontal: AppPadding.mainPadding),
//         child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             CircularIcon(icon: AppIcon.back),
//             CircularIcon(icon: AppIcon.share),
//           ],
//
//         ),)
//       ],
//     ),
//     );
//   }
//
//   @override
//   double get maxExtent => 161.h;
//
//   @override
//   double get minExtent => 0;
//
//   @override
//   bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
//     return true;
//   }
//
//   //disappear(shrinkOffset) =>1-shrinkOffset/maxHeight;
//
// }