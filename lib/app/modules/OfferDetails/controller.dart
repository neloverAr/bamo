
import 'package:bamo/app/core/values/images_path.dart';
import 'package:bamo/app/data/models/job.dart';
import 'package:get/get.dart';
class OfferDetailsController extends GetxController {
  
  Job jobDetails = Job(title: "Administrateur des Ventes",
      image: AppImage.card5, location: "Birkhadem, Alger",
      experience: "Plus de 5 ans", datePublished: "18-05-2023",
      contractType: "CDD",position: 1,jobType: "Plein Temps",
      favourite: false,duration: "2 ans",
      desc: '''Une entreprise privée active dans le domaine de transformation de papier située a Ouled Chbel cherche un (une) Administrateur des ventes Taches : 
- Encaissement des recettes 
- Etablissement des BL et factures
- Suivi des commandes en fonction de la disponibilité des produits. 
- Récolte des paiements. 
- Informer les clients de la mise à disposition des produits. 
- Archivage des paiements.
- Suivi de facturation ( BC, BL, facture paiement) . 
- Suivi du transport - Etablissement des avoirs en cas de promo/retour de marchandises.
- Suivi des plaintes clients et saisi des avaries''',

      //"Une entreprise privée active dans le domaine de transformation de papier située a Ouled Chbel cherche un (une) Administrateur des ventes Taches :- Encaissement des recettes- Etablissement des BL et factures- Suivi des commandes en fonction de la disponibilité des produits.- Récolte des paiements.- Informer les clients de la mise à disposition des produits.- Archivage des paiements.- Suivi de facturation ( BC, BL, facture paiement) .- Suivi du transport - Etablissement des avoirs en cas de promo/retour de marchandises.- Suivi des plaintes clients et saisi des avaries",
  );

  List<Job> similarOffers = [
    Job(title: "Assistant de Gestion Administrative", image: AppImage.card3, location: "Birkhadem, Alger", experience: "2 ans", datePublished: "il y a 3 heures"),
    Job(title: "Technico-Commercial (Salesman)", image: AppImage.card4, location: "Birkhadem, Alger", experience: "Sans expérience", datePublished: "il y a 4 heures"),
    Job(title: "Assistant de Gestion Administrative", image: AppImage.card3, location: "Birkhadem, Alger", experience: "2 ans", datePublished: "il y a 3 heures"),
  ];

  double matchingPercentage = .81;
  String distance = " 86 km de vous";

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