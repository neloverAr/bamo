
import 'package:bamo/app/core/constants/padding.dart';
import 'package:bamo/app/core/values/images_path.dart';
import 'package:bamo/app/modules/widgets/appBarWithEnregister.dart';
import 'package:bamo/app/modules/widgets/avatarWithEdit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../widgets/profileTextField.dart';
import 'controller.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);
  ProfileController controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarWithEnregister(title: "Mon Profile", onTap: (){
        //TODO
      }),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppPadding.mainPadding,vertical: 32.h),
        children: [
          Center(child: AvatarWithEdit(radius: 50, image: AppImage.avatar)),
          SizedBox(height: 40.h,),
          Column(
            children: [
              ProfileTextField( hintText: 'First Name',controller:controller.firstNameController),
              SizedBox(height: 16.h,),
              ProfileTextField(hintText: 'Last Name',controller:controller.lastNameController),
              SizedBox(height: 16.h,),
              ProfileTextField( hintText: 'Date de naissance',controller:controller.dateOfBirthController),
              SizedBox(height: 16.h,),
              ProfileTextField(hintText: 'Adresse',controller:controller.addressController),
              SizedBox(height: 16.h,),
              ProfileTextField(hintText: 'Email',controller:controller.emailController),
              SizedBox(height: 16.h,),
              ProfileTextField(hintText: 'Téléphone',controller:controller.telephoneController),
              SizedBox(height: 16.h,),
              ProfileTextField(hintText: 'Description',maxLines: 3,controller:controller.descController),
              //SizedBox(height: 16.h,),
            ],
          )

        ],
      ),
    );
  }
}
