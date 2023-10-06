class Job{
  String title;
  String image;
  String location;
  String experience;
  String? duration;
  String datePublished;
  String? jobType;
  bool? favourite;
  double? checked;
  String? salary;
  int? candidates;
  String? desc;
  String? contractType;
  int? position;
  String? entreprise;

  Job(
      {
        required this.title,
        required this.image,
        required this.location,
        required this.experience,
        required this.datePublished,
        this.duration,
        this.favourite,
        this.jobType,
        this.checked,
        this.salary,
        this.candidates,
        this.desc,
        this.contractType,
        this.position,
        this.entreprise = "Global Job",
      });
}