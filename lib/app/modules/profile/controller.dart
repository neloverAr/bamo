
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
class ProfileController extends GetxController {

late TextEditingController firstNameController;
late TextEditingController lastNameController;
late TextEditingController dateOfBirthController;
late TextEditingController addressController;
late TextEditingController emailController;
late TextEditingController telephoneController;
late TextEditingController descController;

  @override
  void onInit() {
    firstNameController = TextEditingController();
    firstNameController.text = "Nom";
    lastNameController = TextEditingController();
    lastNameController.text = "Prénom";
    dateOfBirthController = TextEditingController();
    addressController = TextEditingController();
    emailController = TextEditingController();
    telephoneController = TextEditingController();
    descController = TextEditingController();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    firstNameController.dispose();
    lastNameController.dispose();
    dateOfBirthController.dispose();
    addressController.dispose();
    emailController.dispose();
    telephoneController.dispose();
    descController.dispose();
    super.onClose();
  }

}