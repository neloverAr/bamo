
import 'package:bamo/app/core/values/icons.dart';
import 'package:bamo/app/data/models/job.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../core/values/images_path.dart';
import '../../data/models/tagModel.dart';

class EmployeeMainPagesContentController extends GetxController {
late List<String> companiesIcons ;
ScrollController scrollController = ScrollController();

List<TagModel> tags = [
  TagModel(label: "Art", icon: AppImage.art, onTap: (){}),
  TagModel(label: "Architecture - Etude & Decoration", icon: AppImage.architecture, onTap: (){}),
  TagModel(label: "Batiment et Traveaux", icon: AppImage.building, onTap: (){}),
  TagModel(label: "Divertissement", icon: AppImage.entertainment, onTap: (){}),
  TagModel(label: "Chauffeur et Laivraison", icon: AppImage.driverAndDelivery, onTap: (){}),
  TagModel(label: "Chef et Cuisinier", icon: AppImage.chefAndCook, onTap: (){}),
  TagModel(label: "Comptabilité et Finances", icon: AppImage.accountingAndFinance, onTap: (){}),
  TagModel(label: "Commerce de Détail", icon: AppImage.retailBusiness, onTap: (){}),
];

List<Job> job = [
  Job(title: "Assistant de Gestion Administrative", image: AppImage.card3, location: "Birkhadem, Alger", experience: "2 ans", datePublished: "il y a 3 heures"),
  Job(title: "Technico-Commercial (Salesman)", image: AppImage.card4, location: "Birkhadem, Alger", experience: "Sans expérience", datePublished: "il y a 4 heures"),
  Job(title: "Assistant de Gestion Administrative", image: AppImage.card3, location: "Birkhadem, Alger", experience: "2 ans", datePublished: "il y a 3 heures"),
];

  @override
  void onInit() {
    companiesIcons = [
      AppIcon.placeholderIcon,
      AppIcon.placeholderIcon2,
      AppIcon.placeholderIcon,
      AppIcon.placeholderIcon2,
      AppIcon.placeholderIcon,
      AppIcon.placeholderIcon2,
    ];
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

}