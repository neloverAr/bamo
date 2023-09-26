import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/constants/AppGradient.dart';
import '../../../core/values/icons.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: AppGradient.curvedGreyGradient
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal:16.w ),
        child: TextFormField(
          decoration: InputDecoration(
              hintText: "Entrez vos compétences, désignations, entreprise",
              hintStyle: TextStyle(color: Colors.white,fontSize: 11.sp,),
              suffixIcon: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SvgPicture.asset(AppIcon.search),
              ),
              border: InputBorder.none
          ),
        ),
      ),
    );
  }
}
