class NotificationModel{
  String title;
  String desc;
  String icon;
  String buttonText;
  String? datePublished;
  bool? seen;

  NotificationModel({
    required this.title,
    required this.desc,
    required this.buttonText,
    required this.icon,
    this.datePublished,
    this.seen = false,
});
}