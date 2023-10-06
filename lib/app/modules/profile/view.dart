import 'package:bamo/app/core/constants/AppGradient.dart';
import 'package:bamo/app/core/constants/padding.dart';
import 'package:bamo/app/core/theme/app_text_style.dart';
import 'package:bamo/app/core/values/icons.dart';
import 'package:bamo/app/core/values/images_path.dart';
import 'package:bamo/app/modules/widgets/avatarWithEdit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../widgets/profileTextField.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

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
        title: Text("Mon Profile",style: AppTextStyles.m18484848,),
        actions: [
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: AppPadding.mainPadding),
              child: InkWell(onTap:(){

              },
                //Scaffold.of(context).openDrawer()
              child: GradientText("Enregistrer",colors: blueColors,)),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppPadding.mainPadding,vertical: 32.h),
        children: [
          Center(child: AvatarWithEdit(radius: 50, image: AppImage.avatar)),
          SizedBox(height: 40.h,),
          Column(
            children: [
              ProfileTextField(labelText: 'Nom', hintText: 'First Name',),
              SizedBox(height: 16.h,),
              ProfileTextField(labelText: 'Prénom', hintText: 'Last Name',),
              SizedBox(height: 16.h,),
              ProfileTextField( hintText: 'Date de naissance',),
              SizedBox(height: 16.h,),
              ProfileTextField(hintText: 'Adresse',),
              SizedBox(height: 16.h,),
              ProfileTextField(hintText: 'Email',),
              SizedBox(height: 16.h,),
              ProfileTextField(hintText: 'Téléphone',),
              SizedBox(height: 16.h,),
              ProfileTextField(hintText: 'Description',maxLines: 3,),
              //SizedBox(height: 16.h,),
            ],
          )

        ],
      ),
    );
  }
}
