
import 'package:bamo/app/core/values/icons.dart';
import 'package:get/get.dart';

import '../../../../data/models/sector.dart';
class SectorsController extends GetxController {

  List<Sector> sectors = [
    Sector(sectorName: "BTP", sectorIcon: AppIcon.BTP),
    Sector(sectorName: "Entretien", sectorIcon: AppIcon.Entretien),
    Sector(sectorName: "Restauration", sectorIcon: AppIcon.restauration),
    Sector(sectorName: "Vente", sectorIcon: AppIcon.Vente),
    Sector(sectorName: "Commerce", sectorIcon: AppIcon.Commerce),
    Sector(sectorName: "Télémarketing", sectorIcon: AppIcon.telemarketing),
    Sector(sectorName: "Programmation", sectorIcon: AppIcon.Programmation),
    Sector(sectorName: "Design", sectorIcon: AppIcon.Design),
    Sector(sectorName: "IT", sectorIcon: AppIcon.IT),
    Sector(sectorName: "Education", sectorIcon: AppIcon.Education),
    Sector(sectorName: "Logistique", sectorIcon: AppIcon.Logistique),
    Sector(sectorName: "Communication", sectorIcon: AppIcon.Communication),
    Sector(sectorName: "Immobilier", sectorIcon: AppIcon.Immobilier),
    Sector(sectorName: "Santé", sectorIcon: AppIcon.Sante),
    Sector(sectorName: "Evénementiel", sectorIcon: AppIcon.Evenementiel),
    Sector(sectorName: "Tourisme", sectorIcon: AppIcon.Tourisme),
    Sector(sectorName: "Industrie", sectorIcon: AppIcon.Industrie),
    Sector(sectorName: "Administration", sectorIcon: AppIcon.Administration),
    Sector(sectorName: "Sécurité", sectorIcon: AppIcon.Security),
    Sector(sectorName: "Marketing", sectorIcon: AppIcon.Marketing),
    Sector(sectorName: "Finance", sectorIcon: AppIcon.Finance),
    Sector(sectorName: "Transport", sectorIcon: AppIcon.Transport),
    Sector(sectorName: "Esthétique", sectorIcon: AppIcon.Esthetique),
    Sector(sectorName: "Bien Être", sectorIcon: AppIcon.BienEtre),
  ];

  @override
  void onInit() {
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