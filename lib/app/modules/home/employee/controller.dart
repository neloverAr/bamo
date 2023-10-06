
import 'package:get/get.dart';
import '../../../core/values/images_path.dart';
import '../../../data/models/job.dart';

class EmployeeHomePageController extends GetxController {
  List<Job> jobs = [
    Job(title: "Développeur Flutter", image: AppImage.card1,
        location: "Birkhadem, Alger", experience: "2 ans",
        datePublished: "il y a 3 jours",salary: "60,000 - 90,000 DA",
        candidates: 5,jobType: "Permanent"),
  ];

  @override
  void onInit() {
    super.onInit();
    //setPages();
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