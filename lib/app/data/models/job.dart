class Job{
  String title;
  String image;
  String location;
  String experience;
  String datePublished;
  String? jobType;
  double? favourite;
  double? checked;
  String? salary;
  int? candidates;
  Job(
      {
        required this.title,
        required this.image,
        required this.location,
        required this.experience,
        required this.datePublished,
        this.favourite,
        this.jobType,
        this.checked,
        this.salary,
        this.candidates,
      });
}